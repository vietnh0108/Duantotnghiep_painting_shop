package com.duan.totnghiep.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duan.totnghiep.dao.ROLEDAO;
import com.duan.totnghiep.entity.ROLE;
import com.duan.totnghiep.service.ROLESERVICE;

import java.util.List;

@Service
public class ROLESERVICEIMPL implements ROLESERVICE {
    @Autowired
    ROLEDAO dao;
    @Override
    public List<ROLE> findall() {
        return dao.findAll();
    }

    @Override
    public ROLE create(ROLE ROLE) {
        return dao.save(ROLE);
    }

    @Override
    public void deletebyid(String ROLEID) {
        dao.deleteById(ROLEID);
    }

    @Override
    public void delete(ROLE ROLE) {
        dao.delete(ROLE);
    }

    @Override
    public ROLE findone(String ROLEID) {
        return dao.findById(ROLEID).get();
    }

	@Override
	public List<ROLE> getAdmin() {
		// TODO Auto-generated method stub
		return dao.getAdmin();
	}


}
