package com.duan.totnghiep.service;

import com.duan.totnghiep.entity.BILL;


import java.util.Date;
import java.util.List;

public interface BILLSERVICE {
    List<BILL> findall();
    BILL create(BILL bill);
    void deletebyid(long BILLID);
    void delete(BILL bill);
    BILL findone(long BILLID);
	List<BILL> findByUser(String username);
	int UpdateSl(int status, long BILLID);
	int Updatepre(int status,Date billdate, long BILLID);
	List<BILL> findStatus(int status);
	
}
