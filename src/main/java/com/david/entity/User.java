package com.david.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 *
 * Created by zhanghewei on 2018/1/9.
 */

@Data
@Entity
@Table(name = "user", schema = "demo")
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "age")
    private Integer age;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}
