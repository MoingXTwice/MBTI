package com.mbti.board.service;

import com.mbti.board.dao.BoardDAO;
import com.mbti.main.controller.Service;

public class BoardDeleteService implements Service{

	private BoardDAO dao;
	
	@Override
	public Object service(Object obj) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete((Long) obj);
	}

	@Override
	public void setDAO(Object dao) {
		// TODO Auto-generated method stub
		this.dao = (BoardDAO) dao;
	}
	

}
