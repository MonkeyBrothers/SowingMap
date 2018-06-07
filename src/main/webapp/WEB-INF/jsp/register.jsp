<%--
  Created by IntelliJ IDEA.
  User: ^_^
  Date: 2018/6/7
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 设置网页编码格式 -->
    <meta charset='utf-8'>
    <!-- 引入标准样式 -->
    <link rel="stylesheet" type="text/css" href="../css/normalize.css"/>
    <!-- 引入icon图标 -->
    <link rel="shortcut icon" href="../images/sunflower_favicon.ico"/>
    <!-- 引入基本样式 -->
    <link rel="stylesheet" type="text/css" href="../css/base.css"/>
    <title>向日葵求职网站-找工作-互联网求职报名</title>
    <meta name="keywords" content="向日葵直聘,直聘网,招聘网,人才网,找工作"/>
    <meta name="description" content="向日葵求职网站是权威领先的招聘网，开启人才网招聘求职新时代，让求职者与HR直接开聊、加快面试、即时反馈，找工作就来向日葵求职网站！"/>
    <style>
        /*清除Google文本框背景填充样式问题*/
        input:-webkit-autofill {
            -webkit-box-shadow: 0 0 0px 1000px white inset;
            border: 1px solid #CCC !important;
        }

    </style>
    <title>注册成为本网站会员</title>
</head>
<body>
<!-- 登录页面样式 -->
<div class="login-page">
    <!-- 登录框样式 -->
    <div class="sign-wrap">
        <!-- 欢迎登录字样样式 -->
        <h3 class="sign-wrap-title">注册成为会员</h3>
        <form action="/register" method="post">
            <div><input class="sign-wrap-txt" type="number" name="phone" placeholder="请输入手机号"></div>
            <div><input class="sign-wrap-txt" type="password" name="password" placeholder="请输入密码"></div>
            <div><input class="sign-wrap-txt" type="email" name="email" placeholder="请输入邮箱"></div>

            <button class="sign-wrap-btn">注册</button>
            <div class="sign-wrap-tip">已有账号？ <a href="/page/login">立刻登录</a></div>
        </form>
    </div>
</div>
</body>
</html>
