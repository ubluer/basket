package com.xyu.web.basketball.actiioin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("basket")
public class BasketController {
	@RequestMapping({"index",""})
	public String index() {
		return "basket/basket-index";
	}
}
