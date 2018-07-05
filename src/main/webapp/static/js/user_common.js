/**
 * 
 */
function changeName() {
    $.ajax({
    //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "http://localhost:8080/data_analyse/user/changeName" ,//url
        data: $('#changeName').serialize(),
        success: function (result) {
            if (result.status == 200) {
            	alert(result.msg);
                location.reload();
            }else{
           	 var EmailPrint = document.getElementById('EmailPrint');
        	 EmailPrint.innerHTML = '<i class="fa fa-check-circle"></i>'+result.msg;
        }
            ;
        },
        error : function() {
            alert("异常！");
        }
    });
}

function changePass() {
    $.ajax({
    //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "http://localhost:8080/data_analyse/user/changePass" ,//url
        data: $('#changePass').serialize(),
        success: function (result) {
            if (result.status == 200) {
                alert(result.msg);
                location.reload();
            }else{
            	var LastPassPrint = document.getElementById('LastPassPrint');
            	 LastPassPrint.innerHTML = '<i class="fa fa-check-circle"></i>'+result.msg;
            }
            ;
        },
        error : function() {
            alert("异常！");
        }
    });
}

function changeEmail() {
    $.ajax({
    //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "http://localhost:8080/data_analyse/user/changeEmail" ,//url
        data: $('#changeEmail').serialize(),
        success: function (result) {
            if (result.status == 200) {
                alert(result.msg);
                location.reload();
            }else{
            	 var EmailPrint = document.getElementById('EmailPrint');
            	 EmailPrint.innerHTML = '<i class="fa fa-check-circle"></i>'+result.msg;
            }
            ;
        },
        error : function() {
            alert("异常！");
        }
    });
}

function changeIntroduction(){
	$.ajax({
	    //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "http://localhost:8080/data_analyse/user/changeIntroduction" ,//url
        data: $('#changeIntroduction').serialize(),
        success: function (result) {
            if (result.status == 200) {
                alert(result.msg);
                location.reload();
            }else{
            	alert(result.msg);
            }
            ;
        },
        error : function() {
            alert("异常！");
        }
    });
}

function updateImg(){
	var form = document.getElementById('updateImage');
	form.submit();
	
}

