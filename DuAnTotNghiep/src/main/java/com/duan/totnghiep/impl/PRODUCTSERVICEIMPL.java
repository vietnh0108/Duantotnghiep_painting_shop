package com.duan.totnghiep.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duan.totnghiep.dao.PRODUCTDAO;
import com.duan.totnghiep.entity.PRODUCT;
import com.duan.totnghiep.service.PRODUCTSERVICE;

import java.util.List;

@Service
public class PRODUCTSERVICEIMPL implements PRODUCTSERVICE {
    @Autowired
    PRODUCTDAO dao;
    @Override
    public List<PRODUCT> findall() {
        return dao.findAll();
    }

    @Override
    public PRODUCT create(PRODUCT PRODUCT) {
        return dao.save(PRODUCT);
    }

    @Override 
    public void deletebyid(long PRODUCTID) {
        dao.deleteById(PRODUCTID);
    }

    @Override
    public void delete(PRODUCT PRODUCT) {
        dao.delete(PRODUCT);
    }

    @Override
    public PRODUCT findone(long PRODUCTID) {
        return dao.findById(PRODUCTID).get();
    }

    @Override
    public List<PRODUCT> findByCategoryId(String id) {
        return dao.findByCategoryId(id);
    }



}
