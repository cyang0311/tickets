<%@ page import="entity.Customer" %>
<%@ page import="entity.Employer" %>
<%@ page import="entity.Att" %>
<%@ page import="Dao.AttDao" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.SaleRecord" %>
<%@ page import="Dao.SaleRecordDao" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">


<head>
    <title>修改</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content=""/>
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- bootstrap-css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!--// bootstrap-css -->
    <!-- css -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
    <!--// css -->
    <link rel="stylesheet" href="css/lightbox.css">
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="css/cy.css"/>
    <!-- //font-awesome icons -->
    <!-- font -->
    <!--<link href="http://fonts.googleapis.com/css?family=Playball&amp;subset=latin-ext" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>-->
    <!-- //font -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
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

                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <%
        String Sf = null;
        Customer ad1 = (Customer) session.getAttribute("yhxinxi2");
        Employer ad2 = (Employer) session.getAttribute("yhxinxi1");
        int ad3 = (int) session.getAttribute("flag");
        if (ad3 == 1) {
            Sf = "管理员";
        } else if (ad3 == 2) {
            Sf = "游客";
        }
    %>
    <%
        AttDao attDao = new AttDao();
        List<Att> attList = attDao.getAtt();
    %>
    <div class="header-bottom">
        <div class="container">
            <div class="top-nav">
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1">
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
                                <a href="我的.jsp" class="dropdown-toggle hvr-bounce-to-bottom" data-toggle="dropdown"
                                   role="button" aria-haspopup="true" aria-expanded="false">登录<span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <%
                                        if (ad3 == 1 || ad3 == 2) {%>
                                    <li>
                                        <a class="hvr-bounce-to-bottom" href="注册.jsp">注册</a>
                                    </li>
                                    <%} else {%>
                                    <li>
                                        <a class="hvr-bounce-to-bottom" href="游客登录.jsp">游客登录</a>
                                    </li>
                                    <li>
                                        <a class="hvr-bounce-to-bottom" href="管理员登录.jsp">管理员登录</a>
                                    </li>
                                    <li>
                                        <a class="hvr-bounce-to-bottom" href="注册.jsp">注册</a>
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
                        <div class="clearfix"></div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>
<div class="gallery">
    <div class="container">
        <div class="dlbox">
            <p><span class="glyphicon glyphicon-user"></span> 我的身份：<span class="about-shenfen"><%=Sf%></span>
                <%if (ad3 == 1) {%><%=ad2.getEmployerId()%><%}%>
                <%if (ad3 == 2) {%><%=ad1.getCusName()%><%}%>
            </p>
            <%if (ad3 == 2) {%>
            <div class="col-md-12">
                <div class="panel">
                    <div class="panel-heading">我的订单：</div>
                    <%--通过票号显示修改页面信息--%>
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        SaleRecordDao saleRecordDao = new SaleRecordDao();
                        SaleRecord saleRecord = saleRecordDao.getSaleRecordById(id);
                    %>
                    <li class="list-group-item list-group-item-info">购票记录</li>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-success">
                            <form action="/UpdateTicketByCosServlet">
                                <table width="100%">
                                    <tr>
                                        <td>票号</td>
                                        <td>景点号</td>
                                        <td>游客手机号</td>
                                        <td>购票数量</td>
                                        <td>时间</td>
                                        <td>金额</td>
                                        <td>操作</td>
                                    </tr>

                                    <tr><input type="hidden" name="id" value=<%=saleRecord.getId()%>>
                                        <td><%=saleRecord.getId()%>
                                        </td>
                                        <td><input type="text" list="url_list" name="attId"
                                                   value=<%=saleRecord.getAttId()%>>
                                            <datalist id="url_list">
                                                <option value="1" label="小瀛洲"/>
                                                <option value="2" label="湖心亭"/>
                                                <option value="3" label="阮公墩"/>
                                                <option value="4" label="白堤"/>
                                                <option value="5" label="苏堤"/>
                                                <option value="6" label="杨公堤"/>
                                            </datalist>
                                        </td>
                                        <td><%=saleRecord.getCusPhone()%>
                                        </td>
                                        <td><input type="number" min="1" name="bNumber"
                                                   value=<%=saleRecord.getbNumber()%>>
                                        </td>
                                        </td>
                                        <td><%=saleRecord.getbDate()%>
                                        </td>
                                        <td><%=saleRecord.getmCost()%>
                                        </td>
                                        <td>
                                            <input type="reset" value="重置">
                                            <input type="submit" value="修改">
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </li>

                    </ul>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</div>
<!-- //gallery -->
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

<!-- //copyright -->
<script src="js/lightbox-plus-jquery.min.js">
</script>
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function () {
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
