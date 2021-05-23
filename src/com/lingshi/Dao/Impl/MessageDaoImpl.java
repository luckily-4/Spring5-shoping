package com.lingshi.Dao.Impl;

import com.lingshi.Dao.MessageDao;
import com.lingshi.Model.Message;
import com.lingshi.Model.User;
import com.lingshi.Util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class MessageDaoImpl implements MessageDao {
    DataSource dataSource;
    private  JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public List<Message> findAll() {
         String sql="select * from messages";
        List<Message> message = template.query(sql, new BeanPropertyRowMapper<Message>(Message.class));
         return message;
    }

    @Override
    public void addMessage(Message message) {
        //1. 定义sql
        String sql="insert into messages values(null,?,?,?,?)";
        //2.执行
        template.update(sql,
                message.getName(),
                message.getTime(),
                message.getTitle(),
                message.getContent());

    }

    @Override
    public int findTotalCount() {
        String sql="select count(*) from messages";
        return template.queryForObject(sql,Integer.class);
    }

    @Override
    public List<Message> findByPage(int start, int rows) {
        String sql ="select * from messages limit ? ,?";
        return template.query(sql,new BeanPropertyRowMapper<Message>(Message.class),start,rows);
    }

    @Override
    public void delete(int id) {
        //1.定义sql
        String sql="delete from messages where id=?";
        //2.执行sql
        template.update(sql,id);
    }

    @Override
    public void updateUser(Message message) {
        String sql="update  messages set  name =?, time=?, title=?,content=? where id=?";
        template.update(sql,message.getName(),
                message.getTime(),
                message.getTitle(),
                message.getContent());

    }


}
