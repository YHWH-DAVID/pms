package com.pmis.web.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements javax.servlet.Filter{
	private String encoding;
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		//设置编码
		 //处理硬编码,将"UTF-8"配置成初始化参数
			req.setCharacterEncoding(encoding);
			//放行
			chain.doFilter(req, res);
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		//初始化时执行编码获取
		encoding=config.getInitParameter("encoding");
	}

}
