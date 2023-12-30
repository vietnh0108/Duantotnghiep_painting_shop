package com.duan.totnghiep.service;

import java.util.List;

import com.duan.totnghiep.entity.ROLEACC;

public interface ROLEACCSERVICE {
    List<ROLEACC> findall();
    ROLEACC create(ROLEACC ROLEACC);
    void deletebyid(long ROLEACCID);
    void delete(ROLEACC ROLEACC);
    ROLEACC findone(long ROLEACCID);
    List<ROLEACC> Authorityof();
}
