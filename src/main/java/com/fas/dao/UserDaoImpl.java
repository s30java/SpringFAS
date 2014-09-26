/**
 * 
 */
package com.fas.dao;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.exception.ConstraintViolationException;
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
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(user);
		} catch (ConstraintViolationException conVioex) {
			
			
			if (conVioex.getErrorCode() == 1062) {
				
			} else if (conVioex.getErrorCode() == 1064) {
				
			}
		}catch(Exception ex){
			// TODO Auto-generated catch block
		ex.printStackTrace();
		}
		
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
		
		return userModel;
	}


	@Transactional
	public void updateUser(Users user) {
		
		Users userModel=new Users();
		userModel.setId(user.getId()); 
		userModel.setFirstname(user.getFirstname());
		userModel.setLastname(user.getLastname());
		userModel.setEmail(user.getEmail());
		
		sessionFactory.getCurrentSession().update(userModel);
		
	}
	@Transactional
	public Users authenticateUser(Users user) {
		boolean validUser;
		
		
		Query query=sessionFactory.getCurrentSession().createQuery("from Users where username=?  and password=?");
		/*
		 * is interpreted as a named parameter! So here we actually have to write it as

	    .setParameter("1", 9L)
		 * 
		 */
		query.setParameter(0, user.getUsername());
		query.setParameter(1, user.getPassword());
		
	if(query.uniqueResult()!=null){
		validUser=true;
		List<?> userList=query.list();
		
		
		if(!userList.isEmpty()){
			user=(Users) userList.get(0);
			
			System.out.println("get user data "+user.getFirstname());
		}
	}else
		validUser=false;
		
	
	user.setValidUser(validUser);
	
		return user;
	}




}
