package com.duan.totnghiep.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FavoriteController {
    @RequestMapping("/favorite/list")
    public String listFavorite() {
    	return "favorite/list";
    }
}