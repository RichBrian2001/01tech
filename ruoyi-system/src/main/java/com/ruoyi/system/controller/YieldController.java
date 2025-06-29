package com.ruoyi.system.controller;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.system.service.YieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/analysis/yield")
public class YieldController {

    @Autowired
    private YieldService yieldService;

    @GetMapping("/mapData")
    public AjaxResult getMapData(@RequestParam Integer year) {
        List<Map<String, Object>> data = yieldService.getProvinceYieldByYear(year);
        return AjaxResult.success(data);
    }
}