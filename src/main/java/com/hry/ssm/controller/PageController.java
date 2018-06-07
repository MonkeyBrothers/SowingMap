package com.hry.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class PageController {

    /**
     * 展示首页
     */
    @RequestMapping("/page/index")
    public String showIndexPage() {
        return "index";
    }

    /**
     * 跳转到登录界面
     * @return
     */
    @RequestMapping("/page/login")
    public String loginPage() {
        return "login";
    }

    /**
     * 跳转到注册界面
     */
        @RequestMapping("/page/register")
    public String registPage() {
        return "register";
    }

    /**
     * 跳转到图片上传界面
     * @return
     */
    @RequestMapping("/upload")
    public String uploadPage() {
        return "test";
    }

    /**
     * 跳转到企业版页面
     * @return
     */
    @RequestMapping("/page/enterprise")
    public String enterprisePage() {
        return "enterprise";
    }

}
