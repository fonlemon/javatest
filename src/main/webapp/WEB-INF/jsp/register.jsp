    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
            <%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
        <!DOCTYPE html>
        <html>
        <head lang="en">
        <meta charset="UTF-8">
        <title>注册</title>
        </head>
        <link rel="stylesheet" href="<%=basePath %>static/css/Reg.css" type="text/css">
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <script src="<%=basePath %>static/js/Reg.js" type="text/javascript"  charset="utf-8"></script>
        <body>
        <div id="user_id" hidden>${log}</div>
        <div id="top-box">
        <jsp:include   page="/common/top.jsp" flush="true"/>
        </div>
      
        <div class="registration-main" id="registration-main">
        <div class="registration-type">
        <label><input name="user-type" type="submit" class="type" value="发布方"></label>
        <label><input name="user-type" type="submit" class="type" value="解决方"></label>
        </div>
        <form  action="<s:url value="/doregister" />" method="post"  target="nm_iframe">
        <div class="user-type">我是发布方</div>
        <div class="rechoose">重新选择</div>
        <div class="registration-main-input"><a>电子邮箱</a>
        <span id="">${msg }</span>
        <label><input name="email" type="text" class="registration-main-text" placeholder="常用邮箱账号" ></label>
        <p class="tip"><i class="fa fa-exclamation-circle"></i>邮箱格式不正确，请重新输入</p></div><br/>
        <div class="registration-main-input"><a>密码</a>
        <label><input  name="password"  type="password" class="registration-main-text" placeholder="6-16位（数字/字符/字母）"></label>
        <p class="tip"><i class="fa fa-exclamation-circle"></i>邮箱格式不正确，请重新输入</p></div><br/>
        <div class="registration-main-input"><a>确认密码</a>
        <label><input  name="user-information"  type="password" class="registration-main-text"  disabled></label>
        <p  class="tip"><i class="fa fa-exclamation-circle"></i>请再输一次</p></div><br/>
        <div class="registration-main-input"><a>验证码</a>
        <label><input  name="user-information"  type="text" class="registration-main-verification"></label>
        <div class="registration-main-verification-pic"><a href="#"></a></div>
        <p class="tip"><i class="fa fa-exclamation-circle"></i>看不清？点击图片更换验证码</p></div>
        <input type="submit" value="注册" class="registration-main-button"  disabled  >
        <iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>
        <label><input value="1" name="type" hidden></label>
        </form>
        <form  action="<s:url value="/doregister" />" method="post"  target="nm_iframe">
        <div class="user-type" >我是解决方</div>
        <div class="rechoose">重新选择</div>
        <div class="registration-main-input"><a>电子邮箱</a>
        <label><input  name="email"  type="text" class="registration-main-text" placeholder="常用邮箱账号" ></label>
        <p class="tip"><i class="fa fa-exclamation-circle"></i>邮箱格式不正确，请重新输入</p></div><br/>
        <div class="registration-main-input"><a>密码</a>
        <label><input  name="password"  type="password" class="registration-main-text" placeholder="6-16位（数字/字符/字母）"></label>
        <p class="tip"><i class="fa fa-exclamation-circle"></i>邮箱格式不正确，请重新输入</p></div><br/>
        <div class="registration-main-input"><a>确认密码</a>
        <label><input  name="user-information"  type="password" class="registration-main-text"  disabled></label>
        <p  class="tip"><i class="fa fa-exclamation-circle"></i>请再输一次</p></div><br/>
        <div class="registration-main-input"><a>验证码</a>
        <label><input  name="user-information"  type="text" class="registration-main-verification"></label>
        <div class="registration-main-verification-pic"><a href="#"></a></div>
        <p class="tip"><i class="fa fa-exclamation-circle"></i>看不清？点击图片更换验证码</p>
        </div>
        <input type="submit" value="注册" class="registration-main-button" disabled >
        <label><input value="2" name="type" hidden></label>
        </form>
        <%-- <div id="Reg-suc">
        <div class="suc-logo"><p><i class="fa fa-check"></i>注册成功</p><a href="<s:url value="/user/login"/>">点击登录</a></div>
        </div> --%>
        </div><!--注册-->
        <div class="footer">
        <p class="a-margin"><a href="#">关于我们</a>|<a href="#">加入我们</a>|<a href="#">服务协议</a></p>
        <p>CopyRight?2005-2015 一幅图 鄂ICP备05005325号-2经营许可证编号：鄂ICP备05005325号 企业营业执照：420111000102120</p>
        <p>鄂公网安备 42011102000110号</p>
        <p>武汉网监电子标识</p>
        </div><!--底部-->
        </body>
        </html>