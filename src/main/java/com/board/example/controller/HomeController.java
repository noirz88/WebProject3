package com.board.example.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/introduceIsland", method = RequestMethod.GET)
	public String introduceIsland(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "introduceIsland";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "login";
	}
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "join";
	}
	@RequestMapping(value = "/introduceIsland2", method = RequestMethod.GET)
	public String introduceIsland2(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "introduceIsland2";
	}
	@RequestMapping(value = "/introduceIsland3", method = RequestMethod.GET)
	public String introduceIsland3(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "introduceIsland3";
	}
	@RequestMapping(value = "/introduceIsland4", method = RequestMethod.GET)
	public String introduceIsland4(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "introduceIsland4";
	}
	@RequestMapping(value = "/introduceIsland5", method = RequestMethod.GET)
	public String introduceIsland5(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "introduceIsland5";
	}
	
	
}
