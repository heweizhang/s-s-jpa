package com.david.service.impl;

import com.david.entity.User;
import com.david.reponsitory.UserRepository;
import com.david.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

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
    public List<User> findUserByIdRange(int id1, int id2) {
        return userRepository.findByIdRange(id1, id2);
    }

    @Override
    public void addUser(User user) {
        userRepository.save(user);
    }

    @Override
    public List<User> findUsersByPage(int page, int size) {
        Sort sort = new Sort(Sort.Direction.DESC, "id");//id倒序
        Pageable pageable = new PageRequest(page, size, sort);
        return userRepository.findAll(pageable).getContent();
    }

}
