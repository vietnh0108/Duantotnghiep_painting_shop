package com.duan.totnghiep.service;

import java.util.List;
import com.duan.totnghiep.entity.PRODUCT;

public interface PRODUCTSERVICE {
	List<PRODUCT> findall();

	PRODUCT create(PRODUCT PRODUCT);

	void deletebyid(long PRODUCTID);

	void delete(PRODUCT PRODUCT);

	PRODUCT findone(long PRODUCTID);

	List<PRODUCT> findByCategoryId(String id);

}
