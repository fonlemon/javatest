/**
 * Created by yl on 2017/5/14.
 */

window.onload = function(){
    var PerLeftPbj = document.getElementById('Per-left').getElementsByTagName('a');
    PerLeftPbj[0].style.color='#ff6501';
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

    var level=document.getElementById("star_level").innerText;
    var star_level=document.getElementById('star-num').getElementsByTagName('i');
    for(var i=0;i<=4;i++){
        star_level[i].className='fa fa-star-o';
    }
    switch (level){
        case '0':
            for(var j=0;j<=4;j++){
                star_level[j].className='fa fa-star-o';
            }break;
        case '0.5':
            star_level[0].className='fa fa-star-half-o';break;
        case '1':
            star_level[0].className='fa fa-star';break;
        case '1.5':
            star_level[0].className='fa fa-star';
            star_level[1].className='fa fa-star-half-o';break;
        case '2':
            for(j=0;j<2;j++){
                star_level[j].className='fa fa-star'
            }break;
        case '2.5':
            for(j=0;j<2;j++){
                star_level[j].className='fa fa-star'
            }
            star_level[2].className='fa fa-star-half-o';break;
        case '3':
            for(j=0;j<3;j++){
                star_level[j].className='fa fa-star'
            }break;
        case '3.5':
            for(j=0;j<3;j++){
                star_level[j].className='fa fa-star'
            }
            star_level[3].className='fa fa-star-half-o';
            break;
        case '4':
            for(j=0;j<4;j++){
                star_level[j].className='fa fa-star'
            }break;
        case '4.5':
            for(j=0;j<4;j++){
                star_level[j].className='fa fa-star'
            }
            star_level[4].className='fa fa-star-half-o';
            break;
        case '5':
            for(j=0;j<5;j++){
                star_level[j].className='fa fa-star'
            }break;
    }
    isCardNo();
};
function CloseChangeImg(){
    document.getElementsByClassName('allBackground')[0].style.display='none';
    document.getElementsByClassName('updateImg')[0].style.display='none';
}
function OpenChangeImg(){
    document.getElementsByClassName('allBackground')[0].style.display='block';
    document.getElementsByClassName('updateImg')[0].style.display='block';
}
function OpenUpdateImg(){
    document.getElementsByClassName('hide')[0].click();
}
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
function OpenDisplayDiv(divID){
    var basicInfoObj = document.getElementById('basicInfo');
    var RenameObj = document.getElementById('RelName');
    var InfoChangeObj = document.getElementById('InfoChange');
    var PerLeftPbj = document.getElementById('Per-left').getElementsByTagName('a');
    basicInfoObj.style.display='none';
    RenameObj.style.display='none';
    InfoChangeObj.style.display='none';
    for(var i=0;i<PerLeftPbj.length;i++){
        PerLeftPbj[i].style.color='#000';
    }
    switch(divID)
    {
        case 'basicInfo':
            PerLeftPbj[0].style.color='#ff6501';
            break;
        case 'RelName':
            PerLeftPbj[1].style.color='#ff6501';
            break;
        default:
            PerLeftPbj[2].style.color='#ff6501';
    }
    document.getElementById(divID).style.display='block';

}
function OnclickChangeInfo(){
    var InfoContObj = document.getElementById('Info-content');
    InfoContObj.style.display="none";
    var ChangeObj = document.getElementsByClassName('Info-content-change')[0];
    ChangeObj.style.display="block";
}
function CloseNewInfo(){
    var InfoContObj = document.getElementById('Info-content');
    InfoContObj.style.display="block";
    var ChangeObj = document.getElementsByClassName('Info-content-change')[0];
    ChangeObj.style.display="none";
}


function ChangePassEmail(DivId,OpenClose){
    document.getElementById('InfoPass').style.display = "none";
    document.getElementById('DisDivEmail').style.display = "none";
    document.getElementById('InfoEmail').style.display = "none";
    document.getElementById('DisDivPass').style.display = "none";
    document.getElementById('InfoName').style.display = "none";
    document.getElementById('DisDivName').style.display = "none";
    if(OpenClose==1){
    	document.getElementById(DivId).style.display = "block";
    }else{
    	document.getElementById('InfoName').style.display = "block";
    	document.getElementById('InfoPass').style.display = "block";
    	document.getElementById('InfoEmail').style.display = "block";
    }

}

function setShowLength(obj, maxlength, id)
{
    var rem = maxlength - obj.value.length;
    var wid = id;
    if (rem < 0){
        rem = 0;
    }
    document.getElementById(wid).innerHTML = "还可以输入" + rem + "字数";
}
function isCardNo() {
    var InfoNumber = document.getElementById('RealNumber');
    var PrintObj = document.getElementById('IdNumber');
    var InfoName = document.getElementById('RealName');
    var PrintIdName = document.getElementById('IdName');
    var LastPass = document.getElementById('LastPass');
    var NewPass = document.getElementById('NewPass');
    var AgainNewPass = document.getElementById('AgainNewPass');
    var LastPassPrint = document.getElementById('LastPassPrint');
    var NewPassPrint = document.getElementById('NewPassPrint');
    var AgainNewPassPrint = document.getElementById('AgainNewPassPrint');
    var PassBtn = document.getElementById('PassBtn');
    var EmailNum = document.getElementById('EmailNum');
    var EmailPrint = document.getElementById('EmailPrint');
    var EmailBtn = document.getElementById('EmailBtn');
    var closePass = document.getElementById('closePass');
    var closeEmail = document.getElementById('closeEmail');
    var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/g;
    // var Pass=/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/;
    var regName =/^[\u4e00-\u9fa5]{2,4}$/;
    var reg_mail = /^([\w_-])+@([\w_-])+((\.[\w_-]{2,3}){1,2})$/g;
    InfoName.onblur = function(){
        if (regName.test(this.value)) {
            PrintIdName.innerHTML = '<i class="fa fa-check-circle"></i>&nbsp;OK!';
            PrintIdName.style.color = "#ff5B00";
        }
        else if (this.value == "") {
            PrintIdName.innerHTML = "";
            PrintIdName.setAttribute('placeholder', "请输入姓名");
        }
        else {
            PrintIdName.innerHTML = '<i class="fa fa-exclamation-triangle"></i>真实姓名填写有误，请重新输入';

        }
    };
    InfoNumber.onblur = function(){
        if (this.value == "") {
            PrintObj.innerHTML = "";
            InfoNumber.setAttribute('placeholder', "请输入身份证号");
        }else if (reg.test(this.value)) {
            PrintObj.innerHTML = '<i class="fa fa-check-circle"></i>&nbsp;OK!';
            PrintObj.style.color = "#ff5B00";
        }
        else {
            PrintObj.innerHTML = '<i class="fa fa-exclamation-triangle"></i>身份证格式不正确，请重新输入';

        }
    };
    LastPass.onfocus = function(){
        if(this.value==""){
            LastPassPrint.innerHTML = '<i class="fa fa-exclamation-circle"></i></i>请输入原密码';
        }
    };
    LastPass.onkeyup = function(){
        if(LastPass.value==""){
            LastPassPrint.innerHTML="";
        }else if(this.value.length>0&&this.value.length<16){
            LastPassPrint.innerHTML = '<i class="fa fa-check-circle"></i>&nbsp;OK!';
        }
    };
    NewPass.onfocus = function () {
        if(this.value=="") {
            NewPassPrint.innerHTML = '<i class="fa fa-exclamation-circle"></i></i>请设置密码6-16位（数字/字符/字母）。';
        }
    };
    NewPass.onkeyup = function(){
        if(NewPass.value==""){
            NewPassPrint.innerHTML=" ";
        }else if(NewPass.value==LastPass.value){
            NewPassPrint.innerHTML = '<i class="fa fa-exclamation-triangle"></i>新密码不能与旧密码一样。';
        }
        else if(this.value.length <6 && this.value.length >0){
            NewPassPrint.innerHTML = '<i class="fa fa-exclamation-triangle"></i>密码不能小于6个字符。';
        }
        else if (this.value == "") {
            NewPassPrint.innerHTML = "";
            NewPass.setAttribute('placeholder', "请输入新密码");
        }
        else if(this.value.length > 16){
            NewPassPrint.innerHTML = '<i class="fa fa-exclamation-triangle"></i>密码不能大于16个字符。';
        }
        else {
            AgainNewPass.disabled = false;
            NewPassPrint.innerHTML = '<i class="fa fa-check-circle"></i>&nbsp;OK!';
        }
    };
    AgainNewPass.onfocus = function () {
        if(this.value=="" && NewPass.value !="" ) {
            AgainNewPassPrint.innerHTML = '<i class="fa fa-exclamation-circle"></i>请再输一次';
        }
    };
    AgainNewPass.onkeyup = function () {
        if (this.value == NewPass.value) {
            PassBtn.disabled=false;
            PassBtn.style.backgroundColor="#ff6501";
            PassBtn.style.border="1px solid #ff6501";
            AgainNewPassPrint.innerHTML = '<i class="fa fa-check-circle"></i>&nbsp;OK!';
        }
        else if(this.value == ""){
            AgainNewPass.innerHTML = "";
            AgainNewPass.setAttribute('placeholder', "请输入新密码");
        }
        else {
            AgainNewPassPrint.innerHTML = '<i class="fa fa-exclamation-triangle"></i>两次密码不一致，请重新输入';
        }
    };
    EmailNum.onfocus = function(){
        EmailPrint.innerHTML = '<i class="fa fa-exclamation-circle"></i>请输入你的电子邮箱';
    };
    EmailNum.onblur = function(){
        if (reg_mail.test(this.value)) {
            EmailBtn.disabled=false;
            EmailBtn.style.backgroundColor="#ff6501";
            EmailBtn.style.border="1px solid #ff6501";
            EmailPrint.innerHTML = '<i class="fa fa-check-circle"></i>&nbsp;OK!';
        }
        else if (this.value == "") {
            EmailNum.setAttribute('placeholder', "常用邮箱账号");
            EmailPrint.innerHTML="";
        }
        else {
            EmailPrint.innerHTML = '<i class="fa fa-exclamation-triangle"></i>邮箱格式不正确，请重新输入';
        }
    };
    closePass.onclick=function(){
        LastPass.value="";
        LastPassPrint.innerHTML="";
        NewPass.value="";
        NewPassPrint.innerHTML="";
        AgainNewPassPrint.innerHTML="";
        AgainNewPass.value="";
        ChangePassEmail('DisDivPass',0);
    };
    closeEmail.onclick=function(){
        EmailNum.value="";
        EmailPrint.innerHTML="";
        ChangePassEmail('DisDivPass',0);
    }

}


