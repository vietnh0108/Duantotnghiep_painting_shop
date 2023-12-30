package com.duan.totnghiep.rest.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.duan.totnghiep.entity.ROLE;
import com.duan.totnghiep.service.ROLESERVICE;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/roles")
public class RoleRestController {
    @Autowired
    ROLESERVICE dao;

    @GetMapping
    public List<ROLE> getAll(){ 
        return dao.findall();
    }
    @GetMapping("nhanvien")
    public List<ROLE> getAdmin(){
    	return dao.getAdmin();
    }
    
}
