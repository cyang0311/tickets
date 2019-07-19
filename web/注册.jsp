<%@ page import="entity.Employer" %>
<%@ page import="entity.Customer" %><%--
  Created by IntelliJ IDEA.
  User: WZBC
  Date: 2018/6/12
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- bootstrap-css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--// bootstrap-css -->
    <!-- css -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!--// css -->
    <link rel="stylesheet" href="css/lightbox.css">
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="css/cy.css" />
    <!-- //font-awesome icons -->
    <!-- font -->
    <!--<link href="http://fonts.googleapis.com/css?family=Playball&amp;subset=latin-ext" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>-->
    <!-- //font -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <![endif]-->
</head>

<body>
<%
    Customer ad1=(Customer)session.getAttribute("yhxinxi2");
    Employer ad2=(Employer)session.getAttribute("yhxinxi1");
    int ad3=0;
    if(session.getAttribute("flag")!=null){
        ad3=(int)session.getAttribute("flag");
    }
%>
<!-- banner -->
<div class="banner about-banner">
    <div class="header">
        <div class="container">
            <div class="header-left">
                <div class="w3layouts-logo">
                    <h1>
                        <a href="首页.jsp">西湖 <span><sup>Life</sup></span></a>
                    </h1>
                </div>
            </div>
            <div class="header-right">
                <div class="agileinfo-social-grids">
                    <ul>
                        <li>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-rss"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-vk"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="top-nav">
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li>
                                <a class="list-border" href="首页.jsp">首页</a>
                            </li>
                            <li>
                                <a href="我的.jsp">我的</a>
                            </li>
                            <li class="">
                                <a href="购票页面.jsp">购票预览</a>
                            </li>
                            <li class="">
                                <a href="我的.jsp" class="dropdown-toggle hvr-bounce-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">登录<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <%
                                        if (ad3==1||ad3==2){%>
                                    <li>
                                        <a class="hvr-bounce-to-bottom" href="注册.jsp" >注册</a>
                                    </li>
                                    <%}else {%>
                                    <li>
                                        <a class="hvr-bounce-to-bottom" href="游客登录.jsp">游客登录</a>
                                    </li>
                                    <li>
                                        <a class="hvr-bounce-to-bottom" href="管理员登录.jsp">管理员登录</a>
                                    </li>
                                    <li>
                                        <a class="hvr-bounce-to-bottom" href="注册.jsp" >注册</a>
                                    </li>
                                    <%}%>
                                </ul>
                            </li>
                            <li>
                                <a href="购票.jsp">购票</a>
                            </li>
                            <li>
                                <a class="list-border1" href="评论.jsp">评论</a>
                            </li>
                        </ul>
                        <div class="clearfix"> </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- //banner -->
<div class="about-heading">
    <div class="container">
        <h2>游客注册</h2>
    </div>
</div>
<!-- gallery -->
<div class="gallery">
    <div class="container">
        <!--<div class="gallery-grids">-->
        <div class="dlbox">
            <div class="dlshuru">
                <form action="SetcusServlet">
                    <table>
                        <caption><div id="message"></div></caption>
                        <tr class="dltext">
                            <td>姓名:</td>
                            <td><input class="form-control" onblur="chkvalue1(this)" id="username" placeholder="帐号" rows="1" name="cusName"></input></td>
                            <!--<td><input type="text" name="EmployerId" width="200px" ></td>-->
                        </tr>
                        <tr class="dltext">
                            <%--验证手机号的真假--%>
                            <td>手机号:</td>
                            <td><input class="form-control" onblur="chkvalue2(this)" id="userphone" placeholder="帐号" rows="1" name="cusPhone"></input></td>
                            <!--<td><input type="text" name="EmployerId" width="200px" ></td>-->
                        </tr>
                        <tr class="dltext">
                            <td>密码:</td>
                            <td><input type="password" onblur="chkvalue3(this)" id="password" class="form-control" placeholder="密码" rows="1" name="cusPwd"></input></td>
                            <!--<td><input type="text" name="Pwd" width="200px" "></td>-->
                        </tr>
                        <tr class="dltext">
                            <td>再次输入:</td>
                            <td><input type="password" onblur="chkvalue4(this)" id="repassword" class="form-control" placeholder="密码" rows="1" name="recusPwd"></input></td>
                            <!--<td><input type="text" name="Pwd" width="200px" "></td>-->
                        <tr>
                            <td class="dlbutton"><input type="submit" value="注册" id="submit"></td>
                        </tr>

                    </table>
                </form>
            </div>
        </div>

        <!--</div>-->
    </div>
</div>
<!-- //gallery -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <center>
            <div class="w3-agile-footer-grid">
                <div class="footer" >
                    <p>版权所有 © 2008-2017 中国售票中心 中国售票科学研究院</p>
                    <p>浙ICP备123456789号-3&nbsp;&nbsp;|&nbsp;&nbsp;浙ICP证123456789号</p>
                </div>
            </div>
        </center>
    </div>
</div>

<script src="js/lightbox-plus-jquery.min.js">
</script>
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //here ends scrolling icon -->
</body>

</html>
<%--用于注册的提示信息--%>
<script>
    function chkvalue1(txt) {
        if(txt.value==""){
            $("#message").text("姓名不能为空");
        }
        else {
            $("#message").text("");
        }
    }
    function chkvalue2(txt) {
        var phone = $("#userphone").val();
        if(phone.length!=11){
            $("#message").text("手机号必需为11位");
        }
        else {
            $("#message").text("");
        }
    }
    function chkvalue3(txt) {
        var passwd = $("#password").val();
        if(passwd.length<6){
            $("#message").text("密码长度必须大于等于6位");
        }
        else {
            $("#message").text("");
        }
    }
    function chkvalue4(txt) {
        var passwd = $("#password").val();
        var repasswd=$("#repassword").val();
        if(passwd!=repasswd){
            $("#message").text("两次密码不同");
        }
        else {
            $("#message").text("");
        }
    }
</script>
<script>
    $("#submit").click(function() {
        var username = $("#username").val();
        var userphone = $("#userphone").val();
        var passwd = $("#password").val();
        var passwd1 = $("#password1").val();
        if(username.length == 0 || passwd.length == 0||passwd1.length == 0||userphone.length==0) {
            $("#message").text("密码或用户名不能为空");
        }
        else if(passwd.length < 6) {
            $("#message").text("密码不能小于6位");
        } else {
            $("#message").text("Staff Login");
        }
    })
    $("#username").keypress(function(e){
        if(e.which==13){
            $("#password").focus();
        }
    })
    $("#password").keypress(function(e){
        if(e.which==13){
            $("#submit").click();
        }
    })
</script>
