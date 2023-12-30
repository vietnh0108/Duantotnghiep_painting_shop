package com.duan.totnghiep.impl;
import com.duan.totnghiep.dao.BILLDAO;
import com.duan.totnghiep.dao.CARTDAO;
import com.duan.totnghiep.entity.CART;
import com.duan.totnghiep.service.CARTSERVICE;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CARTSERVICEIMPL implements CARTSERVICE {
    @Autowired
    CARTDAO dao;
    @Autowired
    BILLDAO bdao;
    @Override
    public List<CART> findall() {
        return dao.findAll();
    }

    @Override
    public CART create(CART CART) {
        return dao.save(CART);
    }

    @Override
    public void deletebyid(long CARTID) {
        dao.deleteById(CARTID);
    }


    @Override
    public void delete(CART CART) {
        dao.delete(CART);
    }

    @Override
    public CART findone(long CARTID) {
        return dao.findById(CARTID).get();
    }

	@Override
	public List<CART> findByUsername(String username) {
		return dao.findByUsername(username);
	}

	@Override
	public void deleteByUser(String username) {
		dao.deleteByUser(username);
	}

}
