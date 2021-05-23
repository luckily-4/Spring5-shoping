package com.lingshi.Dao;

import com.lingshi.Model.Goods;
import com.lingshi.Model.UserCart;

import java.util.List;

public interface GoodsDao {
    List<Goods> findAll();
    void addGoods(Goods goods);
    int findTotalCount();
    List<Goods> findGoodsByPage(int start, int rows);

    void updateGoods(Goods  goods);

    Goods findById(int parseInt);
    void delete(int Int);
}
