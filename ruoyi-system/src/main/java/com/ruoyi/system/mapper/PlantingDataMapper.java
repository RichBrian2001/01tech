package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.PlantingData;

/**
 * 农产品种植数据Mapper接口
 */
public interface PlantingDataMapper {
    /**
     * 获取指定年份的种植数据
     *
     * @param year 年份
     * @return 种植数据列表
     */
    public List<PlantingData> selectPlantingDataByYear(Integer year);
}
