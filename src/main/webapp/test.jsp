<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>Landing Page | Amaze UI Example</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <script src="assets/js/jquery.min.js"></script>
     <script src="<%=basePath %>static/js/message.js" type="text/javascript"  charset="utf-8"></script>
    <style type="text/css">
    	*{
    		margin:0;
    		padding:0
    	}
    	body{
    		font-size:14px;
    	}
    	
    	.main{
    		width:850px;
    		height:530px;
    		margin:30px auto;
    		border:1px solid #c1bbb7;		
    	}
    	.left{
    		width:240px;
    		height:530px;
    		float:left;
    	}
    	.left div{
    		width:240px;
    		background-color:#2b3137;	
    	}
    	.left-top{
    		height:75px;
    		position:relative;
    	}
    	.left-top img{
    		width:57px;
    		height:60px;
    		border-radius: 12px; 
    		margin-top:15px;
    		margin-left:15px;
    	}
    	.left-top span{
    		color:white;
    		position:absolute;
    		top:23px;
    		left:80px;
    		font-size:16px;
    	}
    	.left-search{
    		height:40px;	
    		
    	}
    	.left-search input{
    		height:28px;
    		width:215px;
    		background-color:#25282c;
    		border:none;
    		outline:none;
    		margin-left:15px;
    		margin-top:12px;
    	}
    	.left-list{
    		height:416px;
    	}
    	.list-top{
    		height:40px;
    		border-bottom:1px solid #25282c;
    	}
    	.list-main-detail img{
    		width:35px;
    		height:35px;
    		border-radius: 10px; 
    		margin-top:10px;
    		margin-left:15px;
    	}
    	.list-main-detail{
    		position: relative;
    		padding-bottom:10px;
    		border-bottom:1px solid #25282c;
    	}
    	.list-main-detail span{
    		position:absolute;
    		top:10px;
    		left:60px;
    		color:white;
    	}
    	.list-main-detail .list-time{
    		color:#47515b;
    		font-size:10px;
    		left:200px;
    	}
    	.right {
    		width:608px;
    		height:530px;
    		float:left;
    	}
    	.right div{
    		background-color:#f0efed;
    		width:610px;	
    	}
    	.right-title{
    		height:45px;
    		border-bottom:1px solid #e2e0dc;
    	}
    	.right-title div{
    		color:#7b7a79;
    		line-height:45px;
    		text-align:center;
    		margin:0 auto;
    		width:200px;
    		
    	}
    	.right-main{
    		height:347px;
    		border-bottom:1px solid #e2e0dc;
    	}
    	.right-input{
    		height:136x;
    		position:relative;
    	}
    	.right-input textarea{
   		    width: 610px;
   			height: 111px;
   			background-color:#f0efed;
   			outline:none;
   			border:none;
    	}
    	.right-input button{
    		width:70px;
    		height:25px;
    		background-color:white;
    		border:1px solid #e2e0dc;
    		outline:none;
    		position: relative;
    		bottom: 0px;
    		left: 540px;
    	}
    </style>
</head>
<script type="text/javascript">
var Chat = {};
Chat.socket = null;
// 创建一个websocket实例
Chat.connect = (function(host) {
    if ('WebSocket' in window) {
        Chat.socket = new WebSocket(host);
    } else if ('MozWebSocket' in window) {
        Chat.socket = new MozWebSocket(host);
    } else {
        Console.log('Console.log:你的浏览器不支持WebSocket');
        return;
     }
    Chat.socket.onopen = function(){
         Console.log('Console.log:WebSocket链接打开');
         //按下回车键发送消息
         document.getElementById('chat').onkeydown = function(event) {
             if (event.keyCode == 13) {
                 Chat.sendMessage();
             }
         };
     };
     Chat.socket.onclose = function () {
         document.getElementById('chat').onkeydown = null;
         Console.log('Console.log:WebSocket前端链接关闭');
     };
     Chat.socket.onmessage = function (message) {
         Console.log(message.data);
     };
});
Chat.initialize = function() {
	//链接地址选择聊天页面的URL  
    if (window.location.protocol == 'http:') {
        Chat.connect("ws://" + window.location.host + "/onLineChat/index.jsp");
    } else {
        Chat.connect("wss://" + window.location.host + "/onLineChat/index.jsp");
    }
};
//发送消息函数，后面动态添加了发送好友的唯一ID 
Chat.sendMessage = (function() {
	var fid = $("#hidden-fid").val();
    var messageContain = document.getElementById('chat').value;
    var message = messageContain +"-"+fid;
    if(fid==""){
    	alert("未选择发送消息的好友！");
    	return;
    }else{
    	if (messageContain != "") {
            Chat.socket.send(message);
            document.getElementById('chat').value = '';
        }else{
        	alert("发送消息不能为空！");
        }
    }
});
 var Console = {};
 Console.log = (function(message) {
     var console = document.getElementById('console');
     var p = document.createElement('p');
     p.style.wordWrap = 'break-word';
     p.innerHTML = message;
     console.appendChild(p);
     console.scrollTop = console.scrollHeight;
 });
//初始化函数
 Chat.initialize();
 document.addEventListener("DOMContentLoaded", function() {
     var noscripts = document.getElementsByClassName("noscript");
     for (var i = 0; i < noscripts.length; i++) {
         noscripts[i].parentNode.removeChild(noscripts[i]);
     }
 }, false);
</script>
<body>  
<div class="main">
	<div class="left">
		<div class="left-top">
			<img src="http://192.168.56.129/images/2018/6/21/46b98912aaa560027437.jpg" />
			<span>名字</span>
		</div>
		<div class="left-search">
			<input type="text" name="search"/>
		</div>
		<div class="left-list">
			<div class="list-top">
				<div class="list-top-detail"></div>
				<div class="list-top-detail"></div>
				<div class="list-top-detail"></div>
			</div>
			<div class="list-main">
				<div class="list-main-detail">
					<img src="http://192.168.56.129/images/2018/6/18/44eaad893b42c92cab2c.jpg" />
					<span>名字</span>
					<span class="list-time">时间</span>
				</div>
			</div>
		</div>
	</div>
	<div class="right">
		<div class="right-title">
			<div>名字</div>
		</div>
		<div class="right-main"></div>
		<div class="right-input">
			<textarea rows="3" cols="20"></textarea>
			<button onclick="">发送</button>
		</div>
	</div>
</div>
  
</body>  
</html> 