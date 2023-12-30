package com.duan.totnghiep.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.duan.totnghiep.entity.BILLDETAIL;
import com.duan.totnghiep.service.BILLDETAILSERVICE;


@CrossOrigin("*")
@RestController
@RequestMapping("/rest/orderdetail")
public class OrderDetailRestController {
	@Autowired
	BILLDETAILSERVICE billdetailService;
	
	@GetMapping("/getbybill/{billid}")
    public List<BILLDETAIL> getByBillId(@PathVariable long billid) {
		return billdetailService.getByBillID(billid);
    }
	@PostMapping()
    public void createList(@RequestBody List<BILLDETAIL> bills) {
		bills.forEach(bill -> {
	         billdetailService.create(bill);
		});
    }
	
	@GetMapping("tongsl")
	public long getsoluong() {
		return billdetailService.slspbr();
	}
	@GetMapping("tongdt")
	public double getdoanhthu() {
		return billdetailService.dtspbr();
	}
}
