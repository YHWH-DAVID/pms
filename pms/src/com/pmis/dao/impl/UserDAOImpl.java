package com.pmis.dao.impl;

import org.apache.ibatis.session.SqlSession;

import com.pmis.dao.IUserDAO;
import com.pmis.domain.User;
import com.pmis.util.MybatisUtil;

public class UserDAOImpl implements IUserDAO{

	@Override
	public User selectByUsernameAndPassword(User u) {
		SqlSession s=MybatisUtil.getSession();
		User user = s.selectOne("com.pmis.mapper.UserMapper.get",u);
		s.close();
		return user;
	}

}
