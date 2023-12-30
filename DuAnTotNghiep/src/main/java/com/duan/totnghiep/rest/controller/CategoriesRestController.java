package com.duan.totnghiep.rest.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.duan.totnghiep.entity.CATEGORY;
import com.duan.totnghiep.service.CATEGORYSERVICE;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/categories")
public class CategoriesRestController {
    @Autowired
    CATEGORYSERVICE service;
    @PostMapping()
    public CATEGORY post(@RequestBody CATEGORY Category){
        service.create(Category);
        return Category;
    }
    @DeleteMapping("{names}")
    public void delete(@PathVariable("names") String names){
        service.deletebyid(names);
    }
    @GetMapping() 
    public List<CATEGORY> getAll() {
        return service.findall();
    } 

    @GetMapping("{names}") 
    public CATEGORY getOne(@PathVariable("names") String names){
        return service.findone(names);
    }
    
    @PutMapping("{names}")
    public CATEGORY put(@PathVariable("names") String names,@RequestBody CATEGORY Category){
        service.create(Category);
        return Category;
    }

   
    @GetMapping("soluong") 
    public long getsoluong(){
        return service.slcate();
    }
}
