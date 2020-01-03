package com.pmis.service;

import com.pmis.domain.Product;
import com.pmis.query.PageResult;
import com.pmis.query.QueryObject;

public interface IProductService {
	void save(Product p);

	void delete(Long id);

	void update(Product p);

	Product get(Long id);

	PageResult queryForList(QueryObject qo);

	int queryForCount(QueryObject qo);
}
