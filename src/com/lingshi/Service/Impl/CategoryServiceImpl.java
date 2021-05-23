package com.lingshi.Service.Impl;

import com.lingshi.Dao.CategoryDao;
import com.lingshi.Dao.Impl.CategoryDaoImpl;
import com.lingshi.Model.Category;
import com.lingshi.Service.CategoryService;

import java.util.List;

public class CategoryServiceImpl implements CategoryService {
       private CategoryDao categoryDao=new CategoryDaoImpl();
    @Override
    public List<Category> FindAll() {

        return  categoryDao.FindAll();
    }
}
