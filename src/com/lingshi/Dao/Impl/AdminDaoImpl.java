package com.lingshi.Dao.Impl;

import com.lingshi.Dao.AdminDao;
import com.lingshi.Model.Admin;
import com.lingshi.Model.User;
import com.lingshi.Util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

public class AdminDaoImpl implements AdminDao {
    DataSource dataSource;
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public Admin findUserByUsernameAndPassword(String name, String password) {
        try {
            String sql = "select * from admin where  name=? and password=?";

            Admin user = template.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class), name, password);
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
