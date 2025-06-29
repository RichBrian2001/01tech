package com.ruoyi.system.service.impl;

import com.ruoyi.system.service.YieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;
import com.ruoyi.system.mapper.YieldMapper;
import java.util.ArrayList;
import java.util.HashMap;

@Service
public class YieldServiceImpl implements YieldService {
    @Autowired
    private YieldMapper yieldMapper;

    @Override
    public List<Map<String, Object>> getProvinceYieldByYearAndCrop(String crop, Integer year) {
        System.out.println("查询作物地图数据: crop=" + crop + ", year=" + year);
        return yieldMapper.selectProvinceYieldByYearAndCrop(crop, year);
    }

    @Override
    public List<Map<String, Object>> getAverageYieldByCropAndYear(String crop, Integer year, String province) {
        if (province == null || province.trim().isEmpty()) {  // 修改：使用 trim() 确保空字符���也被视为空
            System.out.println("查询全国平均产量: year=" + year + ", crop=" + crop);
            return yieldMapper.selectAverageYieldByCropAndYear(crop, year, province);
        } else {
            System.out.println("查询省份产量: province=" + province + ", year=" + year);
            List<Map<String, Object>> result = new ArrayList<>();
            String[] crops = {"corn", "cotton", "peanut", "potato", "rice", "sorghum", "sugarcane", "wheat", "tobacco", "soybean"};
            for (String c : crops) {
                String tableName = c + "_yield";
                Double yield = yieldMapper.selectProvinceYieldByYearAndCropTable(tableName, province, year);
                System.out.println("作物: " + c + ", 表名: " + tableName + ", 产量: " + yield);
                Map<String, Object> map = new HashMap<>();
                map.put("crop", c);
                map.put("year", year);
                map.put("yield", yield != null ? yield : 0);
                result.add(map);
            }
            return result;
        }
    }
}
