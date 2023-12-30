package com.duan.totnghiep.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.text.NumberFormat;
import java.util.Locale;

import com.duan.totnghiep.entity.FAVORITE;
import com.duan.totnghiep.entity.PRODUCT;
import com.duan.totnghiep.service.ACCOUNTSERVICE;
import com.duan.totnghiep.service.FAVORITESERVICE;
import com.duan.totnghiep.service.PRODUCTSERVICE;


import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ProductController {
	@Autowired
    PRODUCTSERVICE prservice;
    @Autowired
    ACCOUNTSERVICE accservice;
    @Autowired
    FAVORITESERVICE fvservice;
    @RequestMapping("/product/list")
    private String list(Model model,@RequestParam("cid") Optional<String> cid) {
        if(cid.isPresent()) {
            List<PRODUCT> list = prservice.findByCategoryId(cid.get());
            model.addAttribute("items",list);
        }else { 
            List<PRODUCT> list = prservice.findall();
            for(PRODUCT pr : list) {
            	 System.out.print(pr.getPRODUCTNAME());
            }
           
            model.addAttribute("items",list);
        }
  
        return "/product/product";
    }

    @RequestMapping("/product/detail/{id}")
    private String findid(Model model,@PathVariable("id") long id, HttpServletRequest request) {
        PRODUCT item = prservice.findone(id);
        Locale locale = new Locale("vi", "VN"); // Vùng Việt Nam
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(locale);
        String username = request.getRemoteUser();
        String formattedPrice = currencyFormat.format(item.getPRICE());

//        model.addAttribute("isLike", isLike(id, username));
//        model.addAttribute("listComment", getByProduct(id));
        model.addAttribute("item",item);
        model.addAttribute("formattedPrice", formattedPrice);
        return "product/product-detail.html";
    }
    
//    private List<COMMENT> getByProduct(long productId){
//    	return cmtservice.getByProductId(productId);
//    }
//    
    private Boolean isLike(long productId, String username) {
		Optional<FAVORITE> f = Optional.ofNullable(fvservice.findByUserAndProduct(productId, username));
		if(f.isPresent()) {
			return true;
		}
		return false;
	}
}
