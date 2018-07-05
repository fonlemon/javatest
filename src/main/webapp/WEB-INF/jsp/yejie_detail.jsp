<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="<%=basePath %>static/css/Industry-detail.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>static/css/Industry.css" type="text/css">
    <script src="<%=basePath %>static/js/industry-detail.js" type="text/javascript"  charset="gb2312"></script>
</head>
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
            <div class="log"><a href="../user/login" class="log-on">登录</a> \ <a href="../user/register" class="log-on" >注册</a><a href="../public/index" class="back-Main">返回首页</a></div>
        </div><!--搜索结束-->
    </div>
</div>
<div class="industry-detail-main">
    <div class="industry-list-detail">
        <div class="industry-title-box">
            <h1 class="industry-list-title">${dynamic.name}</h1>
            <p>
                <span>${dynamic.time}</span>
                <a href="www.baidu.com">来源</a>
                <span class="change-content">字体：
                    <a href="javascript:changeContentSize(18);">大</a>
                    <a href="javascript:changeContentSize(16);">中</a>
                    <a href="javascript:changeContentSize(14);">小</a>
                </span>
            </p>
        </div>
        <div class="industry-content">
            <img class="img-title" src="${dynamic.img}"/>
            ${dynamic.content}
        </div>
    </div>
    <div class="industry-news">
        <h2>最新动态</h2>
        <div class="industry-news-list">
            <s:forEach var="list" items="${lists}">
                <p><a href="yejie_detail?dynamic_id=${list.id}">${list.name}</a><span>${list.time}</span></p>
            </s:forEach>
        </div>

    </div>
    <div class="back-top">
        <a id="backTop" title="回到顶部" onclick="backTop()"></a>
    </div>
    <!--<div class="clear"></div>-->
</div>

<div class="footer">
    <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
    <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
    <p>鄂公网安备 42011102000110号</p>
    <p>武汉网监电子标识</p>
</div><!--底部-->
</body>
</html>