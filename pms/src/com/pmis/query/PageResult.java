package com.pmis.query;

import java.util.Collections;
import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class PageResult {
	
	private int currentPage;//当前页
	private int pageSize;//页面大小
	private int totalCount;//总数
	private List<?> result;//查询结果集
	private int prevPage;//上一页
	private int nextPage;//下一页
	private int totalPage;//下一页
	//构造方法 
	public PageResult(int totalCount, List<?> result, int currentPage, int pageSize) {
		this.totalCount = totalCount;
		this.result = result;
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		//需要计算
		totalPage = totalCount % pageSize == 0 ? totalCount / pageSize : totalCount / pageSize + 1;
		prevPage = currentPage - 1 > 1 ? currentPage - 1 : 1;
		nextPage = currentPage + 1 < totalPage ? currentPage + 1 : totalPage;

	}
	//返回空集
	public static PageResult empty(int pageSize) {

		return new PageResult(0, Collections.EMPTY_LIST, 1, pageSize);

	}
}
