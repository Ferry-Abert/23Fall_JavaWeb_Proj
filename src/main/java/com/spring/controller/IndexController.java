package com.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页控制器
 */
@Controller
public class IndexController extends BaseController{


    // 首页
    @RequestMapping(value = {"/" , "index"})
    public String Index()
    {
        return "index";
    }



}
