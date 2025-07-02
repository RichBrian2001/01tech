package com.ruoyi.system.controller;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.system.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    @GetMapping("/getNews1")
    public AjaxResult getNews1() {
        List<Map<String, Object>> newsData = newsService.getNewsData("news1");
        return AjaxResult.success(newsData);
    }

    @GetMapping("/getNews2")
    public AjaxResult getNews2() {
        List<Map<String, Object>> newsData = newsService.getNewsData("news2");
        return AjaxResult.success(newsData);
    }

    @GetMapping("/getNews3")
    public AjaxResult getNews3() {
        List<Map<String, Object>> newsData = newsService.getNewsData("news3");
        return AjaxResult.success(newsData);
    }

    @GetMapping("/getNews4")
    public AjaxResult getNews4() {
        List<Map<String, Object>> newsData = newsService.getNewsData("news4");
        return AjaxResult.success(newsData);
    }

    @GetMapping("/getNews5")
    public AjaxResult getNews5() {
        List<Map<String, Object>> newsData = newsService.getNewsData("news5");
        return AjaxResult.success(newsData);
    }

    @GetMapping("/runPythonScript")
    public AjaxResult runPythonScript() {
        try {
            // 定义 Python 脚本路径
            String pythonScriptPath = "d:/ZoreOneTech/01tech/ruoyi-admin/src/main/python/news.py";

            // 构建命令
            ProcessBuilder processBuilder = new ProcessBuilder("python", pythonScriptPath);
            processBuilder.redirectErrorStream(true);

            // 启动进程
            Process process = processBuilder.start();

            // 获取脚本输出
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            StringBuilder output = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append("\n");
            }

            // 等待脚本执行完成
            int exitCode = process.waitFor();
            if (exitCode == 0) {
                return AjaxResult.success("Python 脚本执行成功", output.toString());
            } else {
                return AjaxResult.error("Python 脚本执行失败", output.toString());
            }
        } catch (Exception e) {
            return AjaxResult.error("执行 Python 脚本时发生错误", e.getMessage());
        }
    }
}
