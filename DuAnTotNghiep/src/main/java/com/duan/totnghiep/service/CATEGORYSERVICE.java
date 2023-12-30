package com.duan.totnghiep.service;

import java.util.List;

import com.duan.totnghiep.entity.CATEGORY;

public interface CATEGORYSERVICE {
    List<CATEGORY> findall();
    CATEGORY create(CATEGORY CATEGORY);
    void deletebyid(String CATEID);
    void delete(CATEGORY CATEGORY);
    CATEGORY findone(String CATEID);
    long slcate();
}
