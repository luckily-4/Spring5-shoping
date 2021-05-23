package com.lingshi.Service.Impl;

import com.lingshi.Dao.Impl.UserDaoImpl;
import com.lingshi.Dao.UserDao;
import com.lingshi.Model.PabeBean;
import com.lingshi.Model.User;
import com.lingshi.Service.UserService;

import java.util.List;
import java.util.Map;

public class UserServiceImpl implements UserService {
     private UserDao dao=new UserDaoImpl();
    @Override
    public User login(User user) {
       return dao.findUserByUsernameAndPassword(user.getName(),user.getPassword());
    }

    @Override
    public List<User> findAll() {
     return dao.findAll();
    }

    @Override
    public void addUser(User user) {
       dao.add(user);
    }

    @Override
    public void delete(String id) {
        dao.delete(Integer.parseInt(id));
    }

    @Override
    public User findUserById(String id) {
       return dao.findById(Integer.parseInt(id));
    }

    @Override
    public void updateUser(User user) {
         dao.updateUser(user);
    }

    @Override
    public PabeBean<User> findUsderByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);

          if(currentPage<=0){
              currentPage=1;
          }


        PabeBean<User> pb = new PabeBean<User>();
        pb.setCurrentPage(currentPage);

        int totalCount = dao.findTotalCount(condition);
        pb.setTotalCount(totalCount);
        int start = (currentPage - 1) * rows;
        List<User> list = dao.findByPage(start, rows,condition);
        pb.setList(list);
        int totalPage=(totalCount % rows) ==0 ? totalCount/rows :( totalCount/rows +1);

        pb.setTotalPage(totalPage);

       return pb;

    }


}
