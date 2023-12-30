package com.duan.totnghiep.rest.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import com.duan.totnghiep.entity.ACCOUNT;
import com.duan.totnghiep.entity.ROLE;
import com.duan.totnghiep.entity.ROLEACC;
import com.duan.totnghiep.service.ACCOUNTSERVICE;
import com.duan.totnghiep.service.ROLEACCSERVICE;
import com.duan.totnghiep.service.ROLESERVICE;

import java.util.List;
import java.util.Optional;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/accounts")
public class AccountRestController {
	@Autowired
	ACCOUNTSERVICE dao;
	@Autowired
	ROLEACCSERVICE roledao;
	@Autowired
	ROLESERVICE rdao;
	@GetMapping
	public List<ACCOUNT> getAll(@RequestParam("admin") Optional<Boolean> admin) {
		if (admin.orElse(true)) {
			return dao.getAdministrators();
		}
		return dao.findall();
	}

	@GetMapping("/admin")
	public List<ACCOUNT> getAdmin(@RequestParam("admin") Optional<Boolean> admin) {
		return dao.getAdministrators();
	}

	@GetMapping("getone") 
	public ACCOUNT getOne() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			return dao.findone(auth.getName());
		} else {
			return null;
		}
	}

	@PostMapping()
	public ACCOUNT create(@RequestBody ACCOUNT ACCOUNT) {
		return dao.create(ACCOUNT);
	}
	@PostMapping("dangky")
	public ACCOUNT dangky(@RequestBody ACCOUNT ACCOUNT) {
		dao.create(ACCOUNT);
		ROLE role = rdao.findone("CUST");
		ROLEACC roleacc = new ROLEACC();
		roleacc.setAccount(ACCOUNT);
		roleacc.setRole(role);
		roledao.create(roleacc);
		return ACCOUNT;
	}
	@DeleteMapping("{username}")
	public void detele(@PathVariable("username") String username) {
		dao.deletebyid(username);
	}

	@PutMapping("{username}")
	public ACCOUNT update(@PathVariable("username") String username, @RequestBody ACCOUNT ACCOUNT) {
		return dao.create(ACCOUNT);
	}

	@GetMapping("soluong")
	public long getsoluong() {
		return dao.sluser();
	}

	@PutMapping("changepassword")
	public void updatepass(@RequestParam String email, @RequestParam String pass) {
		dao.UpdatePW(pass, email);
	}
	@PostMapping("nhanvien")
	public ACCOUNT nhanvien(@RequestBody ACCOUNT ACCOUNT) {
		dao.create(ACCOUNT);
		ROLE role = rdao.findone("STAF");
		ROLEACC roleacc = new ROLEACC();
		roleacc.setAccount(ACCOUNT);
		roleacc.setRole(role);
		roledao.create(roleacc);
		return ACCOUNT;
	}

}
