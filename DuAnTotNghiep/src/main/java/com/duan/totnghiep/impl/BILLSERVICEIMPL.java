package com.duan.totnghiep.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duan.totnghiep.dao.BILLDAO;
import com.duan.totnghiep.entity.BILL;
import com.duan.totnghiep.service.BILLSERVICE;

import java.util.Date;
import java.util.List;

@Service
public class BILLSERVICEIMPL implements BILLSERVICE {
    @Autowired
    BILLDAO dao;
    @Override
    public List<BILL> findall() {
        return dao.findAll();
    }

    @Override
    public BILL create(BILL BILL) {
        return dao.save(BILL);
    }

    @Override
    public void deletebyid(long BILLID) {
        dao.deleteById(BILLID);
    }


    @Override
    public void delete(BILL BILL) {
        dao.delete(BILL);
    }

    @Override
    public BILL findone(long BILLID) {
        return dao.findById(BILLID).get();
    }

    


	@Override
	public List<BILL> findByUser(String username) {
		return dao.findByUser(username);
	}

	@Override
	public int UpdateSl(int status, long BILLID) {
		// TODO Auto-generated method stub
		return dao.UpdateSl(status, BILLID);
	}

	@Override
	public int Updatepre(int status, Date billdate, long BILLID) {
		// TODO Auto-generated method stub
		return dao.Updatepre(status, billdate, BILLID);
	}


	@Override
	public List<BILL> findStatus(int status) {
		// TODO Auto-generated method stub
		return dao.findStatus(status);
	}



}
