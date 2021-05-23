package com.lingshi.Dao;

import com.lingshi.Model.Admin;
import com.lingshi.Model.User;

public interface AdminDao {
    Admin findUserByUsernameAndPassword(String name, String password);
}
