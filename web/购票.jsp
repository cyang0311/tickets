<%@ page import="entity.Customer" %>
<%@ page import="entity.Employer" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="Dao.CustomerDao" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>购票</title>
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
        <h2>购票</h2>
    </div>
</div>
<!-- blog -->
<div class="blog">
    <div class="container">
        <div class="agile-blog-grids" >
            <div class="col-md-8 agile-blog-grid-left">

                <div class="agile-blog-grid">
                    <div class="blog-left-right-top">
                        <h4><a href="single.html">小瀛洲</a></h4>
                    </div>
                    <div class="agile-blog-grid-left-img">
                        <a href=""><img src="images/g6.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 agile-blog-grid-right">
                <div class="categories gpshuru">
                    <h3>简介</h3>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三潭印月景区在外西湖西南部水域，包括小瀛洲及其南侧三座葫芦状石塔，以赏月和水上园林著称。全岛面积约7公顷，水面占60%。</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小瀛洲前身为水心保宁寺，也称湖心寺，北宋时为湖上赏月佳处，其园林建筑和景物布局，在18世纪初已基本形成。清《湖山便览》卷三：“万历三十五年，钱塘令聂心汤请于水利道王道显，绕滩筑埂，成湖中之湖，以为放生之所。</p>
                    <form action="/BuyTicketServlet">
                        <%String shoujihao="未登录";
                            if(session.getAttribute("yhxinxi2")!=null){
                                shoujihao= ((Customer) session.getAttribute("yhxinxi2")).getCusPhone();
                            }
                        %>
                        <input type="hidden" value="1" name="attId">
                        <input type="number" width="90%" name="bNumber" placeholder="票数" min="1">
                        <input type="text" readonly name="cusPhone" placeholder="电话" value=<%=shoujihao%>>
                        <%
                            //获取当前系统时间
                            SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
                            String a=df.format(new Date());
                        %>
                        <input type="date" placeholder="预定日期" name="btime" required min=<%=a%> >
                        <input type="submit" value="购买" class="btn1">
                    </form>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="85%" color=#987cb9 SIZE=2 class="hr" >
        <div class="agile-blog-grids">
            <div class="col-md-8 agile-blog-grid-left">

                <div class="agile-blog-grid">
                    <div class="blog-left-right-top">
                        <h4><a href="single.html">湖心亭</a></h4>
                    </div>
                    <div class="agile-blog-grid-left-img">
                        <a href=""><img src="images/g1.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 agile-blog-grid-right">
                <div class="categories gpshuru">
                    <h3>简介</h3>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;湖心亭在外西湖中心。清雍正《西湖志》卷九：“亭在全湖中心，旧有湖心寺，寺外三塔，明孝宗时，寺与塔俱毁。”聂心汤《县志》称：湖心寺外三塔，其中塔、南 塔并废，乃即北塔基建亭，名湖心亭。复于旧寺基重建德生堂，以放生之所。据此，则旧湖心寺乃今放生池，而今之湖心亭，乃三塔中北塔之基地。”</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;抗日战争后，喜清阁旧址先后改建为财神殿和观音大士殿。1980年在岛上刻置“虫（异体字,为繁体字“风”的中间部分）二”太湖石碑一块，意指“风月无边”。</p>
                    <form action="/BuyTicketServlet">
                        <input type="hidden" value="2" name="attId">
                        <input type="number" width="90%" min="1" name="bNumber" placeholder="票数" >
                        <input type="text" readonly name="cusPhone" placeholder="电话" value=<%=shoujihao%>>
                        <input type="date"  name="btime" required min=<%=a%>>
                        <input type="submit" value="购买" class="btn1">
                    </form>

                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="85%" color=#987cb9 SIZE=2 class="hr" >

        <div class="agile-blog-grids">
            <div class="col-md-8 agile-blog-grid-left">

                <div class="agile-blog-grid">
                    <div class="blog-left-right-top">
                        <h4><a href="single.html">阮公墩</a></h4>
                    </div>
                    <div class="agile-blog-grid-left-img">
                        <a href=""><img src="images/g2.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 agile-blog-grid-right">
                <div class="categories gpshuru">
                    <h3>简介</h3>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;阮公墩在外西湖中，位于湖心亭西。清嘉庆五年（1800年），浙江巡抚阮元疏浚西湖时以所挖葑泥堆叠成岛，俗称“阮滩”。岛南北长34米，东西宽33米，面积0.57公顷，长期以来岛上无建筑，杂树荒草丛生，成为候鸟栖息地。1952—1958年间疏浚西湖时，岛四周加添乱石护岸，面积稍有拓宽。</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1982年，岛上开辟西湖第一处垂钓区，游人可登岛品茗、垂钓。1984年起，岛上举办“环碧庄”仿古旅游，在西湖夜游活动中颇受欢迎。叫生态岛。</p>
                    <form action="/BuyTicketServlet">
                        <input type="hidden" value="3" name="attId">
                        <input type="number" width="90%" min="1" name="bNumber" placeholder="票数" >
                        <input type="text" readonly name="cusPhone" placeholder="电话" value=<%=shoujihao%>>
                        <input type="date"  name="btime" required min=<%=a%>>
                        <input type="submit" value="购买" class="btn1">
                    </form>

                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="85%" color=#987cb9 SIZE=2 class="hr" >

        <div class="agile-blog-grids">
            <div class="col-md-8 agile-blog-grid-left">

                <div class="agile-blog-grid">
                    <div class="blog-left-right-top">
                        <h4><a href="single.html">白沙堤</a></h4>
                    </div>
                    <div class="agile-blog-grid-left-img">
                        <a href=""><img src="images/g3.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 agile-blog-grid-right">
                <div class="categories gpshuru">
                    <h3>简介</h3>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;白堤东起断桥，经锦带桥向西，在“平湖秋月”与孤山相接，长约1公里。在唐即称白沙堤、沙堤，其后在宋、明又称孤山路、十锦塘。古时白堤以白沙铺地，后改为柏油路面，两侧广种碧桃翠柳，是欣赏西湖全景和周边诸山的最佳观赏点。</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;断桥 位于白堤东首，民间故事《白蛇传》中，断桥为白素贞与许仙邂逅之处，因而在西湖诸桥中最享盛名。锦带桥位于断桥西，又称涵碧桥。</p>
                    <form action="/BuyTicketServlet">
                        <input type="hidden" value="4" name="attId">
                        <input type="number" min="1" width="90%" name="bNumber" placeholder="票数" >
                        <input type="text" readonly name="cusPhone" placeholder="电话" value=<%=shoujihao%>>
                        <input type="date"  name="btime" required min=<%=a%>>
                        <input type="submit" value="购买" class="btn1">
                    </form>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="85%" color=#987cb9 SIZE=2 class="hr" >

        <div class="agile-blog-grids">
            <div class="col-md-8 agile-blog-grid-left">

                <div class="agile-blog-grid">
                    <div class="blog-left-right-top">
                        <h4><a href="single.html">苏堤</a></h4>
                    </div>
                    <div class="agile-blog-grid-left-img">
                        <a href=""><img src="images/g4.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 agile-blog-grid-right">
                <div class="categories gpshuru">
                    <h3>简介</h3>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;苏堤旧称苏公堤，南起南屏山麓南山路，北至岳王庙东，横贯湖中，堤长2797米，宽30—40米。苏堤上共有六座石拱桥，从南往北分别为：映波、锁澜、望山、压堤、东浦（据考证，疑为“束浦”之讹）、 跨虹。</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;南宋咸淳《临安志》卷三十三：“元祐中，东坡既奏开浚湖水，因以所积葑草筑为长堤，起南讫北，横跨湖面，绵亘数里，夹道杂植花柳，中为六桥，行者便之……后十年郡守吕惠卿奏毁之。咸淳五年，朝廷给钱命守臣说友增筑。</p>
                    <form action="/BuyTicketServlet">
                        <input type="hidden" value="5" name="attId">
                        <input type="number" width="90%" min="1" name="bNumber" placeholder="票数" >
                        <input type="text" readonly name="cusPhone" placeholder="电话" value=<%=shoujihao%>>
                        <input type="date"  name="btime" required min=<%=a%>>
                        <input type="submit" value="购买" class="btn1">
                    </form>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="85%" color=#987cb9 SIZE=2 class="hr" >


        <div class="col-md-8 agile-blog-grid-left" >

            <div class="agile-blog-grid">
                <div class="blog-left-right-top">
                    <h4><a href="single.html">杨公提</a></h4>
                </div>
                <div class="agile-blog-grid-left-img">
                    <a href=""><img src="images/g5.jpg" alt="" /></a>
                </div>
            </div>
        </div>
        <div class="col-md-4 agile-blog-grid-right">
            <div class="categories gpshuru">
                <h3>简介</h3>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杨公堤又称“西山路”，其走向基本平行于苏堤，从栖霞岭西侧起，绕丁家山直至南山的长堤。杨公堤在西湖西进工程中，恢复了相对于苏堤的“里六桥”：环碧、流金、卧龙、隐秀、景行和浚源。现杨公堤路面较宽，设有双向单车道，中间加以绿化隔离带，沿路主要为宾馆及疗养院等设施。主要景致有曲园风荷、郭庄、刘庄、杭州花圃、金沙港、浴鹄湾、三台梦迹、乌龟潭、茅家埠等。</p>
                <form action="/BuyTicketServlet">
                    <input type="hidden" value="6" name="attId">
                    <input type="number" min="1" width="90%" name="bNumber" placeholder="票数" >
                    <input type="text" readonly name="cusPhone" placeholder="电话" value=<%=shoujihao%>>
                    <input type="date"  name="btime" required min=<%=a%>>
                    <input type="submit" value="购买" class="btn1">
                </form>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>

</div>
</div>
<!-- //blog -->
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
