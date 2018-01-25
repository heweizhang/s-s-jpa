package com.david.controller;

import com.david.entity.Account;
import com.david.service.AccountService;
import com.david.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/account")
public class AccountController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @GetMapping("/login")
    public ModelAndView index(ModelAndView modelAndView) {
        modelAndView.setViewName("account/login");
        return modelAndView;
    }


    @Autowired
    AccountService accountService;

    @PostMapping("/login")
    public ModelAndView login(@RequestParam(name = "username", defaultValue = "david") String username, String password, ModelAndView modelAndView) {
        logger.info("username={}, password={}", username, password);
        if (accountService.login(new Account(username, password))) {
            modelAndView.addObject("name", "david");
            modelAndView.addObject("age", "18");
            modelAndView.setViewName("user/info");
        } else {
            modelAndView.setViewName("account/error");
        }
        return modelAndView;
    }
}
