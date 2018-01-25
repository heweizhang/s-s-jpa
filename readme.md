### Spring+SpringMVC+Spring Data JPA

- #### Hibernate Validator 集成
    - pom.xml   
    ```
        <!--参数校验-->
        <dependency>
            <groupId>org.hibernate</groupId>
            <artifactId>hibernate-validator</artifactId>
            <version>6.0.4.Final</version>
        </dependency>
        <dependency>
            <groupId>javax.el</groupId>
            <artifactId>javax.el-api</artifactId>
            <version>3.0.0</version>
        </dependency>
        <dependency>
            <groupId>org.glassfish.web</groupId>
            <artifactId>javax.el</artifactId>
            <version>2.2.4</version>
        </dependency>

            
    ```
    - spring.xml
    ```
        <mvc:annotation-driven validator="validator"/>
        <!--    bean级别的校验 方法中的参数bean必须添加@Valid注解，后面紧跟着BindingResult result参数-->
        <bean id="validator"
              class="org.springframework.validation.beanvalidation.LocalValidatorFactoryBean">
            <property name="providerClass" value="org.hibernate.validator.HibernateValidator"/>
        </bean>
        <!--    方法级别的校验  要校验的方法所在类必须添加@Validated注解-->
        <bean class="org.springframework.validation.beanvalidation.MethodValidationPostProcessor">
            <!-- 可以引用自己的 validator 配置，在本文中（下面）可以找到 validator 的参考配置，如果不指定则系统使用默认的 -->
            <property name="validator" ref="validator"/>
        </bean>
    ```
    - bean 使用
    ```
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
    ```
    - Controller 使用
    ```
      /**
         * 实体类参数校验
         */
        @PostMapping("/bean")
        @ResponseBody
        public Result beanValidate(@Valid ParamValiate paramValiate, BindingResult bindingResult) {
            if (bindingResult.hasErrors()) {
                return Result.error(bindingResult.getFieldErrors().get(0).getDefaultMessage().toString());
            }
            return Result.success(paramValiate);
        }
    ```    
    - 教程  
      `SpringMVC集成Hibernate Validator进行注解式的参数校验——让代码更少、更加专注于业务逻辑`:http://blog.csdn.net/nmgrd/article/details/57088192  
      `Spring MVC 通过切面，实现超灵活的注解式数据校验`:https://diamondfsd.com/article/78fa12cd-b530-4a90-b438-13d5a0c4e26c

