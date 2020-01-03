package com.pmis.service;

import com.pmis.domain.User;

public interface IUserService {
	User selectByUsernameAndPassword(User u);

}
