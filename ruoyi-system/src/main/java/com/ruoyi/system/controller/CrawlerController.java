package com.ruoyi.system.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.data.redis.core.StringRedisTemplate;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/system/crawler")
public class CrawlerController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(CrawlerController.class);
    private static final ObjectMapper objectMapper = new ObjectMapper();

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    // 更新作物配置
    private static final Map<String, String> CROPS = new HashMap<>();
    static {
        CROPS.put("大豆", "dadou");
        CROPS.put("小麦", "xiaomai");
        CROPS.put("棉花", "mianhua");
        CROPS.put("干玉米", "yumili");
        CROPS.put("甘蔗", "ganzhe");
        CROPS.put("花生", "huasheng");
        CROPS.put("稻谷", "daogu");
        CROPS.put("土豆", "tudou");
        CROPS.put("高粱", "gaoliang");
    }

    // 获取项目根目录
    private static final String PROJECT_ROOT = System.getProperty("user.dir");

    // 配置文件路径
    private static final String DATA_DIR = "ruoyi-ui/public/data";
    private static final String CRAWLER_SCRIPT_PATH = "ruoyi-system/src/main/java/com/ruoyi/system/crawler/search.py";

    /**
     * 获取价格数据
     */
    @GetMapping("/price/{cropName}")
    public AjaxResult getPriceData(@PathVariable("cropName") String cropName) {
        try {
            if (!CROPS.containsKey(cropName)) {
                return AjaxResult.error("不支持的作物类型：" + cropName);
            }

            String cropCode = CROPS.get(cropName);
            String redisKey = "price_" + cropCode;
            String redisTimeKey = redisKey + ":mtime";
            File priceFile = new File(PROJECT_ROOT, DATA_DIR + "/price_" + cropCode + ".json");
            long fileMTime = priceFile.exists() ? priceFile.lastModified() : 0L;
            String redisMTimeStr = stringRedisTemplate.opsForValue().get(redisTimeKey);
            long redisMTime = 0L;
            if (redisMTimeStr != null) {
                try {
                    redisMTime = Long.parseLong(redisMTimeStr);
                } catch (NumberFormatException ignore) {}
            }
            String content = stringRedisTemplate.opsForValue().get(redisKey);
            logger.info("[getPriceData] - 文件路径: {}，文件mtime: {}，Redis mtime: {}", priceFile.getAbsolutePath(), fileMTime, redisMTime);
            // 如果redis有缓存且mtime一致，直接返回redis
            if (content != null && fileMTime == redisMTime) {
                Object jsonData = objectMapper.readTree(content);
                logger.info("[getPriceData] - 从Redis读取{}价格数据, key={}, value={}", cropName, redisKey, content);
                Map<String, Object> result = new HashMap<>();
                result.put("source", "redis");
                result.put("data", jsonData);
                result.put("redisKey", redisKey);
                result.put("redisValue", content);
                return AjaxResult.success("获取成功，数据来源：Redis", result);
            }
            // 否则读取文件并刷新redis
            if (!priceFile.exists()) {
                logger.error("[getPriceData] - 价格数据文件不存在: {}", priceFile.getAbsolutePath());
                return AjaxResult.error(cropName + "的价格数据文件不存在");
            }
            content = new String(Files.readAllBytes(priceFile.toPath()), StandardCharsets.UTF_8);
            stringRedisTemplate.opsForValue().set(redisKey, content);
            stringRedisTemplate.opsForValue().set(redisTimeKey, String.valueOf(fileMTime));
            logger.info("[getPriceData] - 已写入Redis: key={}, mtime={}, 内容前100字: {}", redisKey, fileMTime, content.substring(0, Math.min(100, content.length())));
            Object jsonData = objectMapper.readTree(content);
            logger.info("[getPriceData] - 成功读取{}价格数据并写入Redis", cropName);
            Map<String, Object> result = new HashMap<>();
            result.put("source", "json");
            result.put("data", jsonData);
            return AjaxResult.success("获取成功，数据来源：JSON文件", result);
        } catch (Exception e) {
            logger.error("[getPriceData] - 读取{}价格数据失败", cropName, e);
            return AjaxResult.error("读取价格数据失败: " + e.getMessage());
        }
    }

    /**
     * 获取支持的作物列表
     */
    @GetMapping("/crops")
    public AjaxResult getCrops() {
        return AjaxResult.success("获取成功", CROPS.keySet());
    }

    /**
     * 运行爬虫脚本
     */
    @Log(title = "爬虫管理", businessType = BusinessType.OTHER)
    @PostMapping("/run/{cropName}")
    public AjaxResult runCrawler(@PathVariable("cropName") String cropName) {
        try {
            if (!CROPS.containsKey(cropName)) {
                return AjaxResult.error("不支持的作物类型");
            }

            File scriptFile = new File(PROJECT_ROOT, CRAWLER_SCRIPT_PATH);
            logger.info("[runCrawler] - 尝试运行爬虫脚本: {}", scriptFile.getAbsolutePath());

            if (!scriptFile.exists()) {
                logger.error("[runCrawler] - 爬虫脚本文件不存在: {}", scriptFile.getAbsolutePath());
                return AjaxResult.error("爬虫脚本文件不存在");
            }

            File dataDir = new File(PROJECT_ROOT, DATA_DIR);
            if (!dataDir.exists()) {
                dataDir.mkdirs();
            }

            // 构建Python命令，传入作物名称参数
            ProcessBuilder processBuilder = new ProcessBuilder(
                "python",
                scriptFile.getAbsolutePath(),
                cropName
            );
            processBuilder.redirectErrorStream(true);
            processBuilder.directory(new File(PROJECT_ROOT));

            Process process = processBuilder.start();
            StringBuilder output = new StringBuilder();
            try (BufferedReader reader = new BufferedReader(
                    new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8))) {
                String line;
                while ((line = reader.readLine()) != null) {
                    output.append(line).append("\n");
                    logger.info("[runCrawler] - 脚本输出: {}", line);
                }
            }

            int exitCode = process.waitFor();

            if (exitCode == 0) {
                logger.info("[runCrawler] - 爬虫脚本执行成功");
                return AjaxResult.success("爬虫执行成功");
            } else {
                logger.error("[runCrawler] - 爬虫脚本执行失败: {}", output);
                return AjaxResult.error("爬虫执行失败: " + output);
            }
        } catch (Exception e) {
            logger.error("[runCrawler] - 运行爬虫脚本失败", e);
            return AjaxResult.error("运行爬虫脚本失败: " + e.getMessage());
        }
    }

    /**
     * AI农业推荐接口，接收天气JSON，调用spark-lite.py获取智能推荐
     */
    @PostMapping("/aiSuggest")
    public AjaxResult getAISuggest(@RequestBody Map<String, Object> weather) {
        try {
            if (weather == null || weather.isEmpty()) {
                return AjaxResult.error("天气数据为空");
            }
            String pyPath = "ruoyi-system/src/main/java/com/ruoyi/system/crawler/spark-lite.py";
            String weatherJson = objectMapper.writeValueAsString(weather);
            String encoded = java.net.URLEncoder.encode(weatherJson, java.nio.charset.StandardCharsets.UTF_8.name());
            ProcessBuilder pb = new ProcessBuilder("python", pyPath, encoded);
            pb.redirectErrorStream(true);
            Process process = pb.start();
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8));
            StringBuilder output = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append("\n");
            }
            int exitCode = process.waitFor();
            if (exitCode != 0) {
                return AjaxResult.error("AI推荐服务异常: " + output.toString().trim());
            }
            // 新增：将Python输出转为List返回，保证前端拿到的是数组
            String result = output.toString().trim();
            System.out.println("AI原始输出: " + result);
            // 尝试将原始输出转为JSON对象返回，前端可直接用data字段
            try {
                Object json = objectMapper.readValue(result, Object.class);
                return AjaxResult.success(json);
            } catch (Exception e) {
                // 如果不是标准JSON，直接返回字符串
                return AjaxResult.success(result);
            }
        } catch (Exception e) {
            logger.error("AI推荐异常", e);
            return AjaxResult.error("AI推荐异常: " + e.getMessage());
        }
    }
}
