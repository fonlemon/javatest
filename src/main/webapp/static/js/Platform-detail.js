/**
 * Created by xiaocong on 2017/5/9.
 */
window.onload = function(){
    ISLogin();
};
function backTop(){
    var osTop = document.documentElement.scrollTop || document.body.scrollTop;
    document.documentElement.scrollTop = document.body.scrollTop -= osTop;
}
document.onscroll = function () {
    if ( document.body.scrollTop > 400) {
        document.getElementById("backTop").style.display = "block";
    }
    else {
        document.getElementById("backTop").style.display = "none";
    }
};
var s=15;
var s_t=20;
function font_Change(size){
   var font=document.getElementById("detail-main").getElementsByTagName("p");
   var font_t=document.getElementById("detail-main").getElementsByTagName("h2");

    if(size>0){
        if(s<30){
            s++;
            s_t++;
        }

    }
    else{
        if(s>14){
            s--;
            s_t--;
        }

        }
    for(var i=0;i<font.length;i++){
        font[i].style.fontSize = s+"px";
    }
    for(var j=0;j<font_t.length;j++){
        font_t[j].style.fontSize = s_t+"px";
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


