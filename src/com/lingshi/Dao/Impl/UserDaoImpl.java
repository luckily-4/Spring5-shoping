package com.lingshi.Dao.Impl;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.lingshi.Dao.UserDao;
import com.lingshi.Model.User;
import com.lingshi.Util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UserDaoImpl implements UserDao {
        DataSource dataSource;
        private JdbcTemplate template =new JdbcTemplate(JDBCUtils.getDataSource());
    //1.查询所有
    @Override
    public List<User> findAll() {
      String sql="select *from users";
        List<User> users = template.query(sql, new BeanPropertyRowMapper<User>(User.class));
        return users;

    }



    //2.用户登录操作,通过查询姓名,密码
    @Override
    public User findUserByUsernameAndPassword(String name, String password) {
          try {
              String sql = "select * from users where  name=? and password=?";

              User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), name, password);
              return user;
          }catch  (Exception e){
                e.printStackTrace();
                return null;
        }
    }






    //用户添加
    @Override
    public void add(User user) {
        //1. 定义sql
        String sql="insert into users values(null,?,?,?,?)";
        //2.执行
        template.update(sql,
                user.getName(),
                user.getPassword(),
                user.getEmail(),
                user.getSex());

    }
    //用户删除
    @Override
    public void delete(int id) {
        //1.定义sql
        String sql="delete from users where id=?";
        //2.执行sql
        template.update(sql,id);
    }
        //通过id查询
    @Override
    public User findById(int id) {
        String sql ="select * from users where id=?";
     return template.queryForObject(sql,new BeanPropertyRowMapper<User>(User.class),id);
    }
// 更新(修改)用户
    @Override
    public void updateUser(User user) {
        String sql="update  users set name=?, password=?, email=?,sex=? where id=?";
  template.update(sql,user.getName(),
                      user.getPassword(),
                      user.getEmail(),
                      user.getSex(),
                      user.getId());
    }

    @Override
    public int findTotalCount(Map<String, String[]> condition) {
          String sql="select count(*) from users where 1=1";
          StringBuilder sb =new StringBuilder(sql);
        Set<String> keySet = condition.keySet();
        List<Object> parms =new ArrayList<Object>();
         for(String key:keySet){
              if("currentPage".equals(key) || "rows".equals(key)){
                      continue;
              }
             String value = condition.get(key)[0];
             if(value!=null && !"".equals(value)){
                 sb.append("  and "+key+" like ?");
                 parms.add("%"+value+"%");  //加条件的值
             }
         }
        System.out.println(sb.toString());
        System.out.println(parms);
        return template.queryForObject(sb.toString(),Integer.class,parms.toArray());
    }

    @Override
    public List<User> findByPage(int start, int rows, Map<String, String[]> condition) {
        String sql ="select * from users where 1=1";
        StringBuilder sb =new StringBuilder(sql);
        Set<String> keySet = condition.keySet();
        List<Object> parms =new ArrayList<Object>();
        for(String key:keySet){
            if("currentPage".equals(key) || "rows".equals(key)){
                continue;
            }
            String value = condition.get(key)[0];
            if(value!=null && !"".equals(value)){
                sb.append("  and "+key+" like ?");
                parms.add("%"+value+"%");  //加条件的值
            }
        }
        //添加分页
        sb.append("  limit ?,? ");
        //添加分页查询
        parms.add(start);
        parms.add(rows);
        System.out.println(sb.toString());
        System.out.println(parms);
        return template.query(sb.toString(),new BeanPropertyRowMapper<User>(User.class),parms.toArray());
    }


}
