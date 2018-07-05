<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="<%=basePath %>static/css/Platform-detail.css" type="text/css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="<%=basePath %>static/js/Platform-detail.js" type="text/javascript"  charset="gb2312"></script>
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
    </div></div>
<div class="detail-box">
    <div class="postion"><a href="news_pingtai">平台动态</a>&nbsp;>&nbsp;动态详情</div>
    <p class="detail-title">${dynamic.name}</p>
    <div class="detail-tip">
        <a>来源:<span>www.baidu.com</span></a>
        <a>发布时间:<span>${dynamic.time}</span></a>
        <a>字体：</a><i onclick="font_Change(1)" class="fa fa-plus-square"> </i><i  onclick="font_Change(-1)" class=" fa fa-minus-square-o" ></i>
    </div>
    <div id="detail-main">
        <h2>介绍</h2>
        ${dynamic.content}
    </div>
    <div class="back-top">
        <a id="backTop" title="回到顶部" onclick="backTop()"></a>
    </div>
</div>
<div class="footer">
    <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
    <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
    <p>鄂公网安备 42011102000110号</p>
    <p>武汉网监电子标识</p>
</div><!--底部-->

</body>
</html>