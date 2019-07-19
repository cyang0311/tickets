<%@ page import="Dao.AttDao" %>
<%@ page import="entity.Att" %>
<%@ page import="java.util.List" %>
<%@ page import="com.sun.org.apache.xml.internal.utils.AttList" %>
<%@ page import="entity.Customer" %>
<%@ page import="entity.Employer" %>
<%@ page import="Dao.CustomerDao" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>购票预览</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--// bootstrap-css -->
    <!-- css -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!--// css -->
    <link rel="stylesheet" href="css/lightbox.css">
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
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
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
                        <a href="首页.jsp">西湖<span><sup>Life</sup></span></a>
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
<!-- //banner -->
<div class="about-heading">
    <div class="container">
        <h2>西湖</h2>
    </div>
</div>
<!-- gallery -->
<div class="gallery">
    <div class="container">
        <div class="gallery-grids">
            <div class="col-md-4 gallery-grid">
                <div class="grid">
                    <figure class="effect-roxy">
                        <a class="example-image-link" href="images/g6.jpg" data-lightbox="example-set" data-title="">
                            <img src="images/g6.jpg" alt="" />
                            <figcaption>
                                <h3>小瀛洲 <br> <span>三潭印月</span></h3>
                                <p> 三潭印月景区在外西湖西南部水域，包括小瀛洲及其南侧三座葫芦状石塔，以赏月和水上园林著称。全岛面积约7公顷，水面占60%。</p>
                            </figcaption>
                        </a>
                    </figure>
                    <%
                        AttDao attDao = new AttDao();
                        List<Att> attList =attDao.getAtt(1);
                        for (int i = 0; i <attList.size() ; i++) {
                            Att att=attList.get(i);

                    %>
                    <a href="购票.jsp"><button class="btn1">票价:  <span><%=att.getTkPrice()%></span>&nbsp;&nbsp;&nbsp;&nbsp;热度：<span><%=att.getrD()%></span></button></a>
                    <%}%>

                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="grid">
                    <figure class="effect-roxy">
                        <a class="example-image-link" href="images/g1.jpg" data-lightbox="example-set" data-title="">
                            <img src="images/g1.jpg" alt="" />
                            <figcaption>
                                <h3>湖心亭<br><span>风月无边</span></h3>
                                <p>湖心亭在外西湖中心。“亭在全湖中心，旧有湖心寺，寺外三塔，明孝宗时，寺与塔俱毁。”湖心寺外三塔，其中塔、南 塔并废，乃即北塔基建亭，名湖心亭。复于旧寺基重建德生堂，以放生之所。</p>
                            </figcaption>
                        </a>
                    </figure>
                    <%
                        List<Att> attList2 =attDao.getAtt(2);
                        for (int i = 0; i <attList2.size() ; i++) {
                            Att att=attList2.get(i);
                    %>
                    <a href="购票.jsp"><button class="btn1">票价:  <span><%=att.getTkPrice()%></span>&nbsp;&nbsp;&nbsp;&nbsp;热度：<span><%=att.getrD()%></span></button></a>
                    <%}%>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="grid">
                    <figure class="effect-roxy">
                        <a class="example-image-link" href="images/g2.jpg" data-lightbox="example-set" data-title="">
                            <img src="images/g2.jpg" alt="" />
                            <figcaption>
                                <h3>阮公墩 <br><span>生态岛</span></h3>
                                <p>公墩在外西湖中，位于湖心亭西。清嘉庆五年（1800年），浙江巡抚阮元疏浚西湖时以所挖葑泥堆叠成岛，俗称“阮滩”。</p>
                            </figcaption>
                        </a>
                    </figure>
                    <%
                        List<Att> attList3 =attDao.getAtt(3);
                        for (int i = 0; i <attList3.size() ; i++) {
                            Att att=attList3.get(i);
                    %>
                    <a href="购票.jsp"><button class="btn1">票价:  <span><%=att.getTkPrice()%></span>&nbsp;&nbsp;&nbsp;&nbsp;热度：<span><%=att.getrD()%></span></button></a>
                    <%}%>

                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="grid">
                    <figure class="effect-roxy">
                        <a class="example-image-link" href="images/g3.jpg" data-lightbox="example-set" data-title="">
                            <img src="images/g3.jpg" alt="" />
                            <figcaption>


                                <h3>白堤 <br><span>白沙堤、沙堤</span></h3>
                                <p>古时白堤以白沙铺地，后改为柏油路面，两侧广种碧桃翠柳，是欣赏西湖全景和周边诸山的最佳观赏点。</p>
                            </figcaption>

                        </a>
                    </figure>
                    <%
                        List<Att> attList4 =attDao.getAtt(4);
                        for (int i = 0; i <attList4.size() ; i++) {
                            Att att=attList4.get(i);
                    %>
                    <a href="购票.jsp"><button class="btn1">票价:  <span><%=att.getTkPrice()%></span>&nbsp;&nbsp;&nbsp;&nbsp;热度：<span><%=att.getrD()%></span></button></a>

                    <%}%>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="grid">
                    <figure class="effect-roxy">
                        <a class="example-image-link" href="images/g4.jpg" data-lightbox="example-set" data-title="">
                            <img src="images/g4.jpg" alt="" />
                            <figcaption>
                                <h3>苏堤 <br></h3>
                                <p>苏堤旧称苏公堤，南起南屏山麓南山路，北至岳王庙东，横贯湖中，堤长2797米，宽30—40米。苏堤上共有六座石拱桥，从南往北分别为：映波、锁澜、望山、压堤、东浦（据考证，疑为“束浦”之讹）、 跨虹。</p>
                            </figcaption>

                        </a>
                    </figure>
                    <%
                        List<Att> attList5 =attDao.getAtt(5);
                        for (int i = 0; i <attList5.size() ; i++) {
                            Att att=attList5.get(i);
                    %>
                    <a href="购票.jsp"><button class="btn1">票价:  <span><%=att.getTkPrice()%></span>&nbsp;&nbsp;&nbsp;&nbsp;热度：<span><%=att.getrD()%></span></button></a>
                    <%}%>
                </div>
            </div>
            <div class="col-md-4 gallery-grid">
                <div class="grid">
                    <figure class="effect-roxy">
                        <a class="example-image-link" href="images/g5.jpg" data-lightbox="example-set" data-title="">
                            <img src="images/g5.jpg" alt="" />
                            <figcaption>
                                <h3>杨公堤 <br><span>西山路</span></h3>
                                <p>其走向基本平行于苏堤，从栖霞岭西侧起，绕丁家山直至南山的长堤。主要景致有曲园风荷、郭庄、刘庄、杭州花圃、金沙港、浴鹄湾、三台梦迹、乌龟潭、茅家埠等</p>
                            </figcaption>

                        </a>
                    </figure>
                    <%
                        List<Att> attList6 =attDao.getAtt(6);
                        for (int i = 0; i <attList6.size() ; i++) {
                            Att att=attList6.get(i);
                    %>
                    <a href="购票.jsp"><button class="btn1">票价:  <span><%=att.getTkPrice()%></span>&nbsp;&nbsp;&nbsp;&nbsp;热度：<span><%=att.getrD()%></span></button></a>
                    <%}%>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
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

<script src="js/lightbox-plus-jquery.min.js"> </script>
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

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>
