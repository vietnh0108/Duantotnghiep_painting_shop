package com.duan.totnghiep.entity;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "CATEGORY")
 
public class CATEGORY {
    @Id
    private String CATEID;
    private String CATENAME;
    @JsonIgnore
    @OneToMany(mappedBy = "categories")
    private List<PRODUCT> products;
}
