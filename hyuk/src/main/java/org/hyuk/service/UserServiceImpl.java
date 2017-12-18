package org.hyuk.service;

import javax.inject.Inject;

import org.hyuk.dto.LoginDTO;
import org.hyuk.dto.UserDTO;
import org.hyuk.mapper.UserMapper;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;
@Service
@Log
public class UserServiceImpl implements UserService {

	@Inject
	UserMapper userMapper; 
	
	@Override
	public UserDTO loing(LoginDTO dto) {
		
		return userMapper.login(dto);
	}

}
