package com.pmis.service.impl;

import java.util.List;

import com.pmis.dao.IProductDAO;
import com.pmis.dao.impl.ProductDAOImpl;
import com.pmis.domain.Product;
import com.pmis.query.PageResult;
import com.pmis.query.QueryObject;
import com.pmis.service.IProductService;

public class ProductServiceImpl implements IProductService {
	IProductDAO dao = new ProductDAOImpl();

	@Override
	public void save(Product p) {
		dao.save(p);
	}

	@Override
	public void delete(Long id) {
		dao.delete(id);
	}

	@Override
	public void update(Product p) {
		dao.update(p);
	}

	@Override
	public Product get(Long id) {
		return dao.get(id);
	}

	@Override
	public int queryForCount(QueryObject qo) {
		return dao.queryForCount(qo);
	}
	@Override
	public PageResult queryForList(QueryObject qo) {
		int count = dao.queryForCount(qo);
		if(count==0){
			return PageResult.empty(qo.getPageSize());
		}
		List<?> list = dao.queryForList(qo);
		return new PageResult(count,list,qo.getCurrentPage(),qo.getPageSize());
	}

}
