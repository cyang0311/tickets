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
    <title>首页</title>
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
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/cy.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- font -->
    <!-- <link href="http://fonts.googleapis.com/css?family=Playball&amp;subset=latin-ext" rel="stylesheet">
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
<%
    Customer ad1=(Customer)session.getAttribute("yhxinxi2");
    Employer ad2=(Employer)session.getAttribute("yhxinxi1");
    int ad3=0;
    if(session.getAttribute("flag")!=null){
        ad3=(int)session.getAttribute("flag");
    }


%>
<div class="banner-top">
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides callbacks callbacks1" id="slider4">
                <li>
                    <div class="w3layouts-banner-top">
                        <div class="container">
                            <div class="agileits-banner-info">
                                <h3>简介 <span>Nulla massa magna</span></h3>
                                <p>西湖，位于浙江省杭州市西面，是中国大陆首批国家重点风景名胜区和中国十大风景名胜之一。它是中国大陆主要的观赏性淡水湖泊之一，也是现今《世界遗产名录》中少数几个和中国唯一一个湖泊类文化遗产。</p>
                                <div class="w3-button">
                                    <a href="购票页面.jsp">更多</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3layouts-banner-top w3layouts-banner-top1">
                        <div class="container">
                            <div class="agileits-banner-info">
                                <h3>地理位置及分区<span>Ut molestie lectus</span></h3>
                                <p>西湖三面环山，面积约6.39平方千米，东西宽约2.8千米，南北长约3.2千米，绕湖一周近15千米。湖中被孤山、白堤、苏堤、杨公堤分隔，按面积大小分别为外西湖、西里湖、北里湖、小南湖及岳湖等五片水面，苏堤、白堤越过湖面，小瀛洲、湖心亭、阮公墩三个小岛鼎立于外西湖湖心，夕照山的雷峰塔与宝石山的保俶塔隔湖相映，由此形成了“一山、二塔、三岛、三堤、五湖”的基本格局</p>
                                <div class="w3-button">
                                    <a href="购票页面.jsp">更多</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3layouts-banner-top w3layouts-banner-top2">
                        <div class="container">
                            <div class="agileits-banner-info">
                                <h3>文化底蕴 <span>pulvinar hendrerit</span></h3>
                                <p>西湖以其湖光山色和深厚人文底蕴，吸引了历代文人墨客的眷顾，因此在文学方面也留下了诸多名篇和典籍。《武林掌故丛编》、《西湖梦寻》、《西湖集览》与新旧《西湖志》、《湖山便览》等记载了大量关于西湖和古代杭州的史迹掌故。另外，近现代众多作家也与西湖结缘。在诗词方面，白居易、苏轼、柳永、杨万里、林逋、徐志摩、胡适等诗人留下了无数佳句；在散文方面，张岱、鲁迅、俞平伯、郁达夫、宗璞等名家则写下了众多名篇。以下例举部分与西湖紧密关联的文学作品。</p>
                                <div class="w3-button">
                                    <a href="购票页面.jsp">更多</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"> </div>
        <script src="js/responsiveslides.min.js"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 4
                $("#slider4").responsiveSlides({
                    auto: true,
                    pager:true,
                    nav:true,
                    speed: 500,
                    namespace: "callbacks",
                    before: function () {
                        $('.events').append("<li>before event fired.</li>");
                    },
                    after: function () {
                        $('.events').append("<li>after event fired.</li>");
                    }
                });

            });
        </script>
        <!--banner Slider starts Here-->
    </div>
</div>
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
<!-- banner -->
<div class="banner">
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
<!-- //banner -->
<!-- welcome -->
<div class="welcome">
    <div class="container">
        <div class="w3-welcome-grids">
            <div class="col-md-5 w3l-welcome-left">
                <h2>Welcome <span>to 西湖风景区</span></h2>
                <p>湖中被孤山、白堤、苏堤、杨公堤分隔，按面积大小分别为外西湖、西里湖、北里湖、小南湖及岳湖等五片水面，苏堤、白堤越过湖面，小瀛洲、湖心亭、阮公墩三个小岛鼎立于外西湖湖心，夕照山的雷峰塔与宝石山的保俶塔隔湖相映，由此形成了“一山、二塔、三岛、三堤、五湖”的基本格局。</p>
                <div class="w3ls-button">
                    <a href="购票页面.jsp">更多</a>
                </div>
            </div>
            <div class="col-md-7 w3l-welcome-right">
                <div class="w3l-welcome-right-grids">
                    <div class="col-sm-5 w3l-welcome-right-img">
                        <img src="images/4.jpg" alt="" />
                    </div>
                    <div class="col-sm-7 w3l-welcome-right-img1">
                        <img src="images/5.jpg" alt="" />
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //welcome -->
<!-- services -->
<div class="services">
    <div class="container">
        <div class="agileits-services-grids">
            <div class="col-md-4 agileinfo-services-left">
                <h3>Our <span>Services</span></h3>

            </div>
            <div class="col-md-8 agileinfo-services-right">
                <div class="col-md-6 w3-agileits-services-grid">
                    <i class="fa fa-cogs" aria-hidden="true"></i>
                    <a href="购票.jsp"><h4>购票</h4></a>
                    <p></p>
                </div>
                <div class="col-md-6 w3-agileits-services-grid agile-services1">
                    <i class="fa fa-comments" aria-hidden="true"></i>
                    <a href="评论.jsp"><h4>评论</h4></a>
                    <p></p>
                </div>
                <div class="col-md-6 w3-agileits-services-grid">
                    <i class="fa fa-heart" aria-hidden="true"></i>
                    <a href="游客登录.jsp"><h4>登录</h4></a>
                    <p></p>
                </div>
                <div class="col-md-6 w3-agileits-services-grid">
                    <i class="fa fa-plane" aria-hidden="true"></i>
                    <a href="注册.jsp"><h4>注册</h4></a>
                    <p></p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //services -->
<!-- news -->
<div class="news">
    <div class="container">
        <div class="wthree-news-grids">
            <div class="col-md-4 agileinfo-services-left agile-news-left">
                <h3>Our <span>News</span></h3>

            </div>
            <div class="col-md-8 agile-news-right">
                <div class="col-md-6 agile-news-right-info">
                    <div class="col-md-6 agile-news-img">

                    </div>
                    <div class="col-md-6 agile-news-img-info">
                        <h5><a href="购票页面.jsp">Lorem ipsum dolor</a></h5>
                        <div class="agileits-w3layouts-border"> </div>
                        <p>Maecenas et suscipit augue. Aenean at ultricies lacus.</p>
                        <h6><i class="fa fa-calendar" aria-hidden="true"></i> 24th Dec,2016</h6>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-6 agile-news-right-info">
                    <div class="col-md-6 agile-news-img agile-news-img1">

                    </div>
                    <div class="col-md-6 agile-news-img-info">
                        <h5><a href="购票页面.jsp">Lorem ipsum dolor</a></h5>
                        <div class="agileits-w3layouts-border"> </div>
                        <p>Maecenas et suscipit augue. Aenean at ultricies lacus.</p>
                        <h6><i class="fa fa-calendar" aria-hidden="true"></i> 13th Nov,2016</h6>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //news -->
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
<!-- //footer -->
<!-- copyright -->

<!-- //copyright -->
<script src="js/responsiveslides.min.js"></script>
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
