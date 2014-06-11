package com.fas.dao;

import java.util.List;
import com.fas.modal.Users;



public interface UserDao {
	public void saveUser(Users user);
	public List<Users> getUser();
	public void deleteUser(int id);
	public Users getUser(int id);
	public void updateUser(Users user);
	public boolean authenticateUser(Users user);
}
