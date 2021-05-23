package com.lingshi.Service.Impl;

import com.lingshi.Dao.GoodsDao;
import com.lingshi.Dao.Impl.GoodsDaoImpl;
import com.lingshi.Model.Goods;
import com.lingshi.Model.PabeBean;
import com.lingshi.Model.UserCart;
import com.lingshi.Service.GoodsService;

import java.util.List;

public class GoodServiceImpl implements GoodsService {
    private GoodsDao dao =new GoodsDaoImpl();

    @Override
    public List<Goods> findAll() {
        return dao.findAll();
    }

    @Override
    public void addGoods(Goods goods) {
        dao.addGoods(goods);
    }

    @Override
    public PabeBean<Goods> findGoodsByPage(String _currentPage, String _rows) {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);
        if(currentPage<=0){
            currentPage=1;
        }
        PabeBean<Goods> pb = new PabeBean<Goods>();
        pb.setCurrentPage(currentPage);
        int totalCount = dao.findTotalCount();
        pb.setTotalCount(totalCount);
        int start = (currentPage - 1) * rows;
        List<Goods> list = dao.findGoodsByPage(start, rows);
        pb.setList(list);
        int totalPage=(totalCount % rows) ==0 ? totalCount/rows :( totalCount/rows +1);
        pb.setTotalPage(totalPage);
        return pb;

    }

    @Override
    public void updateGoods(Goods goods) {
        dao.updateGoods(goods);
    }

    @Override
    public Goods findGoodsById(int id) {
        return dao.findById(id);
    }

    @Override
    public void delete(String id) {
        dao.delete(Integer.parseInt(id));
    }




}
