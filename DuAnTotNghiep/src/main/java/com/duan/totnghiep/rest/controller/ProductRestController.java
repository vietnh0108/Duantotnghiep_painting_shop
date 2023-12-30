package com.duan.totnghiep.rest.controller; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.duan.totnghiep.entity.PRODUCT;
import com.duan.totnghiep.service.PRODUCTSERVICE;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/products")
public class ProductRestController {
    @Autowired
    PRODUCTSERVICE service;


    @GetMapping()
    public List<PRODUCT> getAll() {
        return service.findall();
    }

    @GetMapping("{id}")
    public PRODUCT getOne(@PathVariable("id") long id) {
        return service.findone(id);
    }
    
    @PostMapping()  
    public PRODUCT create(@RequestBody PRODUCT product) {
        return service.create(product);
    }
    @PutMapping("{id}")
    public PRODUCT update(@PathVariable("id") Integer id,@RequestBody PRODUCT product) {
        return service.create(product);
    }
    @DeleteMapping("{id}")
    public void delete(@PathVariable("id") long id) {
        service.deletebyid(id);
    }
    @GetMapping("/category/{name}")
    public List<PRODUCT> getCategory(@PathVariable("name") String name) {
    	return service.findByCategoryId(name);
    }
    
}
