package com.lingshi.Service;
import com.lingshi.Model.Goods;
import com.lingshi.Model.PabeBean;
import java.util.List;

public interface GoodsService {
    List<Goods> findAll();
    void addGoods(Goods goods);
    PabeBean<Goods> findGoodsByPage(String currentPage, String rows);
    void updateGoods(Goods goods);
    Goods findGoodsById(int id);
    void delete(String id);



}
