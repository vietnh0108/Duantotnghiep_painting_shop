package com.duan.totnghiep.rest.controller;

import com.duan.totnghiep.entity.CART;
import com.duan.totnghiep.service.CARTSERVICE;
import com.fasterxml.jackson.databind.JsonNode;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/cart")
public class CartRestController {
    @Autowired
    CARTSERVICE service;  
    @GetMapping("/getbyuser/{username}")
    public List<CART> getCartsByUsername(@PathVariable String username) {
        return service.findByUsername(username); 
    }       
    @PostMapping("/list")
    public void createOrUpdateList(@RequestBody List<CART> Carts) {
    	Carts.forEach(cart -> {
    		service.create(cart); 
    	}); 
    }  
    @DeleteMapping("/{cartId}")
    public void deleteCart(@PathVariable int cartId) {
    	service.deletebyid(cartId);
    } 
    @DeleteMapping("delbyuser/{username}")
    public void deleteByUser(@PathVariable String username) {
    	service.deleteByUser(username);
    } 
    @PostMapping()
    public void create(@RequestBody CART Carts) {
    	service.create(Carts);
    } 
} 
 