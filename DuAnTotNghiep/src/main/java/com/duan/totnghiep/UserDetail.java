package com.duan.totnghiep;

import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.stereotype.Service;

import com.duan.totnghiep.entity.ACCOUNT;
import com.duan.totnghiep.entity.ROLE;
import com.duan.totnghiep.entity.ROLEACC;
import com.duan.totnghiep.service.ACCOUNTSERVICE;
import com.duan.totnghiep.service.ROLEACCSERVICE;
import com.duan.totnghiep.service.ROLESERVICE;



@Service
public class UserDetail  implements UserDetailsService {
	@Autowired
	BCryptPasswordEncoder pe;
	@Autowired
	ACCOUNTSERVICE service;
	@Autowired
	ROLEACCSERVICE accservice;
	@Autowired
	ROLESERVICE roleservice;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		try { 
			ACCOUNT acc = service.findone(username);
			String password = acc.getPASSWORD();
			String[] roles = acc.getRoleaccs().stream().map(au -> au.getRole().getROLEID())
					.collect(Collectors.toList()).toArray(new String[0]);
			return User.withUsername(username).password(password).roles(roles).build();
		}catch(Exception e) {
			
			System.out.println(e);
			throw new UsernameNotFoundException(username+" Not found");
		}
	
	}
	 


}
