package com.duan.totnghiep.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.duan.totnghiep.entity.ROLE;

public interface ROLEDAO extends JpaRepository<ROLE,String> {
	 @Query("Select DISTINCT ar FROM ROLE ar Where ar.ROLEID IN ('STAF')")
	 List<ROLE> getAdmin();
}
