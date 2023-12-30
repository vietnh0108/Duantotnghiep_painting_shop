package com.duan.totnghiep.rest.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.duan.totnghiep.entity.ROLEACC;
import com.duan.totnghiep.service.ROLEACCSERVICE;

import java.util.List;
import java.util.Optional;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/authorities")
public class RoleIDRestController {
    @Autowired
    ROLEACCSERVICE service;
    @PostMapping
    public ROLEACC post(@RequestBody ROLEACC auth) {
        return service.create(auth);
    }
    @DeleteMapping("{id}")
    public void delete(@PathVariable("id") Integer id) {
        service.deletebyid(id);
    }
    @GetMapping
    public List<ROLEACC> getAll(@RequestParam("admin") Optional<Boolean> admin){
        if(admin.orElse(false)) { 
            return service.Authorityof();
        }
        return service.findall();
    }
    

    

  
}
