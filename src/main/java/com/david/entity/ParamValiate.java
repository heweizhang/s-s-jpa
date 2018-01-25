package com.david.entity;

import lombok.Data;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import java.io.Serializable;


/**
 *
 * Created by zhanghewei on 2018/1/16.
 */
@Data
@Entity
public class ParamValiate implements Serializable {
    @Id
    private Long id;

    @NotBlank(message = "名字不能为空")
    private String name;

    @Min(18)
    private Integer age;

    @Pattern(regexp = "^1(3|4|5|7|8)\\d{9}$",message = "手机号码格式不正确")
    @NotBlank(message = "手机号码不能为空")
    private String pone;

    @Email(message = "邮箱格式错误")
    private String email;

}
