package com.pmis.dao;

import java.util.List;

import com.pmis.domain.Product;
import com.pmis.query.QueryObject;

public interface IProductDAO {
	/**
	 * 新增商品
	 * @param p 商品
	 */
	void save(Product p);
	/**
	 * 删除商品
	 * @param id 商品 id
	 */

	void delete(Long id);
	/**
	 * 修改商品
	 * @param p 商品
	 */

	void update(Product p);
	/**
	 *  获取指定商品
	 * @param id 指定商品 id
	 * @return
	 */

	Product get(Long id);
	/**
	 *  查询所有商品
	 * @return 商品列表
	 */

	List<Product> listAll();
	/**
	 * 商品总数
	 * @param qo 用户传入的数据(当前页,页面大小)
	 * @return 总商品数
	 */

	int queryForCount(QueryObject qo);
	/**
	 *  当前页商品列表
	 * @param qo 用户传入的数据(当前页,页面大小)
	 * @return 当前页的商品列表
	 */
	
	List<?> queryForList(QueryObject qo);


}
