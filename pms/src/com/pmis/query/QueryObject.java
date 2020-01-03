package com.pmis.query;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QueryObject {
	//用户传入的数据
	private int currentPage = 1;//当前页,默认为1
	private int pageSize = 5;//页面大小,默认为每页5条

	public int getStart() {//每页的开始索引
		return (currentPage - 1) * pageSize;
	}

}
