package com.david.reponsitory;

import com.david.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * Created by zhanghewei on 2018/1/10.
 */
public interface UserRepository extends JpaRepository<User,Integer>{
    public User findUserById(long id);
}
