package com.duan.totnghiep.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duan.totnghiep.dao.CATEGORYDAO;
import com.duan.totnghiep.entity.CATEGORY;
import com.duan.totnghiep.service.CATEGORYSERVICE;

import java.util.List;

@Service
public class CATEGORYSERVICEIMPL implements CATEGORYSERVICE {
    @Autowired
    CATEGORYDAO dao;
    @Override
    public List<CATEGORY> findall() {
        return dao.findAll();
    }

    @Override
    public CATEGORY create(CATEGORY CATEGORY) {
        return dao.save(CATEGORY);
    }

    @Override
    public void deletebyid(String CATEID) {
        dao.deleteById(CATEID);
    }


    @Override
    public void delete(CATEGORY CATEGORY) {
        dao.delete(CATEGORY);
    }

    @Override
    public CATEGORY findone(String CATEID) {
        return dao.findById(CATEID).get();
    }

	@Override
	public long slcate() {
		// TODO Auto-generated method stub
		return dao.slcate();
	}


}
