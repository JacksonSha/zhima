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

	@RequestMapping("")
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

	@RequestMapping("/blog/page/{page}")
	private String getBlogPage(HttpServletRequest request,
			@PathVariable(value = "page") Integer page) {
		LOGGER.info(request.getRequestURI());
		return "content/main";
	}

	@RequestMapping("/blog/article/{aid}")
	private String getBlogArticle(HttpServletRequest request,
			@PathVariable(value = "aid") String aid) {
		LOGGER.info(request.getRequestURI());
		return "content/main";
	}

	@RequestMapping("/admin/{nav}")
	private String getAdmin(HttpServletRequest request,
			@PathVariable(value="nav") String nav) {
		LOGGER.info(request.getRequestURI());
		return "content/main";
	}

	@RequestMapping("/show/admin/{nav}")
	private String showAdmin(HttpServletRequest request,
			@PathVariable("nav") String nav) {
		LOGGER.info(request.getRequestURI());
		return "content/" + nav;
	}

}
