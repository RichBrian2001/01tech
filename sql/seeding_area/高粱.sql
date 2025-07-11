-- 创建高粱播种量表
CREATE TABLE `sorghum_planting_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `region` varchar(50) NOT NULL COMMENT '地区名称',
  `year` int(4) NOT NULL COMMENT '年份',
  `area` decimal(10,2) NOT NULL COMMENT '播种面积(千公顷)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_region` (`region`),
  KEY `idx_year` (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='高粱播种面积统计表(分省年度数据)';

-- 插入高粱播种面积数据
INSERT INTO `sorghum_planting_area` (`region`, `year`, `area`) VALUES
-- 北京市数据
('北京市', 2022, 0.48),('北京市', 2021, 0.28),('北京市', 2020, 0.35),('北京市', 2019, 0.26),('北京市', 2018, 0.37),
('北京市', 2017, 0.23),('北京市', 2016, 0.19),('北京市', 2015, 0.21),('北京市', 2014, 0.22),('北京市', 2013, 0.26),
('北京市', 2012, 0.29),('北京市', 2011, 0.27),('北京市', 2010, 0.32),('北京市', 2009, 0.32),('北京市', 2008, 0.32),
('北京市', 2007, 0.44),('北京市', 2006, 0.55),('北京市', 2005, 0.60),('北京市', 2004, 0.69),('北京市', 2003, 0.93),
('北京市', 2002, 1.40),('北京市', 2001, 1.60),('北京市', 2000, 2.26),

-- 天津市数据
('天津市', 2022, 9.09),('天津市', 2021, 6.67),('天津市', 2020, 7.23),('天津市', 2019, 4.40),('天津市', 2018, 4.57),
('天津市', 2017, 2.56),('天津市', 2016, 1.59),('天津市', 2015, 0.24),('天津市', 2014, 4.62),('天津市', 2013, 4.18),
('天津市', 2012, 1.20),('天津市', 2011, 0.85),('天津市', 2010, 0.71),('天津市', 2009, 0.35),('天津市', 2008, 0.25),
('天津市', 2007, 0.25),('天津市', 2006, 1.40),('天津市', 2005, 3.84),('天津市', 2004, 4.77),('天津市', 2003, 13.40),
('天津市', 2002, 14.76),('天津市', 2001, 15.87),('天津市', 2000, 10.30),

-- 河北省数据
('河北省', 2022, 33.61),('河北省', 2021, 28.07),('河北省', 2020, 20.74),('河北省', 2019, 10.80),('河北省', 2018, 9.78),
('河北省', 2017, 2.41),('河北省', 2016, 2.02),('河北省', 2015, 12.24),('河北省', 2014, 13.72),('河北省', 2013, 14.40),
('河北省', 2012, 14.65),('河北省', 2011, 14.82),('河北省', 2010, 16.83),('河北省', 2009, 18.88),('河北省', 2008, 23.47),
('河北省', 2007, 24.32),('河北省', 2006, 28.95),('河北省', 2005, 30.43),('河北省', 2004, 43.52),('河北省', 2003, 45.58),
('河北省', 2002, 46.15),('河北省', 2001, 54.91),('河北省', 2000, 52.26),

-- 山西省数据
('山西省', 2022, 103.50),('山西省', 2021, 104.76),('山西省', 2020, 87.62),('山西省', 2019, 66.49),('山西省', 2018, 32.93),
('山西省', 2017, 22.48),('山西省', 2016, 20.49),('山西省', 2015, 20.61),('山西省', 2014, 27.54),('山西省', 2013, 26.43),
('山西省', 2012, 26.68),('山西省', 2011, 27.71),('山西省', 2010, 32.47),('山西省', 2009, 26.81),('山西省', 2008, 32.85),
('山西省', 2007, 35.08),('山西省', 2006, 31.41),('山西省', 2005, 38.55),('山西省', 2004, 40.57),('山西省', 2003, 59.56),
('山西省', 2002, 73.05),('山西省', 2001, 63.29),('山西省', 2000, 68.24),

-- 内蒙古自治区数据
('内蒙古自治区', 2022, 122.88),('内蒙古自治区', 2021, 160.05),('内蒙古自治区', 2020, 149.97),('内蒙古自治区', 2019, 165.40),('内蒙古自治区', 2018, 171.12),
('内蒙古自治区', 2017, 90.16),('内蒙古自治区', 2016, 90.66),('内蒙古自治区', 2015, 81.41),('内蒙古自治区', 2014, 89.61),('内蒙古自治区', 2013, 104.63),
('内蒙古自治区', 2012, 115.20),('内蒙古自治区', 2011, 106.27),('内蒙古自治区', 2010, 135.42),('内蒙古自治区', 2009, 109.05),('内蒙古自治区', 2008, 107.63),
('内蒙古自治区', 2007, 73.46),('内蒙古自治区', 2006, 102.99),('内蒙古自治区', 2005, 57.28),('内蒙古自治区', 2004, 57.20),('内蒙古自治区', 2003, 84.42),
('内蒙古自治区', 2002, 109.30),('内蒙古自治区', 2001, 68.30),('内蒙古自治区', 2000, 108.80),

-- 辽宁省数据
('辽宁省', 2022, 41.66),('辽宁省', 2021, 44.00),('辽宁省', 2020, 44.62),('辽宁省', 2019, 41.06),('辽宁省', 2018, 37.57),
('辽宁省', 2017, 36.05),('辽宁省', 2016, 36.90),('辽宁省', 2015, 33.35),('辽宁省', 2014, 36.64),('辽宁省', 2013, 32.68),
('辽宁省', 2012, 37.40),('辽宁省', 2011, 45.39),('辽宁省', 2010, 57.31),('辽宁省', 2009, 81.42),('辽宁省', 2008, 65.50),
('辽宁省', 2007, 80.76),('辽宁省', 2006, 95.69),('辽宁省', 2005, 112.60),('辽宁省', 2004, 117.00),('辽宁省', 2003, 127.40),
('辽宁省', 2002, 178.00),('辽宁省', 2001, 186.90),('辽宁省', 2000, 188.60),

-- 吉林省数据
('吉林省', 2022, 46.98),('吉林省', 2021, 73.81),('吉林省', 2020, 63.11),('吉林省', 2019, 80.77),('吉林省', 2018, 107.12),
('吉林省', 2017, 117.77),('吉林省', 2016, 105.70),('吉林省', 2015, 95.31),('吉林省', 2014, 118.94),('吉林省', 2013, 117.78),
('吉林省', 2012, 130.16),('吉林省', 2011, 98.36),('吉林省', 2010, 99.26),('吉林省', 2009, 95.23),('吉林省', 2008, 136.39),
('吉林省', 2007, 155.96),('吉林省', 2006, 257.80),('吉林省', 2005, 85.20),('吉林省', 2004, 53.60),('吉林省', 2003, 95.20),
('吉林省', 2002, 90.00),('吉林省', 2001, 82.00),('吉林省', 2000, 121.80),

-- 黑龙江省数据
('黑龙江省', 2022, 15.10),('黑龙江省', 2021, 24.05),('黑龙江省', 2020, 23.77),('黑龙江省', 2019, 44.28),('黑龙江省', 2018, 57.79),
('黑龙江省', 2017, 53.89),('黑龙江省', 2016, 45.17),('黑龙江省', 2015, 26.29),('黑龙江省', 2014, 34.58),('黑龙江省', 2013, 25.12),
('黑龙江省', 2012, 29.27),('黑龙江省', 2011, 33.22),('黑龙江省', 2010, 40.61),('黑龙江省', 2009, 33.82),('黑龙江省', 2008, 34.16),
('黑龙江省', 2007, 24.56),('黑龙江省', 2006, 72.62),('黑龙江省', 2005, 71.80),('黑龙江省', 2004, 64.70),('黑龙江省', 2003, 102.80),
('黑龙江省', 2002, 124.20),('黑龙江省', 2001, 108.90),('黑龙江省', 2000, 115.80),

-- 上海市数据
('上海市', 2017, 0.00),('上海市', 2016, 0.00),('上海市', 2015, 0.00),('上海市', 2014, 0.00),('上海市', 2013, 0.00),
('上海市', 2012, 0.00),('上海市', 2011, 0.00),('上海市', 2010, 0.00),('上海市', 2009, 0.00),('上海市', 2008, 0.00),
('上海市', 2007, 0.00),

-- 江苏省数据
('江苏省', 2022, 1.68),('江苏省', 2021, 0.65),('江苏省', 2020, 0.26),('江苏省', 2019, 0.23),('江苏省', 2018, 0.26),
('江苏省', 2017, 0.18),('江苏省', 2016, 0.22),('江苏省', 2015, 0.21),('江苏省', 2014, 0.36),('江苏省', 2013, 0.07),
('江苏省', 2012, 0.04),('江苏省', 2011, 0.03),('江苏省', 2010, 0.03),('江苏省', 2009, 0.06),('江苏省', 2008, 0.03),
('江苏省', 2007, 0.00),('江苏省', 2006, 0.10),('江苏省', 2005, 0.06),('江苏省', 2004, 0.05),('江苏省', 2003, 1.05),
('江苏省', 2002, 0.11),('江苏省', 2001, 0.15),('江苏省', 2000, 0.16),

-- 浙江省数据
('浙江省', 2017, 0.00),('浙江省', 2016, 0.00),('浙江省', 2015, 0.00),('浙江省', 2014, 0.00),('浙江省', 2013, 0.00),
('浙江省', 2012, 0.00),('浙江省', 2011, 0.00),('浙江省', 2010, 0.00),('浙江省', 2009, 0.00),('浙江省', 2008, 0.00),
('浙江省', 2007, 0.00),

-- 安徽省数据
('安徽省', 2022, 12.84),('安徽省', 2021, 6.46),('安徽省', 2020, 6.13),('安徽省', 2019, 5.73),('安徽省', 2018, 0.30),
('安徽省', 2017, 0.31),('安徽省', 2016, 0.27),('安徽省', 2015, 0.26),('安徽省', 2014, 2.00),('安徽省', 2013, 1.37),
('安徽省', 2012, 1.21),('安徽省', 2011, 1.17),('安徽省', 2010, 1.17),('安徽省', 2009, 1.17),('安徽省', 2008, 1.03),
('安徽省', 2007, 1.40),('安徽省', 2006, 2.00),('安徽省', 2005, 2.20),('安徽省', 2004, 3.26),('安徽省', 2003, 5.13),
('安徽省', 2002, 4.80),('安徽省', 2001, 4.57),

-- 福建省数据
('福建省', 2022, 0.03),('福建省', 2021, 0.04),('福建省', 2020, 0.06),('福建省', 2019, 0.10),('福建省', 2018, 0.09),
('福建省', 2017, 0.09),('福建省', 2016, 0.09),('福建省', 2015, 0.13),('福建省', 2014, 0.18),('福建省', 2013, 0.24),
('福建省', 2012, 0.32),('福建省', 2011, 0.45),('福建省', 2010, 0.58),('福建省', 2009, 0.77),('福建省', 2008, 0.98),
('福建省', 2007, 1.14),('福建省', 2006, 1.61),('福建省', 2005, 2.67),('福建省', 2004, 2.93),('福建省', 2003, 3.06),
('福建省', 2002, 3.60),('福建省', 2001, 4.30),('福建省', 2000, 4.70),

-- 江西省数据
('江西省', 2022, 3.60),('江西省', 2021, 3.20),('江西省', 2020, 2.60),('江西省', 2019, 2.53),('江西省', 2018, 2.40),
('江西省', 2017, 2.48),('江西省', 2016, 2.53),('江西省', 2015, 2.97),('江西省', 2014, 2.95),('江西省', 2013, 3.44),
('江西省', 2012, 2.18),('江西省', 2011, 1.02),('江西省', 2010, 0.81),('江西省', 2009, 0.73),('江西省', 2008, 1.39),
('江西省', 2007, 1.59),('江西省', 2006, 1.29),('江西省', 2005, 1.11),('江西省', 2004, 1.19),('江西省', 2003, 1.40),
('江西省', 2002, 1.57),('江西省', 2001, 1.90),('江西省', 2000, 1.80),

-- 山东省数据
('山东省', 2022, 2.13),('山东省', 2021, 2.22),('山东省', 2020, 2.35),('山东省', 2019, 2.27),('山东省', 2018, 3.26),
('山东省', 2017, 3.33),('山东省', 2016, 2.67),('山东省', 2015, 2.90),('山东省', 2014, 3.44),('山东省', 2013, 3.41),
('山东省', 2012, 3.80),('山东省', 2011, 3.67),('山东省', 2010, 4.23),('山东省', 2009, 5.72),('山东省', 2008, 6.00),
('山东省', 2007, 6.63),('山东省', 2006, 9.18),('山东省', 2005, 13.89),('山东省', 2004, 15.26),('山东省', 2003, 20.87),
('山东省', 2002, 20.59),('山东省', 2001, 24.40),('山东省', 2000, 28.57),

-- 河南省数据
('河南省', 2022, 15.49),('河南省', 2021, 12.73),('河南省', 2020, 19.33),('河南省', 2019, 20.67),('河南省', 2018, 21.34),
('河南省', 2017, 21.33),('河南省', 2016, 14.67),('河南省', 2015, 10.25),('河南省', 2014, 5.45),('河南省', 2013, 2.41),
('河南省', 2012, 2.42),('河南省', 2011, 2.99),('河南省', 2010, 3.69),('河南省', 2009, 3.85),('河南省', 2008, 3.65),
('河南省', 2007, 3.28),('河南省', 2006, 3.91),('河南省', 2005, 6.41),('河南省', 2004, 8.27),('河南省', 2003, 9.10),
('河南省', 2002, 9.20),('河南省', 2001, 9.36),('河南省', 2000, 12.87),

-- 湖北省数据
('湖北省', 2022, 9.65),('湖北省', 2021, 5.99),('湖北省', 2020, 5.07),('湖北省', 2019, 4.31),('湖北省', 2018, 4.25),
('湖北省', 2017, 5.03),('湖北省', 2016, 5.33),('湖北省', 2015, 4.40),('湖北省', 2014, 4.50),('湖北省', 2013, 4.68),
('湖北省', 2012, 5.15),('湖北省', 2011, 5.71),('湖北省', 2010, 4.60),('湖北省', 2009, 4.66),('湖北省', 2008, 3.93),
('湖北省', 2007, 3.29),('湖北省', 2006, 3.50),('湖北省', 2005, 3.13),('湖北省', 2004, 2.22),('湖北省', 2003, 4.73),
('湖北省', 2002, 5.00),('湖北省', 2001, 4.85),('湖北省', 2000, 7.28),

-- 湖南省数据
('湖南省', 2022, 9.13),('湖南省', 2021, 8.97),('湖南省', 2020, 8.77),('湖南省', 2019, 10.70),('湖南省', 2018, 9.60),
('湖南省', 2017, 6.30),('湖南省', 2016, 6.10),('湖南省', 2015, 6.37),('湖南省', 2014, 6.45),('湖南省', 2013, 4.41),
('湖南省', 2012, 2.83),('湖南省', 2011, 2.53),('湖南省', 2010, 2.45),('湖南省', 2009, 3.44),('湖南省', 2008, 3.36),
('湖南省', 2007, 3.68),('湖南省', 2006, 5.70),('湖南省', 2005, 11.00),('湖南省', 2004, 11.10),('湖南省', 2003, 12.24),
('湖南省', 2002, 12.59),('湖南省', 2001, 11.89),('湖南省', 2000, 12.20),

-- 广东省数据
('广东省', 2022, 0.12),('广东省', 2021, 0.11),('广东省', 2020, 0.04),('广东省', 2019, 0.04),('广东省', 2018, 0.04),
('广东省', 2017, 0.02),('广东省', 2016, 0.03),('广东省', 2015, 0.03),('广东省', 2014, 0.02),('广东省', 2013, 0.05),
('广东省', 2012, 0.06),('广东省', 2011, 0.06),('广东省', 2010, 0.06),('广东省', 2009, 0.06),('广东省', 2008, 0.15),
('广东省', 2007, 0.16),('广东省', 2006, 0.17),('广东省', 2005, 0.10),('广东省', 2004, 0.10),('广东省', 2003, 0.10),
('广东省', 2002, 0.24),('广东省', 2001, 0.25),('广东省', 2000, 0.40),

-- 广西壮族自治区数据
('广西壮族自治区', 2022, 3.77),('广西壮族自治区', 2021, 3.68),('广西壮族自治区', 2020, 3.89),('广西壮族自治区', 2019, 5.53),('广西壮族自治区', 2018, 5.55),
('广西壮族自治区', 2017, 5.84),('广西壮族自治区', 2016, 6.25),('广西壮族自治区', 2015, 6.44),('广西壮族自治区', 2014, 6.15),('广西壮族自治区', 2013, 6.36),
('广西壮族自治区', 2012, 4.05),('广西壮族自治区', 2011, 3.38),('广西壮族自治区', 2010, 3.11),('广西壮族自治区', 2009, 3.12),('广西壮族自治区', 2008, 2.90),
('广西壮族自治区', 2007, 2.79),('广西壮族自治区', 2006, 2.62),('广西壮族自治区', 2005, 2.70),('广西壮族自治区', 2004, 2.90),('广西壮族自治区', 2003, 3.20),
('广西壮族自治区', 2002, 3.80),('广西壮族自治区', 2001, 4.80),('广西壮族自治区', 2000, 4.90),

-- 海南省数据
('海南省', 2017, 0.00),('海南省', 2016, 0.00),('海南省', 2015, 0.01),('海南省', 2014, 0.02),('海南省', 2013, 0.02),
('海南省', 2012, 0.02),('海南省', 2011, 0.01),('海南省', 2010, 0.04),('海南省', 2009, 0.06),('海南省', 2008, 0.08),
('海南省', 2007, 0.07),('海南省', 2006, 0.50),('海南省', 2004, 0.02),('海南省', 2003, 0.01),('海南省', 2002, 0.05),
('海南省', 2001, 0.07),('海南省', 2000, 0.10),

-- 重庆市数据
('重庆市', 2022, 18.72),('重庆市', 2021, 16.96),('重庆市', 2020, 16.46),('重庆市', 2019, 15.98),('重庆市', 2018, 16.05),
('重庆市', 2017, 15.97),('重庆市', 2016, 15.53),('重庆市', 2015, 16.04),('重庆市', 2014, 16.71),('重庆市', 2013, 15.52),
('重庆市', 2012, 13.23),('重庆市', 2011, 12.89),('重庆市', 2010, 12.07),('重庆市', 2009, 11.37),('重庆市', 2008, 9.72),
('重庆市', 2007, 8.70),('重庆市', 2006, 8.36),('重庆市', 2005, 26.78),('重庆市', 2004, 37.50),('重庆市', 2003, 26.97),
('重庆市', 2002, 23.10),('重庆市', 2001, 21.20),('重庆市', 2000, 22.90),

-- 四川省数据
('四川省', 2022, 65.00),('四川省', 2021, 64.00),('四川省', 2020, 54.92),('四川省', 2019, 50.00),('四川省', 2018, 36.00),
('四川省', 2017, 33.00),('四川省', 2016, 30.43),('四川省', 2015, 29.95),('四川省', 2014, 31.70),('四川省', 2013, 31.62),
('四川省', 2012, 31.21),('四川省', 2011, 30.89),('四川省', 2010, 30.57),('四川省', 2009, 30.25),('四川省', 2008, 29.59),
('四川省', 2007, 32.64),('四川省', 2006, 36.15),('四川省', 2005, 39.23),('四川省', 2004, 42.60),('四川省', 2003, 46.26),
('四川省', 2002, 48.40),('四川省', 2001, 44.11),('四川省', 2000, 42.89),

-- 贵州省数据
('贵州省', 2022, 112.59),('贵州省', 2021, 101.23),('贵州省', 2020, 83.69),('贵州省', 2019, 72.69),('贵州省', 2018, 61.48),
('贵州省', 2017, 45.06),('贵州省', 2016, 46.93),('贵州省', 2015, 42.61),('贵州省', 2014, 48.13),('贵州省', 2013, 50.20),
('贵州省', 2012, 41.95),('贵州省', 2011, 35.57),('贵州省', 2010, 36.20),('贵州省', 2009, 27.84),('贵州省', 2008, 21.79),
('贵州省', 2007, 27.86),('贵州省', 2006, 30.45),('贵州省', 2005, 24.16),('贵州省', 2004, 21.10),('贵州省', 2003, 20.10),
('贵州省', 2002, 18.37),('贵州省', 2001, 18.70),('贵州省', 2000, 17.90),

-- 云南省数据
('云南省', 2022, 4.27),('云南省', 2021, 4.10),('云南省', 2020, 4.50),('云南省', 2019, 3.50),('云南省', 2018, 3.30),
('云南省', 2017, 3.41),('云南省', 2016, 3.44),('云南省', 2015, 3.18),('云南省', 2014, 3.07),('云南省', 2013, 2.55),
('云南省', 2012, 2.75),('云南省', 2011, 2.71),('云南省', 2010, 2.75),('云南省', 2009, 2.32),('云南省', 2008, 2.34),
('云南省', 2007, 2.64),('云南省', 2006, 2.06),('云南省', 2005, 2.61),('云南省', 2004, 2.56),('云南省', 2003, 3.02),
('云南省', 2002, 2.09),('云南省', 2001, 2.71),('云南省', 2000, 8.30),

-- 西藏自治区数据
('西藏自治区', 2017, 0.00),('西藏自治区', 2016, 0.00),('西藏自治区', 2015, 0.00),('西藏自治区', 2014, 0.00),('西藏自治区', 2013, 0.00),
('西藏自治区', 2012, 0.00),('西藏自治区', 2011, 0.00),('西藏自治区', 2010, 0.00),('西藏自治区', 2009, 0.00),('西藏自治区', 2008, 0.00),
('西藏自治区', 2007, 0.00),

-- 陕西省数据
('陕西省', 2022, 24.68),('陕西省', 2021, 22.86),('陕西省', 2020, 17.98),('陕西省', 2019, 17.92),('陕西省', 2018, 17.07),
('陕西省', 2017, 16.33),('陕西省', 2016, 16.04),('陕西省', 2015, 15.63),('陕西省', 2014, 16.43),('陕西省', 2013, 17.65),
('陕西省', 2012, 8.52),('陕西省', 2011, 9.49),('陕西省', 2010, 9.91),('陕西省', 2009, 9.43),('陕西省', 2008, 12.95),
('陕西省', 2007, 11.72),('陕西省', 2006, 8.26),('陕西省', 2005, 5.00),('陕西省', 2004, 5.10),('陕西省', 2003, 6.90),
('陕西省', 2002, 16.60),('陕西省', 2001, 15.35),('陕西省', 2000, 19.00),

-- 甘肃省数据
('甘肃省', 2022, 6.76),('甘肃省', 2021, 7.12),('甘肃省', 2020, 6.98),('甘肃省', 2019, 5.99),('甘肃省', 2018, 8.16),
('甘肃省', 2017, 14.14),('甘肃省', 2016, 12.35),('甘肃省', 2015, 8.42),('甘肃省', 2014, 9.63),('甘肃省', 2013, 8.78),
('甘肃省', 2012, 6.41),('甘肃省', 2011, 8.69),('甘肃省', 2010, 9.40),('甘肃省', 2009, 12.33),('甘肃省', 2008, 14.05),
('甘肃省', 2007, 15.15),('甘肃省', 2006, 18.68),('甘肃省', 2005, 18.05),('甘肃省', 2004, 19.40),('甘肃省', 2003, 18.43),
('甘肃省', 2002, 18.81),('甘肃省', 2001, 18.74),('甘肃省', 2000, 18.47),

-- 青海省数据
('青海省', 2018, 0.00),('青海省', 2017, 0.00),('青海省', 2016, 0.00),('青海省', 2015, 0.00),('青海省', 2014, 0.00),
('青海省', 2013, 0.00),('青海省', 2012, 0.00),('青海省', 2011, 0.00),('青海省', 2010, 0.00),('青海省', 2009, 0.00),
('青海省', 2008, 0.00),('青海省', 2007, 0.00),('青海省', 2006, 0.00),

-- 宁夏回族自治区数据
('宁夏回族自治区', 2022, 0.77),('宁夏回族自治区', 2021, 0.69),('宁夏回族自治区', 2018, 3.13),('宁夏回族自治区', 2017, 0.00),('宁夏回族自治区', 2016, 0.00),
('宁夏回族自治区', 2015, 0.00),('宁夏回族自治区', 2014, 0.00),('宁夏回族自治区', 2013, 0.00),('宁夏回族自治区', 2012, 0.00),('宁夏回族自治区', 2011, 0.00),
('宁夏回族自治区', 2010, 0.00),('宁夏回族自治区', 2009, 0.00),('宁夏回族自治区', 2008, 0.00),('宁夏回族自治区', 2007, 0.00),('宁夏回族自治区', 2006, 0.37),
('宁夏回族自治区', 2005, 0.11),('宁夏回族自治区', 2004, 0.12),('宁夏回族自治区', 2003, 0.94),('宁夏回族自治区', 2002, 0.50),('宁夏回族自治区', 2001, 1.50),
('宁夏回族自治区', 2000, 0.90),

-- 新疆维吾尔自治区数据
('新疆维吾尔自治区', 2022, 10.00),('新疆维吾尔自治区', 2021, 10.46),('新疆维吾尔自治区', 2020, 4.27),('新疆维吾尔自治区', 2019, 8.75),('新疆维吾尔自治区', 2018, 8.33),
('新疆维吾尔自治区', 2017, 4.94),('新疆维吾尔自治区', 2016, 7.22),('新疆维吾尔自治区', 2015, 5.49),('新疆维吾尔自治区', 2014, 7.93),('新疆维吾尔自治区', 2013, 8.31),
('新疆维吾尔自治区', 2012, 7.49),('新疆维吾尔自治区', 2011, 5.46),('新疆维吾尔自治区', 2010, 5.12),('新疆维吾尔自治区', 2009, 5.05),('新疆维吾尔自治区', 2008, 2.62),
('新疆维吾尔自治区', 2007, 5.53),('新疆维吾尔自治区', 2006, 7.56),('新疆维吾尔自治区', 2005, 9.91),('新疆维吾尔自治区', 2004, 10.68),('新疆维吾尔自治区', 2003, 11.40),
('新疆维吾尔自治区', 2002, 16.62),('新疆维吾尔自治区', 2001, 11.76),('新疆维吾尔自治区', 2000, 13.28);