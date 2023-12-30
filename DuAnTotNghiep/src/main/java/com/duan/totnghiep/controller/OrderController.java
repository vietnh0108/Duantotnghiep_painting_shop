package com.duan.totnghiep.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.duan.totnghiep.service.BILLSERVICE;

@Controller
public class OrderController {
	@Autowired
    BILLSERVICE service;
	
	@RequestMapping("/order/purchase")
    private String index() { 
        return "order/purchase.html"; 
    }
	@RequestMapping("/order/list")
    private String orderlist() {   
        return "order/listorder.html";
    }
}
