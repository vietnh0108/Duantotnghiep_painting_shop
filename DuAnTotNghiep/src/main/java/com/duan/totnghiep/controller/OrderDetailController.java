package com.duan.totnghiep.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.text.NumberFormat;
import java.util.Locale;

import com.duan.totnghiep.entity.BILLDETAIL;
import com.duan.totnghiep.entity.FAVORITE;
import com.duan.totnghiep.entity.PRODUCT;
import com.duan.totnghiep.service.ACCOUNTSERVICE;
import com.duan.totnghiep.service.BILLDETAILSERVICE;
import com.duan.totnghiep.service.FAVORITESERVICE;
import com.duan.totnghiep.service.PRODUCTSERVICE;


import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

@Controller
public class OrderDetailController {

	@Autowired
	BILLDETAILSERVICE billdetailService;
    @RequestMapping("/billdetail/{id}")
    private String findid(Model model,@PathVariable("id") long id, HttpServletRequest request) {
        List<BILLDETAIL> billdetail = billdetailService.getByBillID(id);      
        model.addAttribute("billdetail",billdetail);
        
        return "order/orderdetail.html";
    }
    
}
