<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <!-- 设置网页编码格式 -->
    <meta charset='utf-8'>
    <!-- 引入标准样式 -->
    <link rel="stylesheet" type="text/css" href="../css/normalize.css"/>
    <!-- 引入icon图标 -->
    <link rel="shortcut icon" href="../images/sunflower_favicon.ico"/>
    <!-- 引入基本样式 -->
    <link rel="stylesheet" type="text/css" href="../css/base.css"/>
</head>
<style>
    /*清除Google文本框背景填充样式问题*/
    input:-webkit-autofill {
        -webkit-box-shadow: 0 0 0px 1000px white inset;
        border: 1px solid #CCC !important;
    }

</style>
<body>
<!-- 登录页面样式 -->
<div class="login-page">
    <!-- 登录框样式 -->
    <div class="sign-wrap">
        <!-- 欢迎登录字样样式 -->
        <h3 class="sign-wrap-title">欢迎登录</h3>
        <form action="/login" method="post">
            <div><input class="sign-wrap-txt" type="number" name="phone" placeholder="请输入账号"></div>
            <div><input class="sign-wrap-txt" type="password" name="password" placeholder="请输入密码"></div>
            <div style="margin:0 auto;margin-top: 20px;width: 324px;height: 40px;color: red;">${message}</div>

            <button class="sign-wrap-btn">登录</button>
            <div class="sign-wrap-tip">没有账号？ <a href="/page/register">立刻注册</a></div>
        </form>
    </div>
</div>
</body>
</html>