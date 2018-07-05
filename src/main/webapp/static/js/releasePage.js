/**
 * Created by yl on 2017/5/17.
 */

var ReturnNum=1;
function InAccessory(Idname){
    document.getElementById(Idname).click();
}
function IsTrue(){
    var RuleObj = document.getElementsByClassName('rules')[0];
    var LabelObj = RuleObj.getElementsByTagName('label')[0];
    var NextObj = document.getElementById('Next');
    var AObj = NextObj.getElementsByTagName('input')[0];
    LabelObj.onclick = function(){
        LabelObj.style.background="url(localhost:8080/data_analyse/static/img/borderBoxOn.png) no-repeat";
        AObj.className='next-orange';
    }
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
function ChangeReleasePage(page){
    var Page1 = document.getElementById('Page1');
    var Page2 = document.getElementById('Page2');
    var Page3 = document.getElementById('Page3');
    switch(page)
    {
        case 1:
            Page1.style.display = 'block';
            Page2.style.display = 'none';
            break;
        case 2:
            LookNone();
            if(ReturnNum==1){
                Page1.style.display = 'none';
                Page2.style.display = 'block';
                Page3.style.display = 'none';
                deleteFloat();
            }
            break;
        case 3:
            LookPrice();
            if(ReturnNum==1){
                Page2.style.display = 'none';
                Page3.style.display = 'block';
                getForm();
            }
            break;
    }


}

function Checked(num){
    var PObj = document.getElementsByClassName('in');
    var InputText1Obj = document.getElementsByClassName('PriceBox')[0];
    var InputText2Obj = document.getElementsByClassName('PriceFloatBox')[0];
    var InputText21Obj = document.getElementsByClassName('PriceFloatCeil')[0];
    var radioObj = document.getElementsByClassName('radioObj');
    InputText1Obj.disabled=true;
    InputText2Obj.disabled = true;
    InputText21Obj.disabled = true;
    InputText1Obj.style.backgroundColor="#C8C4BE";
    InputText2Obj.style.backgroundColor="#C8C4BE";
    InputText21Obj.style.backgroundColor="#C8C4BE";

    for(var i=0;i<PObj.length;i++){
        var LabelObj= PObj[i].getElementsByTagName('label')[0];
        LabelObj.style.backgroundPositionY="-5px";
    }
    if(num==1){
        LabelObj= PObj[0].getElementsByTagName('label')[0];
        LabelObj.style.backgroundPositionY="-86px";
        InputText1Obj.disabled=false;
        InputText1Obj.style.backgroundColor="white";
        InputText2Obj.value="";
        InputText21Obj.value="";

    }else{
        LabelObj= PObj[1].getElementsByTagName('label')[0];
        LabelObj.style.backgroundPositionY="-86px";
        InputText2Obj.disabled = false;
        InputText21Obj.disabled = false;
        InputText2Obj.style.backgroundColor="white";
        InputText21Obj.style.backgroundColor="white";
        InputText1Obj.value="";
    }
}
function ClassifyChoose(){
    var a1Obj = document.getElementById('list1').getElementsByTagName('a');
    var aIDObj = document.getElementById('list2').getElementsByTagName('a');
    var Choose1 = document.getElementById('Choose1');
    var Choose2 = document.getElementById('Choose2');
    var type1 = document.getElementsByClassName('type-choose1');
    var type2 = document.getElementsByClassName('type-choose2');
    for(var i=0;i<a1Obj.length;i++){
        a1Obj[i].num = i;
        a1Obj[i].onclick = function(){
            for(var j=0;j< a1Obj.length;j++){
                a1Obj[j].style.color= '#9E9792';
                type1[j].checked = false;
            }
            a1Obj[this.num].style.color= '#ff5b00';
            type1[this.num].checked=true;
            Choose1.innerHTML = a1Obj[this.num].innerHTML;
        }
    }
    for(var r=0;r<aIDObj.length;r++){
        aIDObj[r].num = r;
        aIDObj[r].onclick = function(){
            for(var z=0;z< aIDObj.length;z++){
                aIDObj[z].style.color= '#9E9792';
                type2[z].checked = false;
            }
            aIDObj[this.num].style.color= '#ff5b00';
            type2[this.num].checked=true;
            Choose2.innerHTML = aIDObj[this.num].innerHTML;
        }
    }

}

function setShowLength(obj, maxlength, id) {
    var rem = maxlength - obj.value.length;
    var wid = id;
    if (rem < 0){
        rem = 0;
    }
    document.getElementById(wid).innerHTML = "还可以输入" + rem + "字数";
}

function checkPhone(){
    var TEl = document.getElementById('TelPhone');
    var Phone=document.getElementById('PhoneNumber');
    Phone.onblur = function () {
        var PhoneB =  /^1\d{10}$/g;
        if (PhoneB.test(this.value)) {
            TEl.innerHTML = '<i class="fa fa-check-circle" style="color:green"></i>&nbsp;OK!';
            TEl.style.color = "green";
        }
        else if (this.value == "") {
            TEl.innerHTML = "";
            Phone.setAttribute('placeholder', "请输入手机号码");
        }
        else {
            TEl.innerHTML = '<i class="fa fa-exclamation-triangle"></i>手机格式不正确，请重新输入';
        }
    };

}

function getForm(){
    var InputText2Obj = document.getElementsByClassName('PriceFloatBox')[0];
    var InputText21Obj = document.getElementsByClassName('PriceFloatCeil')[0];
    var type1 = document.getElementById('type1');
    var type2 = document.getElementById('type2');
    var Choose1 = document.getElementById('Choose1');
    var Choose2 = document.getElementById('Choose2');
    var taskName = document.getElementById('taskName');
    var title = document.getElementById('title');
    var detailContent = document.getElementById('detailContent');
    var request = document.getElementById('request');
    var conTelPhone = document.getElementById('conTelPhone');
    var PhoneNumber = document.getElementById('PhoneNumber');
    var PriceOrg = document.getElementById('PriceOrg');
    var stopTime = document.getElementById('stopTime');
    var AchieveTime = document.getElementById('AchieveTime');
    var float_price_min = document.getElementById('float_price_min');
    var float_price_max = document.getElementById('float_price_max');
    var fixed_price = document.getElementById('fixed_price');
    type1.innerHTML = Choose1.innerHTML;
    type2.innerHTML = Choose2.innerHTML;
    taskName.innerHTML = title.value;
    detailContent.innerHTML = request.value;
    conTelPhone.innerHTML = PhoneNumber.value;
    stopTime.innerHTML = AchieveTime.value;
    InputText2Obj.disabled = false;
    InputText21Obj.disabled = false;
    if(float_price_min.value==""&&float_price_max.value==""){
        float_price_min.value=fixed_price.value;
        float_price_max.value=fixed_price.value;
        PriceOrg.innerHTML = fixed_price.value;
    }
    if(fixed_price.value=="" && float_price_min.value != ""){
        PriceOrg.innerHTML=float_price_min.value + " ～ " + float_price_max.value;
    }
}
function deleteFloat(){
    var fixed_price = document.getElementById('fixed_price');
    var InputText2Obj = document.getElementsByClassName('PriceFloatBox')[0];
    var InputText21Obj = document.getElementsByClassName('PriceFloatCeil')[0];
    var float_price_min = document.getElementById('float_price_min');
    var float_price_max = document.getElementById('float_price_max');
    if(fixed_price.value != "" && float_price_min.value == float_price_max.value){
        InputText2Obj.disabled = true;
        InputText21Obj.disabled = true;
        float_price_min.value="";
        float_price_max.value="";
    }
}
function LookNone(){
    var Choose1 = document.getElementById('Choose1');
    var Choose2 = document.getElementById('Choose2');
    var title_note = document.getElementById('cost_tpl_title_length');
    var request_note = document.getElementById('cost_tpl_detail_length');
    var title = document.getElementById('title');
    var type_note = document.getElementById('type-note');
    var request = document.getElementById('request');
    var PhoneNumber = document.getElementById('PhoneNumber');
    var Image = document.getElementById('Image');
    var Image_word = document.getElementById('Image-word');
    var class_list = document.getElementsByClassName('classification-list');
    var TEl = document.getElementById('TelPhone');
    var typePrg = document.getElementsByClassName('typeOrg');
    title.onclick = function(){
        title.style.border = "2px solid #D4D0CC";
        title_note.style.color="#D4D0CC";
        title_note.innerHTML = "还可以输入30个字符";
    };
    class_list[0].onclick = function(){
        type_note.style.display = "none";
        typePrg[0].style.color = "#9E9792";
        typePrg[1].style.color = "#9E9792";
    };
    request.onclick = function(){
        request.style.border= "1px solid #9E9792";
        request_note.style.color="#9E9792";
        request_note.innerHTML = "限制在5000个字以内";
        request_note.style.fontSize="12px";
    };
    PhoneNumber.onclick = function(){
        PhoneNumber.style.border = "2px solid #D4D0CC";
        TEl.innerHTML ="";
    };
    Image_word.onclick = function(){
        Image_word.style.color="#38332F";
    };
    if(Choose1.innerHTML == "" || Choose2.innerHTML == ""){
        location.href="#Page1";
        typePrg[0].style.color = "#ff6501";
        typePrg[1].style.color = "#ff6501";
        type_note.style.display = "block";
        ReturnNum = 0;
    } else if(title.value==""){
        location.href="#list1";
        title.style.border = "2px solid #ff6501";
        title_note.style.color="#ff6501";
        title_note.innerHTML = "请填写标题";
        ReturnNum = 0;
    }else if(Image.value==""){
        location.href="#list1";
        Image_word.style.color="#ff6501";
        ReturnNum = 0;
    }
    else if(request.value==""){
        location.href="#title";
        request.style.border= "1px solid #ff6501";
        request_note.style.color="red";
        request_note.innerHTML = "请填写项目具体要求";
        request_note.style.fontSize="14px";
        ReturnNum = 0;
    }else if(PhoneNumber.value ==""){
        location.href="#request";
        PhoneNumber.style.border = "2px solid #ff6501";
        TEl.innerHTML = '<i class="fa fa-exclamation-triangle"></i>请填写电话号码';
    }
    else if(PhoneNumber.value !=""){
        var PhoneB =  /^1\d{10}$/g;
        var Phone=document.getElementById('PhoneNumber');
        if (PhoneB.test(Phone.value)) {
            ReturnNum = 1;
        }
        else {
            ReturnNum = 0;
        }
    }
    else{
        ReturnNum = 1;
    }
}
function LookPrice(){
    var fixed_price = document.getElementById('fixed_price');
    var float_price_min = document.getElementById('float_price_min');
    var float_price_max = document.getElementById('float_price_max');
    var Price_note = document.getElementById('Price_note');
    var time_note = document.getElementById('time_note');
    var AchieveTime = document.getElementById('AchieveTime');
    var myDate = new Date();
    var year = myDate.getFullYear();
    var month = myDate.getMonth();
    var day = myDate.getDate();
    var nowDate =myDate.toLocaleDateString();
    var numDate;
    var sDate = new Date(nowDate.replace(/\-/g, "\/"));
    var eDate = new Date(document.getElementById("AchieveTime").value.replace(/\-/g, "\/"));
    AchieveTime.onclick = function(){
        AchieveTime.style.border = "2px solid #C8C4BE";
        time_note.style.display="none";
        SelectDate(this);
    };
    if(fixed_price.value!="" || (float_price_min.value != "" && float_price_min.value != "")){
        if(AchieveTime.value==""){
            ReturnNum=0;
            location.href="#timeLo";
            AchieveTime.style.border = "2px solid #ff6501";
            time_note.style.display="block";
        }else if(sDate>eDate){
            ReturnNum=0;
            time_note.style.display="block";
            time_note.innerHTML = "完成时间不能小于当前时间";
        }else{
            time_note.style.display="none";
            ReturnNum=1;
        }
    }else{
        location.href="#priceLo";
        Price_note.style.display = "block";
        ReturnNum = 0;
    }
    fixed_price.onclick = function(){
        Price_note.style.display = "none";
    };
    float_price_min.onclick = function(){
        Price_note.style.display = "none";
    };
    float_price_max.onclick = function(){
        Price_note.style.display = "none";
    }
}
function IsSubmit(){
    var next_money =document.getElementById('next-money');
    var next_no_money =document.getElementsByClassName('next-gray')[0];
    if(next_money.className == "next-orange"){
        next_money.disabled = false;
        next_no_money.disabled = false;
    }
}



