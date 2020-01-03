package com.pmis.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pmis.domain.User;
import com.pmis.service.IUserService;
import com.pmis.service.impl.UserServiceImpl;

@WebServlet(name = "login", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private IUserService service = new UserServiceImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String remenber = req.getParameter("remenberMe");
		User user = new User(username, password);
		User u = service.selectByUsernameAndPassword(user);
		if (u == null) {
			req.setAttribute("errormsg", "用户名或者密码错误!");
			req.getRequestDispatcher("login.jsp").forward(req, res);

		} else {
			if (remenber != null) {
				Cookie usernameCookie = new Cookie("username", username);
				Cookie passwordCookie = new Cookie("password", password);
				usernameCookie.setMaxAge(60 * 60 * 24 * 7);
				passwordCookie.setMaxAge(60 * 60 * 24 * 7);
				res.addCookie(usernameCookie);
				res.addCookie(passwordCookie);
			}
			req.getSession().setAttribute("USER_IN_SESSION", u);
			res.sendRedirect("/product");

		}
	}

}
