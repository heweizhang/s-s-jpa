package com.david.service.impl;

import com.david.entity.User;
import com.david.reponsitory.UserRepository;
import com.david.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zhanghewei on 2018/1/9.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;

    public List<User> getUserInfo() {
        return userRepository.findAll();
    }

    @Override
    public User findUserById(int id) {
        return userRepository.findUserById(id);
    }


    @Override
    public void addUser(User user) {
        userRepository.save(user);
    }
}
