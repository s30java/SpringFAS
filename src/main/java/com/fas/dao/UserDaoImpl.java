/**
 * 
 */
package com.fas.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fas.modal.Users;




/**
 * @author swaybhase
 *
 */
@Repository("UserDao")
public class UserDaoImpl implements UserDao {             


	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void saveUser(Users user) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		
	}


	@Transactional
	public List<Users> getUser() {
		@SuppressWarnings("unchecked")
		List<Users> user=sessionFactory.getCurrentSession().createCriteria(Users.class).list();
		return user;
	}


	@Transactional
	public void deleteUser(int id) {
		Users userModel=getUser(id);
		
		if(userModel!=null)
			sessionFactory.getCurrentSession().delete(userModel);
		
	}

	@Transactional
	public Users getUser(int id) {
		Users userModel=(Users)sessionFactory.getCurrentSession().get(Users.class,id);
		System.out.println("in actual implementation for class been defined..............CAME HER IN AGAIN VERSION@");
		return userModel;
	}


	@Transactional
	public void updateUser(Users user) {
		
		Users userModel=new Users();
		userModel.setId(user.getId()); 
		userModel.setFirstname(user.getFirstname());
		userModel.setLastname(user.getLastname());
		userModel.setEmail(user.getEmail());
		userModel.setTelephone(user.getTelephone());
		sessionFactory.getCurrentSession().update(userModel);
		
	}
	@Transactional
	public Users authenticateUser(Users user) {
		boolean validUser;
		
		
		Query query=sessionFactory.getCurrentSession().createQuery("from Users where username='"+user.getUsername()+"' and password='"+user.getPassword()+"'");
	if(query.uniqueResult()!=null){
		validUser=true;
		List<?> userList=query.list();
		
		
		if(!userList.isEmpty()){
			user=(Users) userList.get(0);
			
			System.out.println("get user data "+user.getFirstname());
		}
	}else
		validUser=false;
		
	
	user.setIsValidUser(validUser);
	
		return user;
	}




}
