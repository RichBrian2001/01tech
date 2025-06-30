package com.ruoyi.web.controller.system;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.system.domain.PlantingData;
import com.ruoyi.system.service.IPlantingDataService;

/**
 * 农产品种植数据Controller
 */
@RestController
@RequestMapping("/system/planting")
public class PlantingDataController extends BaseController {
    @Autowired
    private IPlantingDataService plantingDataService;

    /**
     * 获取指定年份的种植数据
     */
    @GetMapping("/data/{year}")
    public AjaxResult getPlantingDataByYear(@PathVariable Integer year) {
        List<PlantingData> list = plantingDataService.getPlantingDataByYear(year);
        return AjaxResult.success(list);
    }
}
