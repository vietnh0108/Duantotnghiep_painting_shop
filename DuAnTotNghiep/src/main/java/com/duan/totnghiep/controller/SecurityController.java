package com.duan.totnghiep.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duan.totnghiep.service.ACCOUNTSERVICE;


@Controller
public class SecurityController {
	@Autowired
	ACCOUNTSERVICE accService;
	
    @RequestMapping("/security/login/form")
    public String loginForm(Model model) {
        model.addAttribute("message","Vui lòng đăng nhập");
        return "/login/login"; 
    }    
   
    @RequestMapping("/security/login/success")
    public String success(Model model) {
        model.addAttribute("message","Đăng nhập thành công");
        return "redirect:/";
    }

    @RequestMapping("/security/login/error")
    public String error(Model model) {
        model.addAttribute("message","Sai thông tin đăng nhập");
        return "/login/login.html";
    }

    @RequestMapping("/security/unauthoried")
    public String unau(Model model) {
        model.addAttribute("message","Không có quyền truy xuất");
        return "/login/login.html";
    }

    @RequestMapping("/security/logoff/success")
    public String logoff(Model model) { 
        model.addAttribute("message","Đăng xuất thành công");
        return "/login/login.html";
    }
    
//    @RequestMapping("/security/forget-pass")
//    public String logoff() {
//        return "/forget-pass/forget-pass.html";
//    }
    @RequestMapping("/security/register")
    public String dangky() {
        return "/register/register.html";
    }
}
