package com.bridgelabz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bridgelabz.model.Employee786;
import com.bridgelabz.service.DAOImp;

@Controller
public class EmployeeController {

	@Autowired
	DAOImp dao;

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("myForms") Employee786 employees) {
		ModelAndView view = new ModelAndView();
		boolean found = dao.register(employees);

		if (found) {
			view.setViewName("index.jsp");
			return view;
		} else {
			view.setViewName("register.jsp");
			view.addObject("error", "Mail or Phone Number already Exsists.......");
			return view;
		}

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(Employee786 employees) {
		String name = dao.login(employees);
		ModelAndView view = new ModelAndView();
		if (name != null) {
			view.addObject("name", name);
			view.setViewName("display.jsp");
			return view;
		} else {
			view.addObject("error", "phone number or mail id not Exists.......");
			view.setViewName("index.jsp");
			return view;
		}
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView view = new ModelAndView();
		session.invalidate();
		view.setViewName("index.jsp");
		return view;
	}
}
