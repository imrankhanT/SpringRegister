package com.bridgelabz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bridgelabz.DAO.DAOTask;
import com.bridgelabz.model.Employee786;

@Service
public class DAOImp {

	@Autowired
	DAOTask dao;

	@Transactional
	public boolean register(Employee786 employees) {
		boolean found = dao.register(employees);
		return found;
	}

	@Transactional
	public String login(Employee786 employees) {
		String name = dao.login(employees);
		return name;
	}
}
