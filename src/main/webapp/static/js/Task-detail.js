/**
 * Created by xiaocong on 2017/5/17.
 */
window.onload=function(){
    ISLogin();
    var Applicant = document.getElementsByClassName('Applicant');
    var modify =  document.getElementById('modify');
    var loding_num = parseInt(document.getElementById("loding").innerHTML);
    var bg = document.getElementById("progress").getElementsByTagName("div");
    var i;
    switch (loding_num){
        case 0:bg[0].style.color=" #FF8200";break;
        case 1:bg[0].style.color=" #FF8200";bg[1].style.color=" #FF8200";break;
        case 2:
            for(i=0;i<=2;i++){
                bg[i].style.color=" #FF8200"
            }
            break;
        case 3:
            for(i=0;i<=3;i++){
                bg[i].style.color=" #FF8200"
            }break;
        case 4:
            for(i=0;i<=4;i++){
                bg[i].style.color=" #FF8200"
            }break;
        case 5:
            for(i=0;i<=5;i++){
                bg[i].style.color=" #FF8200"
            }break;
    }
    var download=document.getElementById('js-download').getElementsByTagName('a');
    var textarea = document.getElementById('js-main').getElementsByTagName('textarea');
    var change = document.getElementById('change');
    var sub_change = change.getElementsByTagName('input');
    var p_change =change.getElementsByTagName('p');
    var js_input =document.getElementById('js-input');
    var input =js_input .getElementsByTagName('input');
    var select =js_input.getElementsByTagName('select');
    textarea[0].onblur=function(){
        if(textarea[0].value.length>5000){
            alert("内容过长，请减少内容");
        }
    };
    modify.onclick = function(){
        modify.style.display="none";
        download[0].style.display='none';
        download[1].style.display='block';
        select[0].removeAttribute('disabled');
        select[0].style.border="1px solid #000000";
        select[0].style.backgroundColor="#ffffff";
        textarea[0].removeAttribute('disabled');
        textarea[0].style.border=" 1px solid #000000";
        textarea[0].style.backgroundColor="#ffffff";
        change.style.display="block";
        for(var i=0;i<input.length;i++){
            input[i].removeAttribute('disabled');
            input[i].style.border="1px solid #000000";
            input[i].style.backgroundColor="#ffffff"
        }
        input[3].setAttribute("disabled",'true');
        input[3].style.border="1px solid #eeeeee";
        input[3].style.backgroundColor="#eeeeee"
    };
    sub_change[0].onclick=function(){
        modify.style.display="block";
        download[0].style.display='block';
        download[1].style.display='none';
        change.style.display="none";
        select[0].setAttribute("disabled",'true');
        select[0].style.border="1px solid #eeeeee";
        select[0].style.backgroundColor="#eeeeee";
        textarea[0].setAttribute("disabled",'true');
        textarea[0].style.border=" 1px solid #eeeeee";
        textarea[0].style.backgroundColor="#eeeeee";
        for(var i=0;i<input.length;i++){
            input[i].style.border="1px solid #eeeeee";
            input[i].setAttribute("disabled",'true');
            input[i].style.backgroundColor="#eeeeee"
        }
    };
    p_change[0].onclick=function(){
        modify.style.display="block";
        download[0].style.display='block';
        download[1].style.display='none';
        change.style.display="none";
        select[0].setAttribute("disabled",'true');
        select[0].style.border="1px solid #eeeeee";
        select[0].style.backgroundColor="#eeeeee";
        textarea[0].setAttribute("disabled",'true');
        textarea[0].style.border=" 1px solid #eeeeee";
        textarea[0].style.backgroundColor="#eeeeee";
        for(var i=0;i<input.length;i++){
            input[i].style.border="1px solid #eeeeee";
            input[i].setAttribute("disabled",'true');
            input[i].style.backgroundColor="#eeeeee"
        }

    };
    var state =  parseInt(document.getElementById("state").innerHTML);
    var unmodif= document.getElementById('unmodify');
    switch (state){
        case 1:
            modify.style.display='block';
            unmodif.style.display='none';
            Applicant[0].style.display='block';
            Applicant[1].style.display='none';
            break;
        case 2:
            modify.style.display='none';
            unmodif.style.display='block';
            Applicant[1].style.display='block';
            Applicant[0].style.display='none';
            break;
        default :
            modify.style.display='block';
            unmodif.style.display='none';
            Applicant[0].style.display='block';
            Applicant[1].style.display='none';
            break;
    }

    price();
};
function backTop(){
    var osTop = document.documentElement.scrollTop || document.body.scrollTop;
    document.documentElement.scrollTop = document.body.scrollTop -= osTop;
}
document.onscroll = function () {
    var to_top=document.getElementById("backTop");
    if ( document.body.scrollTop > 300|| document.documentElement.scrollTop >300) {
        to_top .style.display = "block";
    }
    else {
        to_top.style.display = "none";
    }
};
function file(){
    document.getElementById('file').click();
}
function price(){
    var js_input =document.getElementById('js-input');
    var span_input= js_input.getElementsByTagName('span');
    var select =js_input.getElementsByTagName('select');
    var input =js_input .getElementsByTagName('input');
    var fixed_value=document.getElementsByClassName('fixed')[0];
    var min_value=document.getElementsByClassName('float')[0];
    var max_value=document.getElementsByClassName('float')[1];
    var price_fixed= document.getElementById("price-value-fixed");
    var price_min= document.getElementById("price-value-min");
    var price_max= document.getElementById("price-value-max");
    var type=parseInt(document.getElementById('price-type').innerHTML);
    var op=document.getElementsByTagName('option');

    switch (type){
        case 1:
            op[0].setAttribute('selected','ture');
            op[1].removeAttribute('selected');
            input[1].value="";
            input[2].value="";
            span_input[1].style.display='none';
            span_input[0].style.display='block';
            fixed_value.value=price_fixed.innerHTML;
            break;
        case 2:
            op[0].removeAttribute('selected');
            op[1].setAttribute('selected','ture');
            input[0].value="";
            span_input[1].style.display='block';
            span_input[0].style.display='none';
            min_value.value=price_min.innerHTML;
            max_value.value=price_max.innerHTML;break;
        default :
            op[0].setAttribute('selected','ture');
            op[1].removeAttribute('selected');
            input[1].value="";
            input[2].value="";
            span_input[1].style.display='none';
            span_input[0].style.display='block';
            fixed_value.value=price_fixed.innerHTML;
            break;
    }
}
function ISLogin(){
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