package com.david.service;

import com.david.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 *
 * Created by zhanghewei on 2018/1/9.
 */

public interface UserService {

    /**
     * 获取所有用户信息
     * @return
     */
    List<User> getUserInfo();


    /**
     * 通过id查询用户信息
     */
    User findUserById(int id);

    /**
     * 条件查询，通过id范围来查询
     */
    List<User> findUserByIdRange(int id1,int id2);

    /**
     * 插入一条数据
     * @param user
     * @return
     */
    void addUser(User user);

    List<User> findUsersByPage(int page, int size);
}
