package com.duan.totnghiep.service;

import java.util.List;

import com.duan.totnghiep.entity.ACCOUNT;



public interface ACCOUNTSERVICE {
    List<ACCOUNT> findall();
    ACCOUNT create(ACCOUNT account);
    void deletebyid(String username);
    void delete(ACCOUNT account);
    ACCOUNT findone(String username);
    List<ACCOUNT> findName(String username);
    List<ACCOUNT> getAdministrators();
    List<ACCOUNT> getUser();
    long sluser();
    int UpdatePW(String PASSWORD, String EMAIL);
}
