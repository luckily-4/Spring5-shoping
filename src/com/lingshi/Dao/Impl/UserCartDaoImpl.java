package com.lingshi.Dao.Impl;

import com.lingshi.Dao.MessageDao;
import com.lingshi.Dao.UserCartDao;
import com.lingshi.Model.Message;
import com.lingshi.Model.User;
import com.lingshi.Model.UserCart;
import com.lingshi.Util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class UserCartDaoImpl implements UserCartDao {
    DataSource dataSource;
    private  JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public List<UserCart> findAll() {
         String sql="select * from usercart";
        List<UserCart> usercart = template.query(sql, new BeanPropertyRowMapper<UserCart>(UserCart.class));
         return usercart;
    }

    @Override
    public void addUserCart(UserCart userCart) {
        //1. 定义sql
        String sql="insert into usercart values(null,?,?,?,?)";
        //2.执行
        template.update(sql,
                userCart.getName(),
                userCart.getAddress(),
                userCart.getPhone());

    }

    @Override
    public int findTotalCount() {
        String sql="select count(*) from usercart";
        return template.queryForObject(sql,Integer.class);
    }

    @Override
    public List<UserCart> findByPage(int start, int rows) {
        String sql ="select * from usercart limit ? ,?";
        return template.query(sql,new BeanPropertyRowMapper<UserCart>(UserCart.class),start,rows);
    }

    @Override
    public void updateUser(UserCart userCart) {
        String sql="update  usercart set  name =?, address=?, phone=? where id=?";
        template.update(sql,userCart.getName(),
                userCart.getAddress(),
                userCart.getPhone(),
                userCart.getId());
    }

    @Override
    public UserCart findById(int id) {
        String sql ="select * from usercart where id=?";
        return template.queryForObject(sql,new BeanPropertyRowMapper<UserCart>(UserCart.class),id);
    }

    @Override
    public void delete(int id) {
        //1.定义sql
        String sql="delete from usercart where id=?";
        //2.执行sql
        template.update(sql,id);
    }


}
