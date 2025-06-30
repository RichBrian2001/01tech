package com.ruoyi.system.mapper;

import org.apache.ibatis.annotations.Param;
import java.util.List;
import java.util.Map;

public interface YieldMapper {
    List<Map<String, Object>> selectProvinceYieldByYearAndCrop(@Param("crop") String crop, @Param("year") Integer year);

    List<Map<String, Object>> selectAverageYieldByCropAndYear(@Param("crop") String crop, @Param("year") Integer year, @Param("province") String province);

    Double selectProvinceYieldByYearAndCropTable(@Param("tableName") String tableName, @Param("province") String province, @Param("year") Integer year);

    List<Map<String, Object>> selectYieldHistory(@Param("tableName") String tableName,
                                               @Param("startYear") Integer startYear,
                                               @Param("endYear") Integer endYear,
                                               @Param("province") String province);
}
