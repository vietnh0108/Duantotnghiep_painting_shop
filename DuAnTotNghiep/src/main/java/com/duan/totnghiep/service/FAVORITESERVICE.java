package com.duan.totnghiep.service;

import java.util.List;

import com.duan.totnghiep.entity.FAVORITE;


public interface FAVORITESERVICE {
	List<FAVORITE> findall();
    FAVORITE create(FAVORITE FAVORITE);
    void deletebyid(long FAVID);
    void delete(FAVORITE FAVORITE);
    FAVORITE findone(long FAVID);
	FAVORITE findByUserAndProduct(long productId, String username);
	List<FAVORITE> findByUsername(String username);
}
