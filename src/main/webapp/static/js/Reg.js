/**
 * Created by xiaocong on 2017/5/6.
 */

window.onload=function(){
    var log_suc = document.getElementById("Reg-suc");
    var alnput = document.getElementById("registration-main").getElementsByTagName("input");
    var logo = document.getElementsByTagName("form");
    var o_email = alnput[2];
    var pwd = alnput[3];
    var pwd2 = alnput[4];
    var button = alnput[6];
    var code = alnput[5];
    var o_email2 = alnput[8];
    var pwd3 = alnput[9];
    var pwd4 = alnput[10];
    var button2 = alnput[12];
    var code2 = alnput[11];
    var op = document.getElementById("registration-main").getElementsByTagName("p");
    var op_email = op[0];
    var op_pwd = op[1];
    var op_pwd2 = op[2];
    var op_code = op[3];
    var op_email2 = op[4];
    var op_pwd3 = op[5];
    var op_pwd4 = op[6];
    var op_code2 = op[7];
    var type=document.getElementsByClassName('type');
    var type_tip=document.getElementsByClassName('user-type');
    var rechoose=document.getElementsByClassName('rechoose');

    function but1(){
        if((!((o_email.value =="")||(code.value =="")||(pwd.value =="")||(pwd2.value =="")))&&(pwd.value===pwd2.value )&&!(o_email.style.borderColor==='red')) {
            button.style.borderColor="#FF5722";
            button.style.backgroundColor='#FF5722';
            button.removeAttribute('disabled');
        }
        else{
            button.style.borderColor="#cccccc";
            button.style.backgroundColor='#cccccc';
            button.setAttribute('disabled','ture');
        }
    }
    function but2(){
        if((!((o_email2.value =="")||(code2.value =="")||(pwd3.value =="")||(pwd4.value =="")))) {
            button2.style.borderColor="#FF5722";
            button2.style.backgroundColor='#FF5722';
            button2.removeAttribute('disabled');
        }
        else{
            button2.style.borderColor="#cccccc";
            button2.style.backgroundColor='#cccccc';
            button2.setAttribute('disabled','ture');
        }
    }



    type[0].onclick=function(){
        type[0].style.display='none';
        type[1].style.display='none';
        logo[0].style.display='block';
        logo[1].style.display='none';
        type_tip[0].style.display = 'block';
        rechoose[0].style.display='block';
        rechoose[1].style.display='none';
    };
    type[1].onclick=function(){
        type[0].style.display='none';
        type[1].style.display='none';
        logo[0].style.display='none';
        logo[1].style.display='block';
        type_tip[1].style.display='block';
        rechoose[0].style.display='none';
        rechoose[1].style.display='block';
    };
    rechoose[0].onclick=function(){
        logo[0].style.display='none';
        logo[1].style.display='none';
        rechoose[0].style.display='none';
        rechoose[1].style.display='none';
        type[0].style.display='block';
        type[1].style.display='block';
        type_tip[0].style.display='none';
        type_tip[1].style.display='none';
        o_email.value ='';
        o_email.style.border = '1px solid  gray';
        op_email.style.display = 'none';
        pwd.value='';
        pwd.style.border = '1px solid  gray';
        op_pwd.style.display = 'none';
        pwd2.value ='';
        pwd2.style.border = '1px solid  gray';
        op_pwd2.style.display = 'none';
        code.value ='';
        code.style.border = '1px solid  gray';
        op_code.style.display = 'none';
        pwd2.setAttribute('disabled','ture');
        o_email.setAttribute('placeholder', "常用邮箱账号");
        o_email2.value ='';
        o_email2.style.border = '1px solid  gray';
        op_email2.style.display = 'none';
        pwd3.value='';
        pwd3.style.border = '1px solid  gray';
        op_pwd3.style.display = 'none';
        pwd4.value ='';
        pwd4.style.border = '1px solid  gray';
        op_pwd4.style.display = 'none';
        code2.value ='';
        code2.style.border = '1px solid  gray';
        op_code2.style.display = 'none';
        pwd4.setAttribute('disabled','ture');
        o_email2.setAttribute('placeholder', "常用邮箱账号");
    };
    rechoose[1].onclick=function(){
        logo[0].style.display='none';
        logo[1].style.display='none';
        rechoose[0].style.display='none';
        rechoose[1].style.display='none';
        type[0].style.display='block';
        type[1].style.display='block';
        type_tip[0].style.display='none';
        type_tip[1].style.display='none';
        o_email.value ='';
        o_email.style.border = '1px solid  gray';
        op_email.style.display = 'none';
        pwd.value='';
        pwd.style.border = '1px solid  gray';
        op_pwd.style.display = 'none';
        pwd2.value ='';
        pwd2.style.border = '1px solid  gray';
        op_pwd2.style.display = 'none';
        code.value ='';
        code.style.border = '1px solid  gray';
        op_code.style.display = 'none';
        o_email.setAttribute('placeholder', "常用邮箱账号");
        o_email2.value ='';
        o_email2.style.border = '1px solid  gray';
        op_email2.style.display = 'none';
        pwd3.value='';
        pwd3.style.border = '1px solid  gray';
        op_pwd3.style.display = 'none';
        pwd4.value ='';
        pwd4.style.border = '1px solid  gray';
        op_pwd4.style.display = 'none';
        code2.value ='';
        code2.style.border = '1px solid  gray';
        op_code2.style.display = 'none';
        pwd4.setAttribute('disabled','ture');
        o_email2.setAttribute('placeholder', "常用邮箱账号");
    };

//邮箱
    o_email.onfocus = function () {
        op_email.style.display = 'block';
        o_email.style.border = '1px solid  gray';
        o_email.removeAttribute('placeholder');
        op_email.innerHTML = '<i class="fa fa-exclamation-circle"></i>请输入你的电子邮箱';
    };
    o_email.onblur = function () {
        op_email.style.display = 'block';
        var reg_mail = /^([\w_-])+@([\w_-])+((\.[\w_-]{2,3}){1,2})$/g;
        if (reg_mail.test(this.value)) {
            op_email.innerHTML = '<i class="fa fa-check-circle"></i>OK!';
        }
        else if (this.value == "") {
            op_email.style.display = 'none';
            o_email.setAttribute('placeholder', "常用邮箱账号");
        }
        else {
            op_email.innerHTML = '<i class="fa fa-exclamation-triangle"></i>邮箱格式不正确，请重新输入';
            o_email.style.border = '1px solid red';
        }
        but1();
    };
    o_email2.onfocus = function () {
        op_email2.style.display = 'block';
        o_email2.style.border = '1px solid  gray';
        o_email2.removeAttribute('placeholder');
        op_email2.innerHTML = '<i class="fa fa-exclamation-circle"></i>请输入你的电子邮箱';
    };
    o_email2.onblur = function () {
        op_email2.style.display = 'block';
        var reg_mail2 = /^([\w_-])+@([\w_-])+((\.[\w_-]{2,3}){1,2})$/g;
        if (reg_mail2.test(this.value)) {
            op_email2.innerHTML = '<i class="fa fa-check-circle"></i>OK!';
        }
        else if (this.value == "") {
            op_email2.style.display = 'none';
            o_email2.setAttribute('placeholder', "常用邮箱账号");
        }
        else {
            op_email2.innerHTML = '<i class="fa fa-exclamation-triangle"></i>邮箱格式不正确，请重新输入';
            o_email2.style.border = '1px solid red';
        }
        but2();
    };
//密码
    pwd.onfocus = function () {
        pwd.style.border = '1px solid  gray';
        op_pwd.style.display = 'block';
        op_pwd.innerHTML = '<i class="fa fa-exclamation-circle"></i>请设置密码6-16位（数字/字符/字母）';
    };
    pwd.onkeyup = function () {
        if (this.value.length >= 6) {
            pwd2.removeAttribute('disabled');
            op_pwd2.style.display = 'block';
            op_pwd2.innerHTML = '<i class="fa fa-exclamation-circle"></i>请再输一次';
        }
    };
    pwd.onblur = function () {
        if ((this.value.length <6) && (this.value.length >0)) {
            op_pwd.style.display = 'block';
            op_pwd.innerHTML = '<i class="fa fa-exclamation-triangle"></i>密码不能少于6个字符。';
            pwd.style.border = '1px solid  red';
            pwd2.value='';
            pwd2.setAttribute('disabled','ture');
            op_pwd2.style.display = 'none';
        }
        else if (this.value.length > 16) {
            op_pwd.innerHTML = '<i class="fa fa-exclamation-triangle"></i>密码不能大于16个字符。';
            pwd.style.border = '1px solid  red';
        }
        else if (this.value == "") {
            op_pwd.style.display = 'none';
        }
        else {
            op_pwd.innerHTML = '<i class="fa fa-check-circle"></i>OK!';
        }
        but1();
    };
    pwd3.onfocus = function () {
        pwd3.style.border = '1px solid  gray';
        op_pwd3.style.display = 'block';
        op_pwd3.innerHTML = '<i class="fa fa-exclamation-circle"></i>请设置密码6-16位（数字/字符/字母）';
    };
    pwd3.onkeyup = function () {
        if (this.value.length >= 6) {
            pwd4.removeAttribute('disabled');
            op_pwd4.style.display = 'block';
            op_pwd4.innerHTML = '<i class="fa fa-exclamation-circle"></i>请再输一次';
        }
    };
    pwd3.onblur = function () {
        if ((this.value.length < 6) && (this.value.length >0)) {
            op_pwd3.style.display = 'block';
            op_pwd3.innerHTML = '<i class="fa fa-exclamation-triangle"></i>密码不能少于6个字符。';
            pwd3.style.border = '1px solid  red';
            pwd4.value='';
            pwd4.setAttribute('disabled','ture');
            op_pwd4.style.display = 'none';
        }
        else if (this.value.length > 16) {
            op_pwd3.innerHTML = '<i class="fa fa-exclamation-triangle"></i>密码不能大于16个字符。';
            pwd3.style.border = '1px solid  red';
        }
        else if (this.value == "") {
            op_pwd3.style.display = 'none';
        }
        else {
            op_pwd3.innerHTML = '<i class="fa fa-check-circle"></i>OK!';
        }
        but2();
    };
//密码2
    pwd2.onfocus = function () {
        op_pwd2.style.display = 'block';
        op_pwd2.innerHTML = '<i class="fa fa-exclamation-circle"></i>请再输一次';
        pwd2.style.border = '1px solid  gray';
    };
    pwd2.onblur = function () {
        if (this.value != pwd.value) {
            op_pwd2.innerHTML = '<i class="fa fa-exclamation-triangle"></i>两次密码不一致，请重新输入';
            pwd2.style.border = '1px solid  red';
        }
        else {
            op_pwd2.innerHTML = '<i class="fa fa-check-circle"></i>OK!';
        }
        but1();
    };
    pwd4.onfocus = function () {
        op_pwd4.style.display = 'block';
        op_pwd4.innerHTML = '<i class="fa fa-exclamation-circle"></i>请再输一次';
        pwd4.style.border = '1px solid  gray';
    };
    pwd4.onblur = function () {
        if (this.value != pwd3.value) {
            op_pwd4.innerHTML = '<i class="fa fa-exclamation-triangle"></i>两次密码不一致，请重新输入';
            pwd4.style.border = '1px solid  red';
        }
        else {
            op_pwd4.innerHTML = '<i class="fa fa-check-circle"></i>OK!';
        }
        but2();
    };
//验证码
    var user_type=document.getElementsByClassName('registration-type');

    code.onfocus = function () {
        op_code.style.display = 'block';
        code.style.border = '1px solid  gray';
    };
    code.onblur = function () {
        op_code.style.display = 'none';
        but1();
    };
    button.onclick = function(){
       // user_type[0].style.display='none';
       // logo[0].style.display = "none";
       // logo[1].style.display = "none";
       // log_suc.style.display = 'block';
    };
    code2.onfocus = function () {
        op_code2.style.display = 'block';
        code2.style.border = '1px solid  gray';
    };
    code2.onblur = function () {
        op_code2.style.display = 'none';
        but2();
    };
    button2.onclick = function(){
      //  user_type[0].style.display='none';
       // logo[0].style.display = "none";
       // logo[1].style.display = "none";
       // log_suc.style.display = 'block';
    };
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


