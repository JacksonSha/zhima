package com.stang.tang.zhima.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController extends BaseController {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(HomeController.class);

	@RequestMapping("/")
	private String getIndex(HttpServletRequest request) {
		LOGGER.info(getHostUrl(request));
		return "content/main";
	}

	@RequestMapping("/{nav}")
	private String getNavigation(HttpServletRequest request,
			@PathVariable(value="nav") String nav) {
		LOGGER.info(request.getRequestURI());
		return "content/main";
	}

	@RequestMapping("/show/{nav}")
	private String showNavigation(HttpServletRequest request,
			@PathVariable("nav") String nav) {
		LOGGER.info(request.getRequestURI());
		return "content/" + nav;
	}

}
