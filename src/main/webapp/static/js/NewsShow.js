/**
 * Created by yl on 2017/5/24.
 */
window.onload = function(){
    var user_id=document.getElementById('user_id');
    var HasRead=document.getElementById('HasRead');
    var NoRead=document.getElementById('NoRead');
    var readNews=document.getElementById('isRead').innerHTML;
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
    switch (readNews){
        case '0':
            NoRead.style.display="block";
            HasRead.style.display="none";
            break;
        case '1':
            NoRead.style.display="none";
            HasRead.style.display="block";
            break;
        default :
            NoRead.style.display="block";
            HasRead.style.display="none";
    }
    changePageOn();
    showRead();
};
function OpenSelf(className){
    var NeedName = document.getElementsByClassName(className);
        NeedName[0].style.display = "block";


}
function CloseSelf(className){
    var NeedName = document.getElementsByClassName(className);
        NeedName[0].style.display = "none";

}
function changePageOn(){
    var pageObj = document.getElementsByClassName('page')[0].getElementsByTagName('a');
    for(var i=1;i<pageObj.length-1;i++){
        pageObj[i].num = i;
        pageObj[i].onclick = function(){
            changeColor();
            pageObj[this.num].className = 'page-on';
        }
    }
}
function changeColor(){
    var pageObj = document.getElementsByClassName('page')[0].getElementsByTagName('a');
    for(var j=1;j<pageObj.length-1;j++){
        pageObj[j].className=' ';
    }
}
function showRead(){
    var ReadyRead = document.getElementById('ReadyRead');
    var NotRead = document.getElementById('NotRead');
    var ReadA = document.getElementById('ReadA');
    var NotReadA = document.getElementById('NotReadA');
    ReadyRead.style.display = "block";
    NotRead.style.display = "none";
    NotReadA.className=" no-color";
    ReadA.className=" ";
}
function showNotRead(){
    var ReadyRead = document.getElementById('ReadyRead');
    var NotRead = document.getElementById('NotRead');
    var ReadA = document.getElementById('ReadA');
    var NotReadA = document.getElementById('NotReadA');
    ReadyRead.style.display = "none";
    NotRead.style.display = "block";
    NotReadA.className=" ";
    ReadA.className="no-color";
}
