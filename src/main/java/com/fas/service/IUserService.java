/**
 * 
 */
package com.fas.service;

import java.util.List;
import com.fas.modal.Users;

public interface IUserService {

	public void addUser(Users user);                      
	public List<Users> getUser();
	public void deleteUser(int id);
	public Users getUser(int id);
	public void updateUser(Users user);
	public Users authenticateUser(Users user);
}
