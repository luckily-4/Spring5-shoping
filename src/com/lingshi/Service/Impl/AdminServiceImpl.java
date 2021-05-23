package com.lingshi.Service.Impl;

import com.lingshi.Dao.AdminDao;
import com.lingshi.Dao.Impl.AdminDaoImpl;
import com.lingshi.Dao.Impl.UserDaoImpl;
import com.lingshi.Dao.UserDao;
import com.lingshi.Model.Admin;
import com.lingshi.Model.User;
import com.lingshi.Service.AdminService;

public class AdminServiceImpl implements AdminService {
    private AdminDao dao = new AdminDaoImpl();

    @Override
    public Admin login(Admin admin) {
        return dao.findUserByUsernameAndPassword(admin.getName(),admin.getPassword());
    }
}

