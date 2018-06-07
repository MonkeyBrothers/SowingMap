<%--
  Created by IntelliJ IDEA.
  User: ^_^
  Date: 2018/6/7
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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

    <script src="../js/jquery-3.3.1.js"></script>
    <style>
        #lunbobox {
            margin-right: 0;
            width: 895px;
            height: 367px;
            position: relative;
        }

        .lunbo {
            width: 500px;
            height: 300px;
        }

        .lunbo img {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0px;
            left: 0px;
        }

        #lunbobox ul {
            width: 285px;
            position: absolute;
            bottom: 10px;
            left: 44%;
            z-index: 3;
        }

        #lunbobox ul li {
            border-radius: 50%;
            cursor: pointer;
            width: 14px;
            height: 14px;
            border: 1px solid #cccccc;
            float: left;
            list-style: none;
            background: #cccccc;
            text-align: center;
            margin: 0px 5px 0px 0px;
        }

        #toleft {
            display: none;
            width: 30px;
            height: 100px;
            font-size: 40px;
            line-height: 100px;
            text-align: center;
            color: #f4f4f4;
            /*background:#cccccc;
            */
            background-color: red;
            /*background:url("../images/toleft.jpg")no-repeat center;
            */
            position: absolute;
            top: 110px;
            left: 12px;
            cursor: pointer;
            z-index: 99;
            opacity: 0.4;
        }

        #toright {
            display: none;
            width: 30px;
            height: 100px;
            font-size: 40px;
            line-height: 100px;
            text-align: center;
            color: #f4f4f4;
            /*background:#cccccc;
            */
            position: absolute;
            top: 120px;
            right: 4px;
            cursor: pointer;
            z-index: 99;
            opacity: 0.4;
        }
    </style>
</head>
<body>
<!-- 顶部导航栏部分 -->
<div class="tbar">

    <c:if test="${ not empty user }">
        <a href="/invalidate">退出</a>
        <a>欢迎 ${user.phone} </a>

    </c:if>
    <%--如果为空就不显示--%>
    <c:if test="${empty user }">
        <a href="/page/enterprise">进入企业版</a>
        <a href="/page/login">登录</a>
        <a href="/page/register">注册</a>
    </c:if>
</div>
<!-- 头部导航栏部分 -->
<div class="mr_nva">
    <div class="mr_logo"><img src="../images/sunflower.jpg" alt="求职报名系统"></div>
    <div class="mr_nva_city">
        <ul>
            <li>全国站</li>
            <li>[选择城市]</li>
        </ul>
    </div>
    <div class="mr_nva_wrap">
        <ul>
            <li><a href="index.html">首页</a></li>
            <li><a href="#">校园</a></li>
            <li><a href="#">公司</a></li>
            <li><a href="#">言职</a></li>
        </ul>
    </div>
</div>
<!-- 搜索框部分 -->
<div class="mr_search">
    <div class="searchBox">
        <form action="#" method="post">
            <input type="text" placeholder="搜索职位"/>
            <input type="button" value="搜索"/>
        </form>
    </div>
    <div class="hotSearch">
        <dl>
            <dt>热门搜索：</dt>
            <dd><a href="#">UI设计师</a></dd>
            <dd><a href="job.html">Java</a></dd>
            <dd><a href="#">网络推广</a></dd>
            <dd><a href="#">PHP</a></dd>
            <dd><a href="#">产品经理</a></dd>
        </dl>
    </div>
</div>
<!-- 导航栏部分 -->
<div class="mr_slider">
    <!-- 左侧导航栏 -->
    <div class="slider_l">
        <ul>
            <li><a href="#">前端开发<span>></span></a></li>
            <li><a href="#">产品开发<span>></span></a></li>
            <li><a href="#">设计开发<span>></span></a></li>
            <li><a href="#">运维<span>></span></a></li>
            <li><a href="#">市场与销售<span>></span></a></li>
            <li><a href="#">职能<span>></span></a></li>
            <li><a href="#">金融开发<span>></span></a></li>
        </ul>
    </div>
    <!-- 图片滚动 -->
    <div class="slider_searchImg">

        <div class="middle_right">
            <div id="lunbobox">
                <div id="toleft">
                    &lt;
                </div>
                <div class="lunbo">
                    <a href="#"><img src="http://192.168.52.128/images/2018/06/07/1528339526297450.png"></a>


                </div>
                <div id="toright">&gt;</div>
                <ul>
                    <li></li>

                </ul>
                <span></span>
            </div>
        </div>

    </div>
</div>


</div>
</div>
<!-- 主心块 -->
<div class="mr_container">
    <div class="index_banner">
        <ul>
            <li class="">热门职位</li>
        </ul>
    </div>
    <!-- 卡片 -->
    <div class="con_job_hot">
        <ul>
            <li>
                <!-- 招聘标题 -->
                <div class="job_title">
                    <h5><a href="">中级Java工程师</a></h5>
                    <span class="j_time">[三天前发布]</span>
                    <img class="j_t_img" src="../images/liaotian.png" alt="">
                    <span class="j_salary">5K-10K</span>
                </div>
                <!-- 公司招聘要求 -->
                <div class="yaoqiu">
                    <span class="y_year">经验5-10年</span>
                    <span class="y_xueli">/大专</span>

                </div>
                <!-- 公司标签 -->
                <div class="biaoqian">
                    <span>公司环境好</span>
                    <span>有假期</span>
                    <span>女生多</span>
                </div>
                <!-- 公司简介 -->
                <div class="j_jianjie">
                    <div class="jianjie_img">
                        <img src="../images/daxue.png" alt="">

                    </div>
                    <div>
                        <p class="j_name"><span>商丘学院</span></p>
                        <p class="j_xinxi">
                            <span>名牌大学/软件最牛逼/XX</span>
                        </p>
                    </div>
                </div>
            </li>
        </ul>

    </div>
    <!-- 底部显示 -->
    <div class="footer-container">
        <div class="footer-container-fuwu">
            <a href="">关与我们</a>
            <a href="">帮助中心</a>
            <a href="">意见反馈</a>
            <a href="">服务热线</a>
            <a href="">加入我们</a>
            <a href="">进入后台</a>
        </div>
    </div>
    <div class="footer-container-footer">
        <p>求职网 | 蜀ICP备13010980号-1 | 联系我们：xxxxxxx.com</p>
        <p>中国领先的实习生招聘平台</p>
        <p>川公网安备 51019002001179号</p>
    </div>
</div>
</div>
<script>
    ///轮播
    $(function () {
        //$("#toright").hide();
        //$("#toleft").hide();
        $('#toright').hover(function () {
            $("#toleft").hide()
        }, function () {
            $("#toleft").show()
        })
        $('#toleft').hover(function () {
            $("#toright").hide()
        }, function () {
            $("#toright").show()
        })
    })

    var t;
    var index = 0;
    /////自动播放
    t = setInterval(play, 3000)

    function play() {
        index++;
        if (index > 2) {
            index = 0
        }
        // console.log(index)
        $("#lunbobox ul li").eq(index).css({
            "background": "#999",
            "border": "1px solid #ffffff"
        }).siblings().css({
            "background": "#cccccc",
            "border": ""
        })

        $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000);
    };

    ///点击鼠标 图片切换
    $("#lunbobox ul li").click(function () {

        //添加 移除样式
        //$(this).addClass("lito").siblings().removeClass("lito"); //给当前鼠标移动到的li增加样式 且其余兄弟元素移除样式   可以在样式中 用hover 来对li 实现
        $(this).css({
            "background": "#999",
            "border": "1px solid #ffffff"
        }).siblings().css({
            "background": "#cccccc"
        })
        var index = $(this).index(); //获取索引 图片索引与按钮的索引是一一对应的
        // console.log(index);

        $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）
    });

    /////////////上一张、下一张切换
    $("#toleft").click(function () {
        index--;
        if (index <= 0) //判断index<0的情况为：开始点击#toright  index=0时  再点击 #toleft 为负数了 会出错
        {
            index = 2
        }
        console.log(index);
        $("#lunbobox ul li").eq(index).css({
            "background": "#999",
            "border": "1px solid #ffffff"
        }).siblings().css({
            "background": "#cccccc"
        })

        $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）必须要写
    }); // $("#imgbox a ")获取到的是一个数组集合 。所以可以用index来控制切换

    $("#toright").click(function () {
        index++;
        if (index > 2) {
            index = 0
        }
        console.log(index);
        $(this).css({
            "opacity": "0.5"
        })
        $("#lunbobox ul li").eq(index).css({
            "background": "#999",
            "border": "1px solid #ffffff"
        }).siblings().css({
            "background": "#cccccc"
        })
        $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）
    });
    $("#toleft,#toright").hover(function () {
            $(this).css({
                "color": "black"
            })
        },
        function () {
            $(this).css({
                "opacity": "0.3",
                "color": ""
            })
        })
    ///

    ///////鼠标移进  移出
    $("#lunbobox ul li,.lunbo a img,#toright,#toleft ").hover(
        ////////鼠标移进
        function () {
            $('#toright,#toleft').show()
            clearInterval(t);

        },
        ///////鼠标移开
        function () {
            //$('#toright,#toleft').hide()
            //alert('aaa')
            t = setInterval(play, 3000)

            function play() {
                index++;
                if (index > 4) {
                    index = 0
                }
                $("#lunbobox ul li").eq(index).css({
                    "background": "#999",
                    "border": "1px solid #ffffff"
                }).siblings().css({
                    "background": "#cccccc"
                })
                $(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000);
            }
        })
</script>
</body>


</html>

