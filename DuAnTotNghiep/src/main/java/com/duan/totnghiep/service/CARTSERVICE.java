package com.duan.totnghiep.service;
import com.duan.totnghiep.entity.CART;

import java.util.List;

public interface CARTSERVICE {
    List<CART> findall();
    CART create(CART CART);
    void deletebyid(long CARTID);
    void delete(CART CART);
    CART findone(long CARTID);
	List<CART> findByUsername(String username);
	void deleteByUser(String username);
}
