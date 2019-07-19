<%@ page import="Dao.DiscussDao" %>
<%@ page import="entity.Discuss" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Customer" %>
<%@ page import="entity.Employer" %>
<%@ page import="Dao.CustomerDao" %><%--
  Created by IntelliJ IDEA.
  User: WZBC
  Date: 2018/6/13
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>评论</title>
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
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/cy.css" rel="stylesheet">
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
<!-- banner -->
<%
    Customer ad1=(Customer)session.getAttribute("yhxinxi2");
    Employer ad2=(Employer)session.getAttribute("yhxinxi1");
    int ad3=0;
    if(session.getAttribute("flag")!=null){
        ad3=(int)session.getAttribute("flag");
    }
%>
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
            <%
                CustomerDao customerDao=new CustomerDao();
            %>
            <div class="header-right hy">
                <ul>
                    <span>欢迎：</span><%if (ad3==1){%><%=ad2.getEmployerId()%><a href="/TuichuServlet">退出</a> <%}%>
                    <%if (ad3==2){%><%=ad1.getCusName()%><span>余额：</span><%=customerDao.getCusRmoney(ad1.getCusPhone())%>元<a href="/TuichuServlet">退出</a><%}%>
                </ul>
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
</div>
<!-- //banner -->
<div class="about-heading">
    <div class="container">
        <h2>评论</h2>
    </div>
</div>
<!-- contact -->
<div class="contact">
    <div class="container">
        <div class="agile-contact-form">
            <div class="col-md-6 contact-form-left">
                <div class="w3layouts-contact-form-top plbg1">
                    <h3 style="color: #ffffff">小瀛洲</h3>
                </div>
                <div class="panel plbox ">
                    <ul class="list-group-item list-group-item-success">
                        <%
                            DiscussDao discussDao=new DiscussDao();
                            List<Discuss> discussesList1 =discussDao.getdis(1);
                            for (int i = 0; i <discussesList1.size() ; i++) {
                                Discuss discuss=discussesList1.get(i);
                        %>
                        <li class="list-group-item"><span><%=discuss.getCusPhone()%>：</span><span><%=discuss.getdContent()%></span> </li>
                        <%}%>
                    </ul>
                </div>
                <div class="w3layouts-contact-form-top plbg2">
                    <h3 style="color: #ffffff">湖心亭</h3>
                </div>
                <div class="panel plbox">
                    <ul class="list-group-item list-group-item-danger">
                        <%
                            List<Discuss> discussesList2 =discussDao.getdis(2);
                            for (int i = 0; i <discussesList2.size() ; i++) {
                                Discuss discuss=discussesList2.get(i);
                        %>
                        <li class="list-group-item"><span><%=discuss.getCusPhone()%>：</span><span><%=discuss.getdContent()%></span> </li>
                        <%}%>
                    </ul>
                </div>
                <div class="w3layouts-contact-form-top plbg3">
                    <h3 style="color: #ffffff">阮公墩</h3>
                </div>
                <div class="panel plbox">

                    <ul class="list-group-item list-group-item-warning">
                        <%
                            List<Discuss> discussesList3 =discussDao.getdis(3);
                            for (int i = 0; i <discussesList3.size() ; i++) {
                                Discuss discuss=discussesList3.get(i);
                        %>
                        <li class="list-group-item"><span><%=discuss.getCusPhone()%>：</span><span><%=discuss.getdContent()%></span> </li>
                        <%}%>
                    </ul>
                </div>
                <div class="w3layouts-contact-form-top plbg4">
                    <h3 style="color: #ffffff">白堤</h3>
                </div>
                <div class="panel plbox">
                    <ul class="list-group-item list-group-item-info">
                        <%
                            List<Discuss> discussesList4 =discussDao.getdis(4);
                            for (int i = 0; i <discussesList4.size() ; i++) {
                                Discuss discuss=discussesList4.get(i);
                        %>
                        <li class="list-group-item"><span><%=discuss.getCusPhone()%>：</span><span><%=discuss.getdContent()%></span> </li>
                        <%}%>
                    </ul>
                </div>
                <div class="w3layouts-contact-form-top plbg5">
                    <h3 style="color: #ffffff">苏堤</h3>
                </div>
                <div class="panel plbox">
                    <ul class="list-group-item list-group-item-danger">
                        <%
                            List<Discuss> discussesList5 =discussDao.getdis(5);
                            for (int i = 0; i <discussesList5.size() ; i++) {
                                Discuss discuss=discussesList5.get(i);
                        %>
                        <li class="list-group-item"><span><%=discuss.getCusPhone()%>：</span><span><%=discuss.getdContent()%></span> </li>
                        <%}%>
                    </ul>
                </div>
                <div class="w3layouts-contact-form-top plbg6">
                    <h3 style="color: #ffffff">杨公堤</h3>
                </div>
                <div class="panel plbox">
                    <ul class="list-group-item list-group-item-success">
                        <%
                            List<Discuss> discussesList6 =discussDao.getdis(6);
                            for (int i = 0; i <discussesList6.size() ; i++) {
                                Discuss discuss=discussesList6.get(i);
                        %>
                        <li class="list-group-item"><span><%=discuss.getCusPhone()%>：</span><span><%=discuss.getdContent()%></span> </li>
                        <%}%>
                    </ul>
                </div>

            </div>
            <div class="col-md-6 contact-form-right">
                <div class="contact-form-top">
                    <h3>评论留言</h3>
                </div>
                <div class="agileinfo-contact-form-grid">
                    <form action="DiscussServlet">
                        <input type="text" list="url_list" name="attId" placeholder="景点编号">
                        <datalist id="url_list">
                            <option value="1" label="小瀛洲"/>
                            <option value="2" label="湖心亭"/>
                            <option value="3" label="阮公墩"/>
                            <option value="4" label="白堤"/>
                            <option value="5" label="苏堤"/>
                            <option value="6" label="杨公堤"/>
                        </datalist>
                        <input type="text" name="cusPhone" placeholder="电话" >
                        <textarea name="dContent" placeholder="评论" ></textarea>
                        <input type="submit" value="提交" >
                    </form>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>

    </div>
</div>
<!-- //contact -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <center>
            <div class="w3-agile-footer-grid">
                <div class="footer">
                    <p>版权所有 © 2008-2017 中国售票中心 中国售票科学研究院</p>
                    <p>浙ICP备123456789号-3&nbsp;&nbsp;|&nbsp;&nbsp;浙ICP证123456789号</p>
                </div>
            </div>
        </center>
    </div>
</div>
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
