package com.duan.totnghiep.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duan.totnghiep.dao.BILLDETAILDAO;
import com.duan.totnghiep.entity.BILLDETAIL;
import com.duan.totnghiep.service.BILLDETAILSERVICE;
 


@Service
public class BILLDETAILSERVICEIMPL implements BILLDETAILSERVICE{

	@Autowired
    BILLDETAILDAO dao;
    @Override
    public List<BILLDETAIL> findall() {
        return dao.findAll();
    }
	@Override
	public BILLDETAIL create(BILLDETAIL BILLDETAIL) {
		return dao.save(BILLDETAIL);
	}
	@Override
	public void deletebyid(long BILLDETAILID) {
	}
	@Override
	public void delete(BILLDETAIL BILLDETAIL) {
		dao.delete(BILLDETAIL);
	}
	@Override
	public BILLDETAIL findone(long BILLDETAILID) {
		return null;
	}
	@Override
	public List<BILLDETAIL> getByBillID(long billid) {
		return dao.finByBillId(billid);
	}
	@Override
	public long slspbr() {
		// TODO Auto-generated method stub
		return dao.slspbr();
	}
	@Override
	public double dtspbr() {
		// TODO Auto-generated method stub
		return dao.dtspbr();
	}
	
}
