package com.duan.totnghiep.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;

import com.duan.totnghiep.entity.BILL;
import com.duan.totnghiep.service.BILLSERVICE;

import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/bill")
public class BillRestController {
	@Autowired
	BILLSERVICE service;
	

	@GetMapping
	public List<BILL> getAll() {
		return service.findall();
	}

	@PutMapping("{id}")
	public BILL update(@PathVariable("id") Integer id, @RequestBody BILL bill) {
		return service.create(bill);
	}

	@PutMapping("cancel/{id}")
	public int cancel(@PathVariable("id") Integer id, @RequestBody BILL bill) {
		return service.UpdateSl(bill.getSTATUS(), id);
	}

	@PutMapping("pre/{id}")
	public int per(@PathVariable("id") long id, @RequestBody BILL bill) {
		Date dt = new Date();
		return service.Updatepre(bill.getSTATUS(), dt, id);
	}

//	@GetMapping("nam")
//	public List<TIME> getYear() {
//		return service.getYear();
//	}
//
//	@GetMapping("timthang/{year}")
//	public List<TIME> getMonth(@PathVariable("year") int year) {
//		return service.getMonth(year);
//	}
	@GetMapping("status/{id}")
	public List<BILL> getStatus(@PathVariable("id") int id) {
		return service.findStatus(id);
	}
}
