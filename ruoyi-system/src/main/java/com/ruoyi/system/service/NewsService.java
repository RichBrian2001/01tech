package com.ruoyi.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class NewsService {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<String> getHrefs(String tableName) {
        String sql = "SELECT href FROM " + tableName;
        return jdbcTemplate.queryForList(sql, String.class);
    }

    public List<String> getTitles(String tableName) {
        String sql = "SELECT title FROM " + tableName;
        return jdbcTemplate.queryForList(sql, String.class);
    }

    public List<Map<String, Object>> getNewsData(String tableName) {
        String sql = "SELECT href, title FROM " + tableName;
        return jdbcTemplate.queryForList(sql);
    }

    public List<Map<String, Object>> getNewsPicData() {
        String sql = "SELECT href, pic_href, title FROM news_pic";
        return jdbcTemplate.queryForList(sql);
    }
}
