package com.lingshi.Service.Impl;
import com.lingshi.Dao.Impl.UserCartDaoImpl;
import com.lingshi.Dao.UserCartDao;
import com.lingshi.Model.PabeBean;
import com.lingshi.Model.UserCart;
import com.lingshi.Service.UserCartService;
import java.util.List;
public class UserCartServiceImpl implements UserCartService {
      private UserCartDao dao =new UserCartDaoImpl();
    @Override
    public List<UserCart> findAll() {
        return dao.findAll();
    }
    @Override
    public void addUserCart(UserCart userCart) {
        dao.addUserCart(userCart);
    }
    @Override
    public PabeBean<UserCart> findUserCartByPage(String _currentPage, String _rows) {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);
        if(currentPage<=0){
            currentPage=1;
        }
        PabeBean<UserCart> pb = new PabeBean<UserCart>();
        pb.setCurrentPage(currentPage);
        int totalCount = dao.findTotalCount();
        pb.setTotalCount(totalCount);
        int start = (currentPage - 1) * rows;
        List<UserCart> list = dao.findByPage(start, rows);
        pb.setList(list);
        int totalPage=(totalCount % rows) ==0 ? totalCount/rows :( totalCount/rows +1);
        pb.setTotalPage(totalPage);
        return pb;

    }

    @Override
    public void updateUser(UserCart userCart) {
        dao.updateUser(userCart);
    }

    @Override
    public UserCart findUserById(int id) {
        return dao.findById(id);
    }

    @Override
    public void delete(String id) {
        dao.delete(Integer.parseInt(id));
    }


}
