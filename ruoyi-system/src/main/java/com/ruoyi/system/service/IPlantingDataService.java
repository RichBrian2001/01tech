package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.PlantingData;

/**
 * 农产品种植数据Service接口
 */
public interface IPlantingDataService {
    /**
     * 查询指定年份的种植数据
     */
    public List<PlantingData> getPlantingDataByYear(Integer year);
}
