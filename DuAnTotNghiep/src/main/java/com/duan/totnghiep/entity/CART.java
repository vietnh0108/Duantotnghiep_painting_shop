package com.duan.totnghiep.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.*;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Data
@Table(name = "CART")
public class CART {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long CARTID;
    private int QUANTITY;
    private int SUMPRICE;
  
    @JoinColumn(name = "USERNAME")
    @ManyToOne
    private ACCOUNT account;
    @JoinColumn(name = "PRODUCTID")
    @ManyToOne
    private PRODUCT product;
}
