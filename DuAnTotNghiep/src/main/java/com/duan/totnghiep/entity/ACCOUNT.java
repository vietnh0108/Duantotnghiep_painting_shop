package com.duan.totnghiep.entity;



import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

import org.springframework.lang.Nullable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "ACCOUNT")
public class ACCOUNT {
	@Id
	private String USERNAME;
    private String PASSWORD;
    private String PHONE;
    private boolean GENDER;
    private String PHOTO;
    private String FULLNAME;
    private String EMAIL;
    
    @JsonIgnore
    @OneToMany(mappedBy = "account", fetch = FetchType.EAGER)
    private List<ROLEACC> roleaccs;
    @JsonIgnore
    @OneToMany(mappedBy = "account")
    private List<CART> carts;
    @JsonIgnore
    @OneToMany(mappedBy = "account")
    private List<FAVORITE> favorites;
	
}
