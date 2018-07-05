<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html>

<head lang="en">
    <meta charset="UTF-8">
    <title>业界动态</title>
</head>
<link rel="stylesheet" href="<%=basePath %>static/css/Industry.css" type="text/css">
<script src="<%=basePath %>static/js/industry.js" type="text/javascript"  charset="gb2312"></script>
<body>
<div id="user_id" hidden>${user}</div>
<div id="top">
    <div class="top">
        <div class="log-pic"></div>
        <div class="top-search">
            <form>
                <label>
                    <input type="text" class="top-search-text"/>
                    <input type="submit" class="top-search-button" value=''/>
                </label>
            </form>
            <div class="log"><a href="登录界面.html" class="log-on">登录</a> \ <a href="注册页面.html" class="log-on" >注册</a><a href="首页.html" class="back-Main">返回首页</a></div>
        </div><!--搜索结束-->
    </div>

</div>
<div class="industry-box">
    <div class="industry-main">
        <div class="news-h2"><h2>业界动态</h2></div>
        <div class="industry-list">
            <s:forEach var="list" items="${news.getListData()}">

            <a class="industry-list-img" target="_Blank" href="yejie_detail?dynamic_id=${list.id}">
                <img src="${list.img}"></a>
            <div class="news-main">
                <p class="news-title"><a href="yejie_detail?dynamic_id=${list.id}" target="_Blank">${list.name}</a></p>
                <p class="news-content">
                    <span class="news-content-more"> ${list.content}</span>
                    <span class="put-time">${list.time}</span>
                </p>
            </div>
            <div class="clear"></div>
            </s:forEach>
        </div><!--news_list结束-->

        <div class="page">
            <s:choose>
                <s:when test="${news.now_page}==1">
                    <a href="#">&lt;</a>
                </s:when>
                <s:otherwise>
                    <a href="news_yejie?now_page=${news.now_page-1}">&lt;</a>
                </s:otherwise>

            </s:choose>


            <s:forEach begin="1" end="${news.getSum_page()}" var="p">

                <s:choose>
                    <s:when test="${p}==${news.now_page}">
                        <b>${p}</b>
                    </s:when>
                    <s:otherwise>
                        <a href="news_yejie?now_page=${p}">${p}</a>
                    </s:otherwise>
                </s:choose>
            </s:forEach>


            <s:choose>

                <s:when test="${news.now_page}==${news.getSum_page()}">
                    <a href="#">&gt;</a>
                </s:when>
                <s:otherwise>

                    <a href="news_yejie?now_page=${news.now_page+1}" />&gt;</a>
                </s:otherwise>
            </s:choose>
        </div>
    </div>
    <div class="industry-news">
        <h2>最新动态</h2>
        <div class="industry-news-list">
            <s:forEach var="list" items="${news.getListData()}">
            <p><a href="yejie_detail?dynamic_id=${list.id}">${list.name}</a><span>${list.time}</span></p>
            </s:forEach>
        </div>

    </div>
    <div class="clear"></div>
</div>
<div class="footer">
    <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
    <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
    <p>鄂公网安备 42011102000110号</p>
    <p>武汉网监电子标识</p>
</div><!--底部-->
</body>
</html>