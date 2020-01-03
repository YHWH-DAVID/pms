package com.pmis.dao;

import com.pmis.domain.User;

public interface IUserDAO {
	User selectByUsernameAndPassword(User u);
}
