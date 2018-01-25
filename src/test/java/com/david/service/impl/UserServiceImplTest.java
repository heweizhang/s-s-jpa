package com.david.service.impl;


import base.BaseUnitTest;
import com.david.controller.UserController;
import com.david.entity.User;
import com.david.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by zhanghewei on 2018/1/9.
 */

public class UserServiceImplTest extends BaseUnitTest {

    @Autowired
    private UserService userService;

    @Test
    public void getUserInfo() throws Exception {
        userService.getUserInfo();
    }

    @Test
    public void addUser(){
        User user = new User();
        user.setName("jack");
        user.setAge(18);
        userService.addUser(user);
    }

    @Test
    public void findById(){
        System.out.print(userService.findUserById(2));
    }

    @Test
    public void testLoger(){
         final Logger logger = LoggerFactory.getLogger(UserServiceImplTest.class);

        logger.debug(" This is debug!!!");
        logger.info(" This is info!!!");
        logger.warn(" This is warn!!!");
        logger.error(" This is error!!!");
    }
    @Test
    public void addUser2(){
        User user = new User();
        user.setName("jack");
        user.setAge(189);
        userService.addUser2(user);
    }

}