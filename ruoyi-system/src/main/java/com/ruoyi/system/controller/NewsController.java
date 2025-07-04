package com.ruoyi.system.controller;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.system.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
            String pythonScriptPath = "ruoyi-admin/src/main/python/news.py";
            ProcessBuilder processBuilder = new ProcessBuilder("python", pythonScriptPath);
            processBuilder.redirectErrorStream(true);
            Process process = processBuilder.start();
            process.waitFor(120, java.util.concurrent.TimeUnit.SECONDS);
            return AjaxResult.success("Python 脚本已调用");
        } catch (Exception e) {
            return AjaxResult.success("Python 脚本已调用");
        }
    }

    @GetMapping("/getNewsPic")
    public AjaxResult getNewsPic() {
        List<Map<String, Object>> newsData = newsService.getNewsPicData();
        return AjaxResult.success(newsData);
    }
}
