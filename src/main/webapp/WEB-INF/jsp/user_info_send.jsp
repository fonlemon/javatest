<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="<%=basePath %>static/css/PerSonPage-Center.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>static/css/PersonPage.css" type="text/css">
    <script src="<%=basePath %>static/js/PersonPage-center.js" type="text/javascript" charset="utf-8"></script>
    <script src="<%=basePath %>static/js/PersonPage.js" type="text/javascript"  charset="utf-8"></script>
    <script src="<%=basePath %>static/js/jquery.js" type="text/javascript"  charset="utf-8"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
<div id="top-box">
    <jsp:include   page="/common/top.jsp" flush="true"/>
    <div id="star_level" hidden>2.5</div>
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
            <li><a href="javascript:OpenDisplayDiv('basicInfo');">基本信息</a></li>
            <li><a href="javascript:OpenDisplayDiv('RelName');">实名认证</a></li>
            <li><a href="javascript:OpenDisplayDiv('InfoChange');">信息修改</a></li>
        </ul>
        <h3>发布任务</h3>
        <ul>
            <li><a href="company_collect">收藏的公司</a></li>
            <li><a href="<s:url value='/task/taskSend'/>">已发布的任务</a></li>
            <li><a href="task_finish">被完成的任务</a></li>
        </ul>
    </div>
    <div class="Per-Info">
        <div class="basicInfoShow" id="basicInfo">
            <div class="basicInfo">基本信息<!--<a href="#">编辑</a>--></div>
            <div class="Info-list">
                <div class="Info-list-name">用户名</div>
                <div class="Info-list-nameMore">${user.name}</div>
            </div>
            <div class="Info-list">
                <div class="Info-list-name">用户邮箱</div>
                <div class="Info-list-nameMore">${user.email}</div>
            </div>
            <div class="Info-list">
                <div class="Info-list-name">用户头像</div>
                <div class="Info-list-nameMore">
                    <div class="InfoImg">
                      <%--  不触发这个OpenChangeImg()方法--%>
                        <img src="${user.img}" title="点击修改" onclick="OpenChangeImg()"/>
                        <div class="allBackground" style="display:none"></div>
                        <div class="updateImg" style="display:none">

                            <p>图片修改<img src="<s:url value='/static/img/XX.png'/>" onclick="CloseChangeImg()" /> </p>
                            <img src="${user.img}" />
                            <a href="javascript:OpenUpdateImg()">点击上传</a>
                            <form id="updateImage" method="post" action="<s:url value='/user/updateImg'/>" enctype="multipart/form-data" >
                                <input class="hide" type="file" title="上传头像" name="fileField" id="upload" accept="image/gif,image/jpeg,image/jpg,image/png">
                                <div class="Info-list-nameMore"><input type="button" value="确认" class="changeImg" onclick="updateImg()"/></div>
                                <div class="Info-list-nameMore"><input type="button" value="取消" class="CloseChangeImg" onclick="CloseChangeImg()"/></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="Info-list">
                <div class="Info-list-name">用户信用等级</div>
                <div class="Info-list-nameMore"><div class="star-orange" id="star-num"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i></div></div>
            </div>
            <div class="Info-list">
                <div class="Info-list-name">用户简介</div>
                <div class="Info-list-nameMore" id="Info-content">
              		 <s:choose>
					 <s:when test="${user.introduction == null}">
						用户还未设置简介
					 </s:when>
					<s:otherwise>
						${user.introduction}
					</s:otherwise>
					</s:choose>  
                <a href="javascript:OnclickChangeInfo();">点击修改</a></div>
                <div class="Info-content-change">
                    <form method="post" action="#" id="changeIntroduction">
                         <label><textarea id="request" class="Info-content" name="selfContent"  maxlength="500" onkeyup="javascript:setShowLength(this, 500, 'cost_tpl_detail_length');"></textarea></label><span class="word-num" id="cost_tpl_detail_length">限制在500个字以内</span>
                        <input type="button" class="Info-content-sub" value="提交" onclick="changeIntroduction()">
                        <input type="button" class="Info-content-btn" value="取消" onclick="CloseNewInfo()">
                    </form>
                </div>
            </div>
        </div>
        <div class="basicInfoShow" id="RelName">
            <div class="basicInfo">实名认证<!--<a href="#">编辑</a>--></div>
            <form method="post" action="#">
                <div class="Info-list">
                    <div class="Info-list-name">真实姓名</div>
                    <div class="Info-list-nameMore"> <label><input type="text" name="RealName" placeholder="请输入姓名" id="RealName"/></label><span id="IdName"></span></div>
                </div>
               <div class="Info-list">
                    <div class="Info-list-name">身份证号</div>
                    <div class="Info-list-nameMore"> <label><input type="number" name="number" id="RealNumber" placeholder="请输入身份证号"/></label><span id="IdNumber"></span></div>
                </div>
                <div class="Info-list">
                    <div class="Info-list-nameMore"><input type="submit" value="认证" class="renzheng"/></div>
                </div>
            </form>
        </div>
        <div class="basicInfoShow" id="InfoChange" >
            <div class="basicInfo">信息修改<!--<a href="#">编辑</a>--></div>
            
            	<div class="Info-list" id="InfoName">
                    <div class="Info-list-name">用户名</div>
                    <div class="Info-list-nameMore"><a href="javascript:ChangePassEmail('DisDivName',1);">点击修改</a></div>
                </div>
                <div class="DisName" id="DisDivName">
                    <form method="post" action="#" id="changeName"> 
                        <div class="Info-list">
                            <div class="Info-list-name">输入用户名</div>
                            <div class="Info-list-nameMore"><label><input type="text" name="name"/></label></div>
                            <div class="Info-list-nameMore"><input type="button" value="确认" class="changeEmail" onclick="changeName()"/></div>
                            <div class="Info-list-nameMore"><input type="button" value="取消" class="CloseChangeEmail" onclick="ChangePassEmail('DisDivName',0)"/></div>

                        </div>
                    </form>
                </div>
                <div class="Info-list" id="InfoPass">
                    <div class="Info-list-name">密码</div>
                    <div class="Info-list-nameMore"><a href="javascript:ChangePassEmail('DisDivPass',1);">点击修改</a></div>
                </div>
                <div class="DisDiv" id="DisDivPass">
                    <form method="post" action="#" id="changePass">
                        <div class="Info-list">
                        <div class="Info-list-name">输入旧密码</div>
                        <div class="Info-list-nameMore"><label><input type="password" name="LastPass" id="LastPass" /></label><span id="LastPassPrint"></span></div>
                    </div>
                    <div class="Info-list">
                        <div class="Info-list-name">输入新密码</div>
                        <div class="Info-list-nameMore"><label><input type="password" name="NewPass" id="NewPass"/></label><span id="NewPassPrint"></span></div>
                    </div>
                    <div class="Info-list">
                        <div class="Info-list-name">确认新密码</div>
                        <div class="Info-list-nameMore"><label><input type="password" name="AgainNewPass" id="AgainNewPass" /></label><span id="AgainNewPassPrint"></span></div>
                    </div>
                        <div class="Info-list">
                        <div class="Info-list-nameMore"><input type="button" value="确认" class="changePass" id="PassBtn" disabled onclick="changePass()"/></div>
                        <div class="Info-list-nameMore"><input type="button" value="取消" class="CloseChangePass" id="closePass"/></div>
                        </div>
                    </form>
                </div>
                <div class="Info-list" id="InfoEmail" id="changeEmail">
                    <div class="Info-list-name">邮箱</div>
                    <div class="Info-list-nameMore"><a href="javascript:ChangePassEmail('DisDivEmail',1);">点击修改</a></div>
                </div>
                <div class="DisEmail" id="DisDivEmail">
                    <form method="post" action="#" id="changeEmail"> 
                        <div class="Info-list">
                            <div class="Info-list-name">输入新邮箱</div>
                             <div class="Info-list-nameMore"><label><input type="text" name="email" id="EmailNum"/></label><span id="EmailPrint"></span></div>
                        <div class="Info-list-nameMore"><input type="button" value="确认" class="changeEmail" id="EmailBtn" disabled  onclick="changeEmail()"/></div>
                        <div class="Info-list-nameMore"><input type="button" value="取消" class="CloseChangeEmail" id="closeEmail"/></div>
                        </div>
                    </form>
                </div>
        </div>
    </div>
</div>
<div class="footer">
    <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
    <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
    <p>鄂公网安备 42011102000110号</p>
    <p>武汉网监电子标识</p>
</div><!--底部-->
  <script src="<%=basePath %>static/js/user_common.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>