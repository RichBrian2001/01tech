package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.PlantingDataMapper;
import com.ruoyi.system.domain.PlantingData;
import com.ruoyi.system.service.IPlantingDataService;

/**
 * 农产品种植数据Service实现
 */
@Service
public class PlantingDataServiceImpl implements IPlantingDataService {
    @Autowired
    private PlantingDataMapper plantingDataMapper;

    @Override
    public List<PlantingData> getPlantingDataByYear(Integer year) {
        return plantingDataMapper.selectPlantingDataByYear(year);
    }
}
