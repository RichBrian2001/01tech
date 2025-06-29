package com.ruoyi.system.service.impl;

import com.ruoyi.system.service.YieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;
import com.ruoyi.system.mapper.YieldMapper;

@Service
public class YieldServiceImpl implements YieldService {
    @Autowired
    private YieldMapper yieldMapper;

    @Override
    public List<Map<String, Object>> getProvinceYieldByYearAndCrop(String crop, Integer year) {
        // MyBatis参数名需与Mapper.xml一致，建议使用@Param注解
        return yieldMapper.selectProvinceYieldByYearAndCrop(crop, year);
    }
}
