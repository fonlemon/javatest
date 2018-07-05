/**
 * 
 */
var messageArr = {};
$(function(){
	mseeage.init();
	bindEvent.init();
	
});

var bindEvent = {
		//初始化
		init :function(){
			this.sendEvent();
		},
		//渲染视图
		viewEvent: function(){
			$(".list-group-item").not(":eq(0)").click(function(){
				var name = $(this).attr("value");
				$(".panel-primary").hide();
				$("#"+name).show();
				$("#to").val(name);
				messageArr[name] = null;
				$(".list-group-item[value='" + name + "']").find("span").html("");
			    $("#send_text").show();
			    $("#execute_send").show();
			});
		},
		//发送消息
		sendEvent : function(){
			//发送
			$('#btn_send').click(function(){
				mseeage.snedMessage();
			});
			//关闭
			$('#btn_close').click(function(){
			  	$(".panel-primary").remove();
				 $("#send_text").hide();
				 $("#execute_send").hide();
			});
			//enter事件
		    $(window).keydown(function(event){
				  if(event.keyCode ==13){
					  mseeage.snedMessage();
					  }
				  });
		}
}

var mseeage ={
	init : function(){
		this.initOnlineUsers();
		this.initSocket();
	},
	//初始化在线用户
	initOnlineUsers : function(){
		$.ajax({
			url:contextPath + "/message/onlineUsers",
			success :  function(data){
				var $html =""
			    var $content = "";
				for (var i = 0; i < data.length; i++) {
					var  userName = data[i].userName;
					var  alias = data[i].alias;
					 $html +=" <li class='list-group-item' value='"+alias+"'>"+userName+"<span class='badge'></span></li>"
					 $content +="<div class='panel panel-primary' style='height:400px;display:none' id='"+alias+"'>" +
					 		" <div class='panel-heading'>聊天栏--<span>"+userName+"</span></div>" +
					 		"<div id='tolk' class='panel-body'></div></div>";
				}
				$('#chatwindows').append($content);
				$("#online").not("li:eq(0)").append($html);
				//绑定点击事件
				bindEvent.viewEvent();
			}
		})
	},
	//初始化
	initSocket : function(){
		var userName = $("#username").val();
		var socket = new SockJS(contextPath + "/" + wsEndPoint);
		var stompClient = Stomp.over(socket);
	    stompClient.connect({}, function(frame) {
	        stompClient.subscribe('/topic/'+userName, function(greeting){
	        	var result=eval("("+greeting.body+")");
	        	console.log(result);
	        	var msg_="<br>"+result.from+"说："+result.message;
	        	$("#"+result.from).find("div:eq(1)").append(msg_);
	        	if($('#to').val() != result.from){
	        		if(messageArr[result.from]){
	        			messageArr[result.from]++;
	        		}else{
	        			messageArr[result.from] = 1;
	        		}
					$(".list-group-item[value='" + result.from + "']").find("span").html(messageArr[result.from]);
	        	}
	        	
	        });
	    });

	},
	//发送消息
	snedMessage : function(){
		var messge = $("#messgeContext").val();
		var from = $("#username").val();
		var to = $("#to").val();
		if(messge.trim().length>0 && $("#to").val()){
			var data = {
				from : from,
				to :to,
				message : messge
			}
			$.ajax({
				url:contextPath + "/message/sendMessage",
				data: data,
				success :  function(data){
					$("#messgeContext").val("");
				}
			})
		}else{
			toastr.warning("请输入消息!");
		}
	}
};
