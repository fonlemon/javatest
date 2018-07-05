<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
   
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="<%=basePath %>static/css/common_top.css" type="text/css">
</head>
<body>
<s:set var="user" value="${sessionScope.user}"/>  
<div id="user_id" hidden>${user.type}</div>
<div class="top-state" id="NotLogin">
        <span><a href="<s:url value='/'/>">网站名字</a></span>
        <div class="top-state-detail">
            <ul id="top">
                <li><a href="<s:url value='/login'/>" target="_blank">登录</a></li>
                <li><a href="<s:url value='/register'/>" target="_blank">注册</a></li>
            </ul>
        </div>
    </div>
    <div class="top-state" id="HasLogin">
        <span><a href="<s:url value='/'/>">网站名字</a></span>
        <div class="top-state-detail">
            <div class="log" id="HasLog" >
                <img src="${user.img }"  />
                <ul>
                    <li class="log-on">${user.name}</li>
                    <li><div  onmouseover="OpenSelf('Out-User')" onmouseout="CloseSelf('Out-User')" class="Out-Self-Info"  >
                        <a href="<s:url value='/user/userInfo'/>">个人中心</a>
                        <ul class="Out-User" >
                            <li><a href="<s:url value='/user/userInfo'/>">基本信息</a></li>
                            <li><a href="用户模块/个人中心-收藏的公司.html">收藏的公司</a></li>
                            <li><a href="<s:url value='/task/taskSend'/>">已发布的任务</a></li>
                            <li><a href="用户模块/个人中心-被完成的任务.html">被完成的任务</a></li>
                            <li><a href="<s:url value='/logout'/>">退出登录</a></li>
                        </ul>
                    </div>
                    </li>
                    <li>
                        <div  onmouseover="OpenSelf('Out-User')" onmouseout="CloseSelf('Out-User')"  class="in-Self-Info" >
                            <a href="<s:url value='/user/userInfo'/>">个人中心</a>
                            <ul class="Out-User" >
                                <li><a href="<s:url value='/user/userInfo'/>">基本信息</a></li>
                                <li><a href="用户模块/个人中心-接收过任务.html">接受的任务</a></li>
                                <li><a href="用户模块/个人中心-收藏的任务.html">收藏的任务</a></li>
                                <li><a href="<s:url value='/logout'/>">退出登录</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div  onmouseover="OpenSelf('news-detail')" onmouseout="CloseSelf('news-detail')" class="top-news">
                            <a href="#">消息<span>(2)</span></a>
                            <ul class="news-detail">
                                <li><a href="用户模块/消息展示页.html">我的通知&nbsp;<span class="news-orange">2</span></a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</body>
</html>