package com.duan.totnghiep.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping({"/"})
    public String home() {
        return "home/index";  
    }    
    @RequestMapping({"/admin","/admin/home/index"})
    public String admin(Model model) {
        return "redirect:/admin/index.html";
    } 
}
