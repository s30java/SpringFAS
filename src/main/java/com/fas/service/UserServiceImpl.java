package com.fas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.fas.dao.UserDao;
import com.fas.modal.Users;



@Component
@Service
@Transactional
public class UserServiceImpl implements IUserService {

	@Autowired
	UserDao userDao;
	
	public void addUser(Users user) {
		
		userDao.saveUser(user);
	}

	public List<Users> getUser() {

		List<Users> getusers=userDao.getUser();                                     
		return getusers;
	}


	public void deleteUser(int id) {
		userDao.deleteUser(id);
		
	}


	public Users getUser(int id) {
		Users userModel=userDao.getUser(id);
		return userModel;
	}


	public void updateUser(Users user) {
		userDao.updateUser(user);
		
	}


	public Users authenticateUser(Users user) {
		
		Users userBo =userDao.authenticateUser(user);
		
		return userBo;
	}

}
