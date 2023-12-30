package com.duan.totnghiep.service;

import java.util.List;

import com.duan.totnghiep.entity.BILLDETAIL;


public interface BILLDETAILSERVICE {
	List<BILLDETAIL> findall();
    BILLDETAIL create(BILLDETAIL BILLDETAIL);
    void deletebyid(long BILLDETAILID);
    void delete(BILLDETAIL BILLDETAIL);
    BILLDETAIL findone(long BILLDETAILID);
	List<BILLDETAIL> getByBillID(long billid);
	long slspbr();
	double dtspbr();

}
