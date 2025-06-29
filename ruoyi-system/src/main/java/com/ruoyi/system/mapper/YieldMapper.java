package com.ruoyi.system.mapper;

import java.util.List;
import java.util.Map;

public interface YieldMapper {
    List<Map<String, Object>> selectProvinceYieldByYear(Integer year);
}
