package com.lingshi.Dao.Impl;

import com.lingshi.Dao.GoodsDao;
import com.lingshi.Model.Goods;
import com.lingshi.Model.UserCart;
import com.lingshi.Util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class GoodsDaoImpl implements GoodsDao {
    DataSource dataSource;
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public List<Goods> findAll() {
        String sql="select * from productlist";
        List<Goods> productlist = template.query(sql, new BeanPropertyRowMapper<Goods>(Goods.class));
        return productlist;
    }

    @Override
    public void addGoods(Goods goods) {
        //1. 定义sql
        String sql="insert into productlist values(null,?,?,?,?)";
        //2.执行
        template.update(sql,
                goods.getName(),
                goods.getNum(),
                goods.getPrice(),
                goods.getTime());

    }

    @Override
    public int findTotalCount() {
        String sql="select count(*) from productlist";
        return template.queryForObject(sql,Integer.class);
    }

    @Override
    public List<Goods> findGoodsByPage(int start, int rows) {
        String sql ="select * from productlist limit ? ,?";
        return template.query(sql,new BeanPropertyRowMapper<Goods>(Goods.class),start,rows);
    }

    @Override
    public void updateGoods(Goods goods) {
        String sql="update  productlist set  name =?, num=?, price=? ,time=? where id=?";
        template.update(sql,goods.getName(),
                goods.getNum(),
                goods.getPrice(),
                goods.getTime(),
                goods.getId());
    }

    @Override
    public Goods findById(int id) {
        String sql ="select * from productlist where id=?";
        return template.queryForObject(sql,new BeanPropertyRowMapper<Goods>(Goods.class),id);
    }

    @Override
    public void delete(int id) {
        //1.定义sql
        String sql="delete from productlist where id=?";
        //2.执行sql
        template.update(sql,id);
    }
}
