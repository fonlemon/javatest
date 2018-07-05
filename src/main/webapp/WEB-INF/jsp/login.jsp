<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-type" content="text/html;charset=utf-8">
    <title></title>
    <link rel="stylesheet" href="<%=basePath %>static/css/login-method.css" type="text/css">
	<script src="<%=basePath %>static/js/Login.js" type="text/javascript" charset="UTF-8"></script>
</head>
<body>
<div id="top-box">
   <jsp:include   page="/common/top.jsp" flush="true"/>
</div><!--头部结束-->
<div class="login-main">
    <img src="<%=basePath %>static/img/center-pic4.jpg" />
    <form method="post"  action="<s:url value="/dologin" />" >
    	<span id="loginMsg">${msg }</span>
        <div class="login-main-del">
             <div class="login-title">用户登录</div>
            <div class="login-email"><span>邮箱账号</span><input placeholder="邮箱" type="text" id="EmailNum" name="email" value="${email }"/>
                <p id="EmailPrint"></p>
            </div>
            <div class="login-pass"><span>密码</span><input placeholder="密码" type="password" id="PassNum" name="password"/>
                <p id="PassPrint"></p>
            </div>
            <div class="login-cast"><span>验证码</span><label><input type="text" id="testNum" name="testNum"/></label><a></a>
                <p id="TextPrint"></p>
            </div>
            <div class="login-forgot"><a href="#">忘记密码？</a></div>
            <div class="login-button"><span class="login-button-del">登录</span></div>
            <input type="submit" id="submitBtn" hidden>
            <p class="login-mem">没有账号？<a href="../用户模块/注册.html">点击注册</a></p>
        </div>
    </form>
</div>
<div class="footer">
    <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
    <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
    <p>鄂公网安备 42011102000110号</p>
    <p>武汉网监电子标识</p>
</div><!--底部-->
</body>
</html>