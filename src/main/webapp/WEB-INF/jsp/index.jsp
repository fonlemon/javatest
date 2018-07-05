<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
   
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="<%=basePath %>static/css/MainPage.css" type="text/css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="<%=basePath %>static/js/MainPage.js" type="text/javascript"  charset="utf-8"></script>
	 <script src="<%=basePath %>static/js/jquery.js" type="text/javascript"  charset="utf-8"></script>
</head>
<body>

<div id="top-box">
 <div id="screenNum" hidden></div>
    <jsp:include   page="/common/top.jsp" flush="true"/>
    <div class="top-search">
        <form>
            <label> <input type="text" class="top-state-detail-text"/></label><label><input type="submit" class="top-state-detail-bottom" value="搜索"/></label>
        </form>
    </div>
</div><!--头部结束-->	
<div id="content-list">
    <div class="content-list" id="content-list-id">
        <div class="content-list-bigbox">
            <p class="list">分类</p>
        </div>
    </div>
    <div id="index_screen" class="index-screen">
        <div id="screen_bo">
           
        </div>
        <div id="index_screen_img" style="left:-1020px;" class="index-screen-img">
          
        </div>
        <a  class="arrow" id="prev">&lt;</a>
        <a  class="arrow" id="next">&gt;</a>
    </div><!--index_screen结束-->
</div><!--导航栏结束-->
<div id="content-message">
    <div class="content-message-Method">
        <div class="content-message-top">
            常用方法<a href="#">更多</a>
        </div>
       
        <s:forEach items="${commonList }" var="item">
	        <div class="content-message-Method-message">	
	            <div class="id">${item.id}</div>
	            <div class="message"><a href="#">${item.name }</a></div>
	        </div>
        </s:forEach>
    </div><!--平台方法-->
    <div class="content-message-industry">
        <div class="content-message-top">
            业界动态<a href="新闻模块/业界动态.html">更多</a>
        </div>
        <div class="industry-message">
           <a href="新闻模块/业界动态详细页.html" > 比特币的前世今生</a>
            <a href="新闻模块/业界动态详细页.html" > <img src="<%=basePath %>static/img/industry-pic.png"> </a>
        </div>
        <div class="industry-message">
            <a href="新闻模块/业界动态详细页.html" > 比特币的前世今生</a>
            <a href="新闻模块/业界动态详细页.html" > <img src="<%=basePath %>static/img/industry-pic.png"> </a>
        </div>
        <div class="industry-message">
            <a href="新闻模块/业界动态详细页.html" > 比特币的前世今生</a>
            <a href="新闻模块/业界动态详细页.html" > <img src="<%=basePath %>static/img/industry-pic.png"> </a>
        </div>
    </div><!--业界动态-->
    <div class="content-message-platform">
        <div class="content-message-top">
            平台动态<a href="新闻模块/平台动态.html">更多</a>
        </div>
        <div class="platform">
            <a href="#"> <img src="<%=basePath %>static/img/platform-pic.png" style="margin-top: 3px;"></a>
            <div class="platform-message">
                <a href="新闻模块/平台动态详情页.html">ArcGIS for JavaScript</a>
                <p>全面介绍ArcGIS 灌灌灌灌开发是多少大所多</p>
            </div>
        </div>
        <div class="platform">
            <a href="#"> <img src="<%=basePath %>static/img/platform-pic.png" style="margin-top: 3px;"></a>
            <div class="platform-message">
                <a href="#">ArcGIS for JavaScript</a>
                <p>全面介绍ArcGIS 灌灌灌灌开发</p>
            </div>
        </div>
        <div class="platform">
            <a href="#"> <img src="<%=basePath %>static/img/platform-pic.png" style="margin-top: 3px;"></a>
            <div class="platform-message">
                <a href="新闻模块/平台动态详情页.html">ArcGIS for JavaScript</a>
                <p>全面介绍ArcGIS 灌灌灌灌开发</p>
            </div>
        </div>
        <div class="platform">
            <a href="#"> <img src="<%=basePath %>static/img/platform-pic.png" style="margin-top: 3px;"></a>
            <div class="platform-message">
                <a href="新闻模块/平台动态详情页.html">ArcGIS for JavaScript</a>
                <p>全面介绍ArcGIS 灌灌灌灌开发</p>
            </div>
        </div>
        <div class="platform">
            <a href="#"> <img src="<%=basePath %>static/img/platform-pic.png" style="margin-top: 3px;"></a>
            <div class="platform-message">
                <a href="新闻模块/平台动态详情页.html">ArcGIS for JavaScript</a>
                <p>全面介绍ArcGIS 灌灌灌灌开发</p>
            </div>
        </div>
        <div class="platform">
            <a href="#"> <img src="<%=basePath %>static/img/platform-pic.png" style="margin-top: 3px;"></a>
            <div class="platform-message">
                <a href="新闻模块/平台动态详情页.html">ArcGIS for JavaScript</a>
                <p>全面介绍ArcGIS 灌灌灌灌开发</p>
            </div>
        </div>
        <div class="platform">
            <a href="#"> <img src="<%=basePath %>static/img/platform-pic.png" style="margin-top: 3px;"></a>
            <div class="platform-message">
                <a href="新闻模块/平台动态详情页.html">ArcGIS for JavaScript</a>
                <p>全面介绍ArcGIS 灌灌灌灌开发</p>
            </div>
        </div>
        <div class="platform">
            <a href="#"> <img src="<%=basePath %>static/img/platform-pic.png" style="margin-top: 3px;"></a>
            <div class="platform-message">
                <a href="新闻模块/平台动态详情页.html">ArcGIS for JavaScript</a>
                <p>全面介绍ArcGIS 灌灌灌灌开发</p>
            </div>
        </div>
    </div><!--平台动态-->
</div><!--信息展示部分结束-->
<div id="content-task">
    <div class="task-top">
        <div class="task-top-text">任务推荐</div>
        <a href="#"><i class="fa fa-refresh fa-2x" style="float: right;margin-top: 9px"></i></a>
    </div>
    <div class="task-message">
        <div class="task-message-Exhibition">
            <a href="任务模块/任务详情页.html"><img src="<%=basePath %>static/img/Exhibition-pic.png"></a>
            <div class="task-message-Exhibition-text">VI设计  VIS设计  企业VI设计....</div>
            <div class="task-message-Exhibition-price"><a href="#">¥：2880</a></div>
            <div class="task-message-Exhibition-time">
                <a>发布时间：<span>2016-12-30</span></a>
            </div>
        </div>
    </div><!--推荐内容-->
    <div class="task-message">
        <div class="task-message-Exhibition">
            <a href="任务模块/任务详情页.html"> <img src="<%=basePath %>static/img/Exhibition-pic.png"></a>
            <div class="task-message-Exhibition-text">VI设计  VIS设计  企业VI设计....</div>
            <div class="task-message-Exhibition-price"><a href="#">¥：2880</a></div>
            <div class="task-message-Exhibition-time">
                <a>发布时间：<span>2016-12-30</span></a>
            </div>
        </div>
    </div><!--推荐内容-->
    <div class="task-message">
        <div class="task-message-Exhibition">
            <a href="任务模块/任务详情页.html"><img src="<%=basePath %>static/img/Exhibition-pic.png"></a>
            <div class="task-message-Exhibition-text">VI设计  VIS设计  企业VI设计....</div>
            <div class="task-message-Exhibition-price"><a href="#">¥：2880</a></div>
            <div class="task-message-Exhibition-time">
            <a>发布时间：<span>2016-12-30</span></a>
        </div>
        </div>
    </div><!--推荐内容-->
    <div class="task-message">
        <div class="task-message-Exhibition">
            <a href="任务模块/任务详情页.html"><img src="<%=basePath %>static/img/Exhibition-pic.png"></a>
            <div class="task-message-Exhibition-text">VI设计  VIS设计  企业VI设计....</div>
            <div class="task-message-Exhibition-price"><a href="#">¥：2880</a></div>
            <div class="task-message-Exhibition-time">
                <a>发布时间：<span>2016-12-30</span></a>
            </div>
        </div>
    </div><!--推荐内容-->
    <div class="task-message">
        <div class="task-message-Exhibition">
            <a href="任务模块/任务详情页.html"> <img src="<%=basePath %>static/img/Exhibition-pic.png"></a>
            <div class="task-message-Exhibition-text">VI设计  VIS设计  企业VI设计....</div>
            <div class="task-message-Exhibition-price"><a href="#">¥：2880</a></div>
            <div class="task-message-Exhibition-time">
                <a>发布时间：<span>2016-12-30</span></a>
            </div>
        </div>
    </div><!--推荐内容-->
    <div class="task-message">
        <div class="task-message-Exhibition">
            <a href="任务模块/任务详情页.html"> <img src="<%=basePath %>static/img/Exhibition-pic.png"></a>
            <div class="task-message-Exhibition-text">VI设计  VIS设计  企业VI设计....</div>
            <div class="task-message-Exhibition-price"><a>¥：2880</a></div>
            <div class="task-message-Exhibition-time">
                <a>发布时间：<span>2016-12-30</span></a>
            </div>
        </div>
    </div><!--推荐内容-->
</div><!--任务推荐-->
<div id="content-exhibition">
    <div class="task-top">
        <div class="exhibition-top-text">精品案例展示</div>
        <a href="#"><i class="fa fa-refresh fa-2x" style="float: right;margin-top: 9px"  onclick="location.reload();"></i></a>
    </div>
    <div class="case-exhibition">
        <a href="#"> <img src="<%=basePath %>static/img/case-pic1.png"></a>
        <div class="case-exhibition-text"><a href="#">5188品牌设计  打开财富之门</a> </div>
    </div>
    <div class="case-exhibition">
        <a href="#"><img src="<%=basePath %>static/img/case-pic2.png"></a>
        <div class="case-exhibition-text"><a href="#">教育培训logo</a> </div>
    </div>
    <div class="case-exhibition">
        <a href="#"> <img src="<%=basePath %>static/img/case-pic3.png"></a>
        <div class="case-exhibition-text"><a href="#">十年推广，点滴促不凡</a> </div>
    </div>
    <div class="case-exhibition">
        <a href="#"> <img src="<%=basePath %>static/img/case-pic1.png"></a>
        <div class="case-exhibition-text"><a href="#">5188品牌设计  打开财富之门</a></div>
    </div>
    <div class="case-exhibition">
        <a href="#">   <img src="<%=basePath %>static/img/case-pic2.png"></a>
        <div class="case-exhibition-text"><a href="#">教育培训logo</a></div>
    </div>
    <div class="case-exhibition">
        <a href="#"><img src="<%=basePath %>static/img/case-pic3.png"></a>
        <div class="case-exhibition-text"><a href="#">十年推广，点滴促不凡</a></div>
    </div>
</div><!--精品案例展示-->
<div class="footer">
    <a  href="tencent://message/?uin=123456789&Site=qq&Menu=yes"><img src="<%=basePath %>static/img/Phone.png" ></a>
    <a href="#"> <img src="<%=basePath %>static/img/question.png" style="margin-left: 100px"></a>
    <a href="#"> <img src="<%=basePath %>static/img/feedback.png" style="float: right;margin-top: 10px"></a>
    <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
    <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
    <p>鄂公网安备 42011102000110号</p>
    <p>武汉网监电子标识</p>
</div><!--底部-->
<div class="back-top">
    <a id="backTop" title="回到顶部" onclick="backTop()"></a>
</div>
</body>
</html>