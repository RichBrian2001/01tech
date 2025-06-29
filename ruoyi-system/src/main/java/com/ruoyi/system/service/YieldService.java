package com.ruoyi.system.service;

import java.util.List;
import java.util.Map;

public interface YieldService {
    List<Map<String, Object>> getProvinceYieldByYearAndCrop(String crop, Integer year);
}
