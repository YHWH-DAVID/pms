package com.pmis.web.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.pmis.domain.User;
import com.pmis.service.IUserService;
import com.pmis.service.impl.UserServiceImpl;

public class DefaultUserListener implements ServletContextListener{
	private IUserService service=new UserServiceImpl();
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		User u=service.selectByUsername("admin");
		if(u==null){
			User newUser=new User();
			newUser.setUsername("admin");
			newUser.setPassword("123456");
			service.save(newUser);
		}
	}

}
