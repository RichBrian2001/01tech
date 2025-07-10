package com.ruoyi.system.service.impl;

import com.ruoyi.system.service.YieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;
import com.ruoyi.system.mapper.YieldMapper;
import java.util.ArrayList;
import java.util.HashMap;
import com.ruoyi.common.core.redis.RedisCache;
import org.springframework.beans.factory.annotation.Autowired;
import com.fasterxml.jackson.core.type.TypeReference;

@Service
public class YieldServiceImpl implements YieldService {
    @Autowired
    private YieldMapper yieldMapper;

    @Autowired
    private RedisCache redisCache;

    @Override
    public List<Map<String, Object>> getProvinceYieldByYearAndCrop(String crop, Integer year) {
        String redisKey = "yield_map_" + crop + "_" + year;
        List<Map<String, Object>> cache = redisCache.getCacheObject(redisKey);
        if (cache != null) {
            System.out.println("[Redis] 省份产量命中缓存: " + redisKey);
            return cache;
        }
        System.out.println("查询作物地图数据: crop=" + crop + ", year=" + year);
        List<Map<String, Object>> result = yieldMapper.selectProvinceYieldByYearAndCrop(crop, year);
        redisCache.setCacheObject(redisKey, result);
        return result;
    }

    @Override
    public List<Map<String, Object>> getAverageYieldByCropAndYear(String crop, Integer year, String province) {
        String redisKey = "yield_avg_" + (crop != null ? crop : "all") + "_" + year + (province != null ? ("_" + province) : "");
        List<Map<String, Object>> cache = redisCache.getCacheObject(redisKey);
        if (cache != null) {
            System.out.println("[Redis] 平均产量命中缓存: " + redisKey);
            return cache;
        }
        if (province == null || province.trim().isEmpty()) {
            System.out.println("查询全国平均产量: year=" + year + ", crop=" + crop);
            List<Map<String, Object>> result = yieldMapper.selectAverageYieldByCropAndYear(crop, year, province);
            redisCache.setCacheObject(redisKey, result);
            return result;
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
            redisCache.setCacheObject(redisKey, result);
            return result;
        }
    }

    @Override
    public List<Map<String, Object>> getYieldHistory(String crop, Integer startYear, Integer endYear, String province) {
        String redisKey = "yield_history_" + crop + "_" + startYear + "_" + endYear + (province != null ? ("_" + province) : "");
        List<Map<String, Object>> cache = redisCache.getCacheObject(redisKey);
        if (cache != null) {
            System.out.println("[Redis] 历史产量命中缓存: " + redisKey);
            return cache;
        }
        System.out.println("查询历年产量数据: crop=" + crop + ", startYear=" + startYear + ", endYear=" + endYear + ", province=" + province);
        String tableName = crop + "_yield";
        List<Map<String, Object>> result = yieldMapper.selectYieldHistory(tableName, startYear, endYear, province);
        redisCache.setCacheObject(redisKey, result);
        return result;
    }
}

