package com.duan.totnghiep.service;

import java.util.List;

import com.duan.totnghiep.entity.ROLE;

public interface ROLESERVICE {
    List<ROLE> findall();
    ROLE create(ROLE ROLE);
    void deletebyid(String ROLEID);
    void delete(ROLE ROLE);
    ROLE findone(String ROLEID);
    List<ROLE> getAdmin();
}
