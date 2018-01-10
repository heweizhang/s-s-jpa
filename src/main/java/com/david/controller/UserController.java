package com.david.controller;

import com.david.entity.User;
import com.david.model.Result;
import com.david.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by zhanghewei on 2018/1/9.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @GetMapping("/index")
    @ResponseBody
    public String index() {
        return "index";
    }

    @GetMapping("/info")
    public ModelAndView info(ModelAndView modelAndView) {
        modelAndView.addObject("name", "david");
        modelAndView.addObject("age", "18");
        modelAndView.setViewName("user/info");
        return modelAndView;
    }


    @GetMapping("/users")
    @ResponseBody
    public Result getUser() {
        return Result.success(userService.getUserInfo());
    }


    @PostMapping("/add")
    @ResponseBody
    public Result addUser(@RequestParam String name,
                          @RequestParam int age) {
        logger.error("ageaaaaaa:" + age);
        try {
            User user = new User();
            user.setName(name);
            user.setAge(age);
            userService.addUser(user);
        } catch (Exception e) {
            logger.error("e:" + e.toString());
            return Result.error(e.toString());
        }
        return Result.success();
    }

    @GetMapping("/info/{id}")
    @ResponseBody
    public Result findUserById(@PathVariable int id) {
        return Result.success(userService.findUserById(id));
    }

}
