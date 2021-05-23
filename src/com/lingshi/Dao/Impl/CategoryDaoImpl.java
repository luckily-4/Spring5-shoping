package com.lingshi.Dao.Impl;

import com.lingshi.Dao.CategoryDao;
import com.lingshi.Model.Category;
import com.lingshi.Util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class CategoryDaoImpl implements CategoryDao {
   DataSource dataSource;
   private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public List<Category> FindAll() {
        String sql="select * from cartname";
        return template.query(sql,new BeanPropertyRowMapper<Category>(Category.class));
    }
}
