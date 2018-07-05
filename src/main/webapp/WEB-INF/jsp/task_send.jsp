<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>个人中心发布任务</title>
    <link rel="stylesheet" href="<%=basePath %>static/css/PersonPage.css" type="text/css">
    <script src="<%=basePath %>static/js/PersonPage.js" type="text/javascript"  charset="gb2312"></script>
    <script src="<%=basePath %>static/js/PersonPage-Accept.js" type="text/javascript"  charset="gb2312"></script>
    <link rel="stylesheet" href="<%=basePath %>static/css/PersonPage-Accept.css" type="text/css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div id="top-box">
   <jsp:include   page="/common/top.jsp" flush="true"/>
</div><!--头部结束-->
<div class="PerBody">
    <div class="Per-top">
        <div class="top-pic"><img src="${user.img}"></div>
        <div class="top-name">${user.name}</div>
        <div class="top-text">${user.introduction}</div>
    </div>
    <div class="Per-left" id="Per-left">
        <h3>账户管理</h3>
        <ul>
            <li><a href="<s:url value='/user/userInfo'/>">基本信息</a></li>
            <li><a href="<s:url value='/user/userInfo'/>">实名认证</a></li>
            <li><a href="<s:url value='/user/userInfo'/>">信息修改</a></li>
        </ul>
        <h3>发布任务</h3>
        <ul>
            <li><a href="company_collect">收藏的公司</a></li>
            <li><a href="<s:url value='/task/taskSend'/>">已发布的任务</a></li>
            <li><a href="task_finish">被完成的任务</a></li>
        </ul>
    </div>
    <div id="order" hidden>2</div>
    <div class="Per-right">
        <div class="right-top" id="order">
            <div>
                <span>排序:</span>
                <a  onclick="order(0)">价格</a>
                <a  onclick="order(1)">发布时间</a>
            </div>
            <label>
                <input type="text"  placeholder="任务搜索">
                <input type="button" class="but"> </label>
        </div>
        <div class="right-mid">
            <div class="task-message">
            	<s:choose>
            		<s:when test="${taskList==null && fn:length(taskList) == 0 }">
            				
				        	没有已发布任务，想要发布？<a class="orange" href="<s:url value='/task/publish'/>">点击此处</a>
				    </s:when>
				    <s:otherwise>
				    	<div>还想发布任务？<a class="orange" href="<s:url value='/task/publish'/>">点击此处</a></div>
		            	<s:forEach items="${taskList}" var="task">
			            	<s:url var="taskUrl" value="/task/detail">
								<s:param name="type">${user.type }</s:param>
								<s:param name="id">${task.id }</s:param>
							</s:url>
			                <div class="task-message-Exhibition">
			                    <a href="${taskUrl }"><img src="${task.img }"></a>		
			                    <div class="task-message-Exhibition-text"><a href="${taskUrl }"></a></div>
			                    <div class="task-message-Exhibition-price">¥：<a href="${taskUrl }">${task.determinePrice }</a></div>
			                    <div class="task-message-Exhibition-time">
			                        <a>发布时间：<span><fmt:formatDate value="${task.releaseTime }" type="date"/></span></a>
			                    </div>
			                </div>
		               </s:forEach>
    				</s:otherwise>	
    			</s:choose>
            </div><!--推荐内容-->
        </div>
    </div><!--推荐内容-->
</div>
<div class="right-bot">
    <div class="platform-page">
        <a  class="page">首页</a>
        <a class="page">上一页</a>
        <a  class="page1 click">1</a>
        <a class="page1">2</a>
        <a class="page1">3</a>
        <a  class="page2">...</a>
        <a class="page1">10</a>
        <a class="page">下一页</a>
        <a class="page">末页</a>
    </div>
</div>
<div class="footer">
    <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
    <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
    <p>鄂公网安备 42011102000110号</p>
    <p>武汉网监电子标识</p>
</div><!--底部-->
</body>
<script type="text/javascript">
  /*   window.onload=function(){
        order(0);
    };
    var i_piece=0;
    var i_time=0;
    var a_order = document.getElementById('order').getElementsByTagName('a');
    function order(indenx){
        for(var i=0;i<2;i++){
            a_order[i].className='order';
        }
        if(indenx==0){
            i_time=0;
            a_order[1].innerHTML="发布时间";
            switch (i_piece){
                case 0:a_order[indenx].innerHTML="价格<i class='fa fa-sort-asc'></i>";i_piece++;break;
                case 1:a_order[indenx].innerHTML="价格<i class='fa fa-sort-desc'></i>";i_piece++;break;
                default :i_piece=0;order(indenx);break;
            }
        }
        if(indenx==1){
            i_piece=-0;
            a_order[0].innerHTML="价格";
            switch (i_time){
                case 0:a_order[indenx].innerHTML="发布时间<i class='fa fa-sort-asc'></i>";i_time++;break;
                case 1:a_order[indenx].innerHTML="发布时间<i class='fa fa-sort-desc'></i>";i_time++;break;
                default :i_time=0;order(indenx);break;
            }
        }
        a_order[indenx].className='onclock';
    } */
</script>
</html>
