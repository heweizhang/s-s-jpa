package com.david.reponsitory;

import com.david.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by zhanghewei on 2018/1/10.
 */
public interface UserRepository extends JpaRepository<User, Long> {

    User findUserById(long id);


    @Query(value = "select * from User u where u.id>?1 and u.id<?2", nativeQuery = true)
    List<User> findByIdRange(long id1, long id2);

    @Query(value = "select new User (name) from user u where u.id>?1 and u.id<?2", nativeQuery = true)
    List<User> findNamesById(long id1, long id2);
}
