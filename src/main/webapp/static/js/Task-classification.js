/**
 * Created by xiaocong on 2017/5/16.
 */

window.onload=function(){
    ISLogin();
    var obj = document.getElementsByClassName('classification-Choice');
    var a_Obj1 = obj[0].getElementsByTagName('a');
    var a_Obj2 = obj[1].getElementsByTagName('a');
    for(var i=0;i<a_Obj1.length;i++){
        a_Obj1[i].num = i;
        a_Obj1[i].onclick = function(){
            for(var j=0;j< a_Obj1.length;j++){
                a_Obj1[j].style.color= '#000000';
            }
            a_Obj1[this.num].style.color= 'red';
            for( j=0;j< a_Obj2.length;j++){
                a_Obj2[j].style.color= '#000000';
            }
            a_Obj2[0].style.color= 'red';
            document.getElementById("type2").innerHTML=this.num;
            document.getElementById("type1").innerHTML=this.num;
        }
    }
    for(var q=0;q<a_Obj2.length;q++){
        a_Obj2[q].num = q;
        a_Obj2[q].onclick = function(){
            for(var j=0;j< a_Obj2.length;j++){
                a_Obj2[j].style.color= '#000000';
            }
            a_Obj2[this.num].style.color= 'red';
            document.getElementById("type2").innerHTML=this.num;
        }
    } backTop();
    var order_num =parseInt(document.getElementById('order').innerHTML);
    var type1_num = parseInt(document.getElementById("type1").innerHTML);
    var type2_num = parseInt(document.getElementById("type2").innerHTML);
    switch (order_num){
        case 1:i_piece=0;order(0);break;
        case 2:i_piece=1;order(0);break;
        case 3:i_time=0;order(1);break;
        case 4:i_time=1;order(1);break;
        default :i_piece=0;order(0);break;
    }
    switch (type1_num){
        case 0:a_Obj1[1].style.color= 'red';break;
        case 1:a_Obj1[2].style.color= 'red';break;
        case 2:a_Obj1[3].style.color= 'red';break;
        case 3:a_Obj1[4].style.color= 'red';break;
        case 4:a_Obj1[5].style.color= 'red';break;
        case 5:a_Obj1[0].style.color= 'red';break;
        default :a_Obj1[0].style.color= 'red';break;
    }
    switch (type2_num){
        case 0:a_Obj2[1].style.color= 'red';break;
        case 1:a_Obj2[2].style.color= 'red';break;
        case 2:a_Obj2[3].style.color= 'red';break;
        case 3:a_Obj2[4].style.color= 'red';break;
        case 4:a_Obj2[5].style.color= 'red';break;
        case 5:a_Obj2[0].style.color= 'red';break;
        default :a_Obj2[0].style.color= 'red';break;
    }
    var page=document.getElementsByClassName('page1');
    for(var j=0;j<page.length;j++){
        page[j].num=j;
        page[j].onclick=function(){
            for(var i=0;i<page.length;i++){
                page[i].style.backgroundColor='#ffffff';
                page[i].style.color="#000000";
            }
            page[this.num].style.backgroundColor='#FF5722';
            page[this.num].style.color="#ffffff";
        }
    }
};
var i_piece=0;
var i_time=0;
function order(indenx){
    var a_order = document.getElementById('js_order').getElementsByTagName('a');
    for(var i=0;i<2;i++){
        a_order[i].className='order';
    }
    if(indenx==0){
        i_time=0;
        a_order[1].innerHTML="发布时间";
        switch (i_piece){
            case 0:a_order[indenx].innerHTML="价格<i class='fa fa-sort-asc'></i>";i_piece++;break;
            case 1:a_order[indenx].innerHTML="价格<i class='fa fa-sort-desc'></i>";i_piece++;break;
            default :i_piece=0;order(indenx);break;
        }
    }
    if(indenx==1){
        i_piece=-0;
        a_order[0].innerHTML="价格";
        switch (i_time){
            case 0:a_order[indenx].innerHTML="发布时间<i class='fa fa-sort-asc'></i>";i_time++;break;
            case 1:a_order[indenx].innerHTML="发布时间<i class='fa fa-sort-desc'></i>";i_time++;break;
            default :i_time=0;order(indenx);break;
        }
    }
    a_order[indenx].className='onclock';

}
function backTop(){
    var osTop = document.documentElement.scrollTop || document.body.scrollTop;
    document.documentElement.scrollTop = document.body.scrollTop -= osTop;
}
document.onscroll = function () {
    var to_top=document.getElementById("backTop");
    if ( document.body.scrollTop > 300 ||  document.documentElement.scrollTop>300) {
        to_top .style.display = "block";
    }
    else {
        to_top.style.display = "none";
    }
};
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

