package com.duan.totnghiep.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.duan.totnghiep.entity.BILLDETAIL;

public interface BILLDETAILDAO extends JpaRepository<BILLDETAIL, Integer>{
	@Query("SELECT b FROM BILLDETAIL b WHERE b.bill.BILLID like ?1")
	List<BILLDETAIL> finByBillId(long billid);
	@Query("SELECT sum(ord.QUANTITY) FROM BILLDETAIL ord WHERE ord.bill.STATUS = 3")
	long slspbr();
	@Query("SELECT sum(ord.QUANTITY*ord.SUMPRICE) FROM BILLDETAIL ord WHERE ord.bill.STATUS = 3")
	double dtspbr();


	
}
 