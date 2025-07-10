package com.ruoyi.system.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.PlantingDataMapper;
import com.ruoyi.system.domain.PlantingData;
import com.ruoyi.system.service.IPlantingDataService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 农产品种植数据Service实现
 */
@Service
public class PlantingDataServiceImpl implements IPlantingDataService {
    @Autowired
    private PlantingDataMapper plantingDataMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    private static final Logger logger = LoggerFactory.getLogger(PlantingDataServiceImpl.class);

    @Override
    public Map<String, Object> getPlantingDataByYear(Integer year) {
        String redisKey = "planting:" + year;
        Map<String, Object> result = new HashMap<>();
        List<PlantingData> data = (List<PlantingData>) redisTemplate.opsForValue().get(redisKey);
        if (data != null) {
            logger.info("[Redis命中] key={}，返回缓存数据，size={}", redisKey, data.size());
            result.put("data", data);
            result.put("source", "redis");
            result.put("redisKey", redisKey);
            result.put("redisLog", "Redis命中: " + redisKey);
            return result;
        }
        logger.info("[Redis未命中] key={}，查询数据库", redisKey);
        data = plantingDataMapper.selectPlantingDataByYear(year);
        redisTemplate.opsForValue().set(redisKey, data);
        logger.info("[Redis写入] key={}，写入缓存，size={}", redisKey, data.size());
        result.put("data", data);
        result.put("source", "数据库");
        result.put("redisKey", redisKey);
        result.put("redisLog", "Redis未命中: " + redisKey + "，已写入缓存");
        return result;
    }
}
