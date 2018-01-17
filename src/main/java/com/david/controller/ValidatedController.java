package com.david.controller;

import com.david.entity.ParamValiate;
import com.david.model.Result;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;

/**
 * Created by zhanghewei on 2018/1/16.
 */
@Controller
@RequestMapping("/validate")
public class ValidatedController {

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

}
