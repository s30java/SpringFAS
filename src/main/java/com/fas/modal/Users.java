package com.fas.modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name="user")
public class Users {
	
    @Transient
    private boolean isValidUser;
	
	/**
	 * @return the isValidUser
	 */
	public boolean isValidUser() {
		return isValidUser;
	}
	/**
	 * @param isValidUser the isValidUser to set
	 */
	public void setValidUser(boolean isValidUser) {
		this.isValidUser = isValidUser;
	}
	@Id   
    @GeneratedValue  
    @Column(name = "user_id")                       
	 private int id; 
	
	@Column(name="username")
	private String username;
	
	@Column(name="password")
	private String password;
	
	 @Column(name="first_name")
	private String firstname;
	 
	 @Column(name="last_name")
    private String lastname;
	 
    @Column(name="email")
    private String email;
    
    @Column(name="usertype")
    private String usertype;

    @Transient
    private String rePassword;
    /**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	
	
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the firstname
	 */
	public String getFirstname() {
		return firstname;
	}
	/**
	 * @param firstname the firstname to set
	 */
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	/**
	 * @return the lastname
	 */
	public String getLastname() {
		return lastname;
	}
	/**
	 * @param lastname the lastname to set
	 */
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the usertype
	 */
	public String getUsertype() {
		return usertype;
	}
	/**
	 * @param usertype the usertype to set
	 */
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	/**
	 * @return the repassword
	 */
	public String getRepassword() {
		return rePassword;
	}
	/**
	 * @param repassword the repassword to set
	 */
	public void setRepassword(String repassword) {
		this.rePassword = repassword;
	}
	
}
