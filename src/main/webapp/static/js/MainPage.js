//存放不需要自动运行的函数 by yl

function screen() {
    var indexScreenImg = document.getElementById('index_screen_img');
    var indexScreen = document.getElementById('index_screen');
    var screenBo = document.getElementById('screen_bo').getElementsByTagName('span');
    var prev = document.getElementById('prev');
    var next = document.getElementById('next');
    var index=1;
    var screenNum = $("#screenNum").html();

	  function animate(offset) {   //4*1020 4080
		  var newLeft = parseInt(indexScreenImg.style.left) + offset;
		  indexScreenImg.style.left = newLeft + 'px';
		  if(newLeft<-1020*screenNum){
		      indexScreenImg.style.left = -1020 + 'px';
		  }
		  if(newLeft>-1020){
		      indexScreenImg.style.left = -1020*screenNum + 'px';
		  }
	}
    function showBott(){
        for(var i=0;i<screenBo.length;i++){
            screenBo[i].className='';
        }
        if(index>screenNum){
            index = 1;
        }
        if(index<1){
            index = screenNum;
        }
        screenBo[index - 1].className = 'on';
    }
    for(var j=0;j<screenBo.length;j++){
        screenBo[j].onclick = function(){
            if(this.className == 'on'){
                return;
            }

            var myIndex = parseInt(this.getAttribute('id'));
            var offset = -1020 * (myIndex - index);
            animate(offset);
            index = myIndex;
            showBott();
        }
    }

    function play(){
        timer = setInterval(function(){
            next.onclick();
        },4000);
    }
    function stop(){
        clearTimeout(timer);
    }
    next.onclick = function () {
        index = index + 1;
        showBott();
        animate(-1020);
    };
    prev.onclick = function () {
        index = index - 1;
        showBott();
        animate(1020);
    };
    indexScreen.onmouseover = stop;
    indexScreen.onmouseout = play;
    play();
}
function showDisplay(){
    var oLi = document.getElementsByClassName('content-list-box');
    var oDiv = document.getElementsByClassName('box-detail');
    for(var i=0;i<oLi.length;i++) {
        oLi[i].num = i;
        oLi[i].onmouseover = function () {
            for (var j = 0; j < oDiv.length; j++) {
                oDiv[j].style.display = 'none';
            }
            oDiv[this.num].style.display = 'block';
        };
        oLi[i].onmouseout = function () {
            for (var j = 0; j < oDiv.length; j++) {
                oDiv[j].style.display = 'none';
            }
        }
    }
}
function backTop(){
    var osTop = document.documentElement.scrollTop || document.body.scrollTop;
    document.documentElement.scrollTop = document.body.scrollTop -= osTop;
}
window.onscroll = function () {
    if ( document.body.scrollTop > 400 ||  document.documentElement.scrollTop>400) {
        document.getElementById("backTop").style.display = "block";
    }
    else {
        document.getElementById("backTop").style.display = "none";
    }
};
window.onload = function(){
    var user_id=document.getElementById('user_id');
    var IS_id = user_id.innerText;
    var NotLog = document.getElementById('NotLogin');
    var HasLog = document.getElementById('HasLogin');
    var HasOutLog = document.getElementsByClassName('Out-Self-Info')[0];
    var HasInLog = document.getElementsByClassName('in-Self-Info')[0];
    switch (IS_id){
        case '0':
            NotLog.style.display = "block";
            HasLog.style.display = "none";
            HasOutLog.style.display = "none";
            HasInLog.style.display = "none";
            break;
        case '1':
            NotLog.style.display = "none";
            HasLog.style.display = "block";
            HasOutLog.style.display = "block";
            HasInLog.style.display = "none";
            break;
        case '2':
            NotLog.style.display = "none";
            HasLog.style.display = "block";
            HasInLog.style.display = "block";
            HasOutLog.style.display = "none";
            break;
        default :
            NotLog.style.display = "block";
            HasLog.style.display = "none";
            HasOutLog.style.display = "none";
            HasInLog.style.display = "none";
    }
    
   
    getAdList();
    screen();
    getCatList();
    showDisplay();
};
function OpenSelf(className){
    var NeedName = document.getElementsByClassName(className);
    for(var i=0;i<NeedName.length;i++){
        NeedName[i].style.display = "block";
    }

}
function CloseSelf(className){
    var NeedName = document.getElementsByClassName(className);
    for(var i=0;i<NeedName.length;i++){
        NeedName[i].style.display = "none";
    }
}
function getAdList(){
	 $.ajax({
    //几个参数需要注意一下
        type: "GET",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "http://localhost:8080/data_analyse/ad/getAdList" ,//url
        async:false, 
//        data: $('#changeName').serialize(),
        success: function (result) {
        	
        	var dataObj = result.data;//返回的result为json格式的数据
            var con = "";
            var con1 = "";
            var span = "";
           
            for(var i=1;i<=result.num;i++){
            	if(i==1){
            		span+="<span id='"+i+"' class='on'></span>";
            	}else{
            		span+="<span id='"+i+"' ></span>";
            	}
                 
            }
            $.each(dataObj, function(index, item){
            	if(index==result.num-1){
            		con += "<a href='#'><img src="+item.url+"></a>"
            		con +=con1;
            	}else if(index==0){
            		con += "<a href='#'><img src="+item.url+"></a>"
            		con1="<a href='#'><img src="+item.url+"></a>";
            	}else{
            		con += "<a href='#'><img src="+item.url+"></a>"
            	};
            	
            });
          
            $("#index_screen_img").html(con); //把内容入到这个div中即完成
            $("#screen_bo").html(span);
            $("#screenNum").html(result.num);
        },
        error : function() {
            alert("异常！");
        }
    });
}

function getCatList(){
	$.ajax({
		 type: "GET",//方法类型
	        dataType: "json",//预期服务器返回的数据类型
	        url: "http://localhost:8080/data_analyse/item/getCatList" ,//url
	        async:false, 
	        success: function (result) {	
	        	var dataObj = result.data;//返回的result为json格式的数据
	            var div = "";
	            var num=0;
	            
	            $.each(dataObj, function(index, item){
	            num=num+1;
	            var child = item.childItem
            	div +=" <div class='content-list-box'>"
                div +="     <p>"+item.itemCategory.name+"</p>"
                var name = item.itemCategory.name.split('、')[0]
                if(num>10){
                	div +="     <div class='box-detail' style='top: -127px;'>" 
            			
                	
                }else{
                	div +="     <div class='box-detail'>" 
                			
                	
                }
	            div +="<p ><a class='content-list-title'>"+name+"</a></p>"
	            div +="<p class='content-list-main'>"
	            for(var i=0;i<item.childItem.length;i++){
    				
    				div +="<a href='#'>"+child[i].name+"</a>"
    			}
       
	            div +=" </p>"
	            div +=" </div>"
                div +=" </div>"
                	
            	
            });            
	            $("#content-list-id").append(div);
	        },
	        error : function() {
	            alert("异常！");
	        }
	});
}


