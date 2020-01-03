package com.pmis.domain;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private Long id;
	private String productName;
	private Long dirId;
	private BigDecimal salePrice;
	private String supplier;
	private String brand;
	private BigDecimal cutoff;
	private BigDecimal costPrice;

}
