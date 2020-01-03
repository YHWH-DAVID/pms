package com.pmis.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pmis.dao.IProductDAO;
import com.pmis.domain.Product;
import com.pmis.query.QueryObject;
import com.pmis.util.MybatisUtil;

public class ProductDAOImpl implements IProductDAO{

	@Override
	public void save(Product p) {
		SqlSession s=MybatisUtil.getSession();
		s.insert("com.pmis.mapper.ProductMapper.save",p);
		s.commit();
		s.close();
		
	}

	@Override
	public void delete(Long id) {
		SqlSession s=MybatisUtil.getSession();
		s.delete("com.pmis.mapper.ProductMapper.delete",id);
		s.commit();
		s.close();
	}

	@Override
	public void update(Product p) {
		SqlSession s=MybatisUtil.getSession();
		s.update("com.pmis.mapper.ProductMapper.update",p);
		s.commit();
		s.close();
		
	}

	@Override
	public Product get(Long id) {
		SqlSession s=MybatisUtil.getSession();
		Product p = s.selectOne("com.pmis.mapper.ProductMapper.get",id);
		s.close();
		return p;
	}

	@Override
	public List<Product> listAll() {
		return null;
	}

	@Override
	public List<?> queryForList(QueryObject qo) {
		SqlSession s=MybatisUtil.getSession();
		List<Object> list = s.selectList("com.pmis.mapper.ProductMapper.queryForList",qo);
		s.close();
		return list;
	}

	@Override
	public int queryForCount(QueryObject qo) {
		SqlSession s=MybatisUtil.getSession();
		int count = s.selectOne("com.pmis.mapper.ProductMapper.queryForCount",qo);
		s.close();
		return count;
	}

}
