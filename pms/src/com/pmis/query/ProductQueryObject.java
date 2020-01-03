package com.pmis.query;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductQueryObject extends QueryObject {
	private String keyWord;//关键字
	private BigDecimal minSalePrice;//最低售价
	private BigDecimal maxSalePrice;//最高售价

}
