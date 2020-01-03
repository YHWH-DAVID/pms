package com.pmis.test;

import java.math.BigDecimal;
import java.util.List;

import org.junit.Test;

import com.pmis.dao.IProductDAO;
import com.pmis.dao.impl.ProductDAOImpl;
import com.pmis.domain.Product;
import com.pmis.query.QueryObject;

public class ProductDAOImplTest {
	private IProductDAO dao=new ProductDAOImpl();
	@Test
	public void testSave() {
		Product p=new Product(null,"chanpin",2L,new BigDecimal(25),"北京","冒牌",new BigDecimal(0.78),new BigDecimal(15));
		dao.save(p);
	}

	@Test
	public void testDelete() {
		dao.delete(5L);
	}

	@Test
	public void testUpdate() {
		Product p=new Product(6L,"chanpin",2L,new BigDecimal(25),"北京","冒牌",new BigDecimal(0.78),new BigDecimal(15));
		dao.update(p);
	}

	@Test
	public void testGet() {
		System.out.println(dao.get(6L));
	}

	@Test
	public void testListAll() {
	}

	@Test
	public void testQueryForList() {
		QueryObject qo=new QueryObject();
		qo.setCurrentPage(2);
		List<?> list = dao.queryForList(qo);
		for (Object object : list) {
			System.out.println(object);
		}
		
	}

	@Test
	public void testQueryForCount() {
		QueryObject qo=new QueryObject();
		int count = dao.queryForCount(qo);
		System.out.println(count);
	}

}
