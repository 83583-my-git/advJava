package com.sunbeam.beans;

import com.sunbeam.daos.UserDao;
import com.sunbeam.daos.UserDaoImpl;

public class UpdateStatus {
	private int id;
	private boolean status;
	
	public UpdateStatus() {
		// TODO Auto-generated constructor stub
	}

	
	
	
	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public boolean isStatus() {
		return status;
	}




	public void setStatus(boolean status) {
		this.status = status;
	}




	public void updateStatus() {
		try(UserDao userDao = new UserDaoImpl()){
			userDao.updateStatus(id, true);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	 

}
