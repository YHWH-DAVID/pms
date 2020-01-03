package com.pmis.web.filter;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckLoginFilter implements Filter {
	private List<String> unCheckedURIs;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// response对象是 ServletResponse类型,在下方需要调用重定向方法只有
		// HttpServletResponse有,所以需要强转
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		// 在浏览器向服务器发送请求来时拦截请求,对请求进行处理
		// 验证是否登录-->如果登录了会将用户登录信息存入session
		// req.getSession().setAttribute("USER_IN_SESSION", u);

		// 访问login.jsp时不用验证,如果不判断会出现死循环
		// 请求-->login.jsp--->currentUser为空--->重定向--->login.jsp
		// 获取请求URI
		String requestURI = req.getRequestURI();
		// 如果访问的资是login.jsp或者是/login-->直接放行
		// login.jsp,/login 写死属于硬编码,将不需要检查的资源添加到配置文件中init-param 中
		if (!unCheckedURIs.contains(requestURI)) {
			//去除session中的数据
			Object currentUser = req.getSession().getAttribute("USER_IN_SESSION");
			//判断是否为空,为空表示没有登录
			if (currentUser == null) {
				res.sendRedirect("/login.jsp");
				return;
			}

		}
		chain.doFilter(req, res);

	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		String initParameter = config.getInitParameter("unCheckedURIs");
		String[] split = initParameter.split(",");
		unCheckedURIs = Arrays.asList(split);

	}

}
