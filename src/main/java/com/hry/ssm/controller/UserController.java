package com.hry.ssm.controller;

import com.hry.ssm.pojo.User;
import com.hry.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 用户注册功能Controller实现
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String addUser(User user) {
        // 判断注册内容是否为空
        if (user != null) {
            // MD5进行密码加密
            user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
            userService.userRegist(user);
            return "login";
        }
        // 返回错误提示界面
        return "errorMessage";
    }

    /**
     * 用户登录功能Controller实现
     * @param session
     * @return
     */
    @RequestMapping(value = "/login", method= RequestMethod.POST)
    public ModelAndView userLogin(Long phone, String password, HttpSession session, ModelAndView model) {
        User user =userService.userLogin(phone);
        //查询不到用户
        if (user == null) {
            model.addObject("message","登录名错误，请重新输入");
            model.setViewName("login");
            return model;
        }
        //用户名和密码都正确，正常登录
        if (user != null && (user.getPassword()).equals(DigestUtils.md5DigestAsHex(password.getBytes()))) {
            //将用户信息保存在session中

            session.setAttribute("user", user);

            model.setViewName("index");
            return model;
        } else {
            //用户名正确但是密码错误
            model.addObject("message","密码错误，请重新输入");
            model.setViewName("login");
        }
        return model;

    }
}
