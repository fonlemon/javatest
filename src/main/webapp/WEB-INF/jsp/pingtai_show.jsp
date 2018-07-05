
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<!DOCTYPE html>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>平台动态</title>
</head>
<link rel="stylesheet" href="<%=basePath %>static/css/Platform.css" type="text/css">
<link rel="stylesheet" href="<%=basePath %>static/css/Log_Reg.css" type="text/css">
<script src="<%=basePath %>static/js/Log_Reg.js" type="text/javascript"  charset="gb2312"></script>

<body>
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
    </div></div>
<div class="platform-logo">
    <label>关键字查询:
        <input type="text" class="logo-search">
        <input type="submit" class="logo-sunbmit" value="查询">
    </label>
</div>
<div class="platform-information">
    <div class="platform-text">
        <div class="platform-logo-text"><p class="logo-text">平台动态</p></div>
    </div>
    <div class="platform-main">
        <div class="platform-main-text">
            <s:forEach var="list" items="${news.getListData()}">

                <div class="platform-main-text">
                    <img src="${list.img}" >
                    <div class="platform-box">
                        <a href="pingtai_detail?dynamic_id=${list.id}">${list.name}</a>
                        <p>    ${list.content}
                        </p>
                    </div>
                    <div class="platform-time">发布时间：<span>${list.time}</span>
                    </div>
                </div>
            </s:forEach>
        </div>

    </div><!--内容列表-->
    <div class="platform-page">
        <s:choose>
            <s:when test="${news.now_page}==1">
                <a href="#">&lt;</a>
            </s:when>
            <s:otherwise>
                <a href="news_pingtai?now_page=${news.now_page-1}">&lt;</a>
            </s:otherwise>

        </s:choose>


        <s:forEach begin="1" end="${news.getSum_page()}" var="p">

            <s:choose>
                <s:when test="${p}==${news.now_page}">
                    <b>${p}</b>
                </s:when>
                <s:otherwise>
                    <a href="news_pingtai?now_page=${p}">${p}</a>
                </s:otherwise>
            </s:choose>
        </s:forEach>


        <s:choose>

            <s:when test="${news.now_page}==${news.getSum_page()}">
                <a href="#">&gt;</a>
            </s:when>
            <s:otherwise>

                <a href="news_pingtai?now_page=${news.now_page+1}" />&gt;</a>
            </s:otherwise>
        </s:choose>
    </div>
</div><!--动态内容-->
<div class="footer">
    <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
    <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
    <p>鄂公网安备 42011102000110号</p>
    <p>武汉网监电子标识</p>
</div><!--底部-->

</body>
</html>