package com.duan.totnghiep.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duan.totnghiep.service.ACCOUNTSERVICE;


@Controller
public class AccountController {
	@Autowired
	ACCOUNTSERVICE accService;
	
    @RequestMapping("/account/profile")
    public String editinfo(Model model, HttpServletRequest request) {
        return "/account/account";
    }
 

}
