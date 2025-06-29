package com.ruoyi.system.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import java.util.Map;

public interface YieldMapper {
    List<Map<String, Object>> selectProvinceYieldByYearAndCrop(@Param("crop") String crop, @Param("year") Integer year);
}
