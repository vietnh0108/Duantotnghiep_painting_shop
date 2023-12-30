package com.duan.totnghiep.rest.controller; 


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import com.duan.totnghiep.entity.ACCOUNT;
import com.duan.totnghiep.service.ACCOUNTSERVICE;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/users")
public class UserRestController {
    @Autowired
    ACCOUNTSERVICE service;


    @GetMapping()
    public List<ACCOUNT> getAll() {
        return service.getUser();
    }

    @GetMapping("{id}")
    public ACCOUNT getOne(@PathVariable("id") String id) {
        return service.findone(id);
    }

    @PostMapping()  
    public ACCOUNT create(@RequestBody ACCOUNT ACCOUNT) {
        return service.create(ACCOUNT);
    }
    @PutMapping("{id}")
    public ACCOUNT update(@PathVariable("id") String id,@RequestBody ACCOUNT ACCOUNT) {
        return service.create(ACCOUNT);
    }
    @DeleteMapping("{id}")
    public void delete(@PathVariable("id") String id) {
        service.deletebyid(id);
    }
}
