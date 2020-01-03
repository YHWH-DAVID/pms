package com.pmis.service.impl;

import com.pmis.dao.IUserDAO;
import com.pmis.dao.impl.UserDAOImpl;
import com.pmis.domain.User;
import com.pmis.service.IUserService;

public class UserServiceImpl implements IUserService{
	private IUserDAO dao=new UserDAOImpl();
	@Override
	public User selectByUsernameAndPassword(User u) {
		
		return dao.selectByUsernameAndPassword(u);
	}

}
