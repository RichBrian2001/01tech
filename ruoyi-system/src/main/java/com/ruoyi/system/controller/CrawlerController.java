package com.ruoyi.system.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import com.fasterxml.jackson.databind.ObjectMapper;

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
            File priceFile = new File(PROJECT_ROOT, DATA_DIR + "/price_" + cropCode + ".json");
            logger.info("[getPriceData] - 尝试读取价格数据文件: {}", priceFile.getAbsolutePath());

            if (!priceFile.exists()) {
                logger.error("[getPriceData] - 价格数据文件不存在: {}", priceFile.getAbsolutePath());
                return AjaxResult.error(cropName + "的价格数据文件不存在");
            }

            String content = new String(Files.readAllBytes(priceFile.toPath()), StandardCharsets.UTF_8);
            Object jsonData = objectMapper.readTree(content);
            logger.info("[getPriceData] - 成功读取{}价格数据", cropName);

            return AjaxResult.success("获取成功", jsonData);
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

            // 确保data目录存在
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
}
