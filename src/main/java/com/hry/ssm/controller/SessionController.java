package com.hry.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class SessionController {
    /**
     * 销毁session 方法
     */
    @RequestMapping("/invalidate")
    public String invalidateSession(HttpSession session) {
        session.invalidate();
        return "index";
    }
}
