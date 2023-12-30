package com.duan.totnghiep.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duan.totnghiep.dao.ACCOUNTDAO;
import com.duan.totnghiep.dao.ROLEACCDAO;
import com.duan.totnghiep.entity.ACCOUNT;
import com.duan.totnghiep.entity.ROLEACC;
import com.duan.totnghiep.service.ROLEACCSERVICE;

import java.util.List;

@Service
public class ROLEACCSERVICEIMPL implements ROLEACCSERVICE {
    @Autowired
    ROLEACCDAO dao;
    @Autowired
    ACCOUNTDAO acdao;
    @Override
    public List<ROLEACC> Authorityof() {
        List<ACCOUNT> accounts = acdao.getAdministrators();
        return dao.Authorityof(accounts);
    }

    @Override
    public List<ROLEACC> findall() {
        return dao.findAll();
    }

    @Override
    public ROLEACC create(ROLEACC ROLEACC) {
        return dao.save(ROLEACC);
    }

    @Override
    public void deletebyid(long ROLEACCID) {
        dao.deleteById(ROLEACCID);
    }

    @Override
    public void delete(ROLEACC ROLEACC) {
        dao.delete(ROLEACC);
    }

    @Override
    public ROLEACC findone(long ROLEACCID) {
        return dao.findById(ROLEACCID).get();
    }



}
