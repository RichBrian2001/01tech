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
    public AjaxResult getMapData(@RequestParam String crop, @RequestParam Integer year) {
        List<Map<String, Object>> data = yieldService.getProvinceYieldByYearAndCrop(crop, year);
        return AjaxResult.success(data);
    }

    @GetMapping("/averageYield")
    public AjaxResult getAverageYield(@RequestParam(required = false) String crop, @RequestParam Integer year, @RequestParam(required = false) String province) {
        List<Map<String, Object>> data = yieldService.getAverageYieldByCropAndYear(crop, year, province);
        return AjaxResult.success(data);
    }

    @GetMapping("/history")
    public AjaxResult getYieldHistory(@RequestParam String crop,
                                    @RequestParam Integer startYear,
                                    @RequestParam Integer endYear,
                                    @RequestParam(required = false) String province) {
        List<Map<String, Object>> data = yieldService.getYieldHistory(crop, startYear, endYear, province);
        return AjaxResult.success(data);
    }
}