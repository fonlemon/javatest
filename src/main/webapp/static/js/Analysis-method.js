/**
 * Created by yl on 2017/7/14.
 */
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
function LookCase(MethodName,num){
    var Method = document.getElementsByClassName('close-div');
    for(var i=0;i<Method.length;i++){
        Method[i].getElementsByTagName('img')[0].style.display = "none";
        Method[i].getElementsByTagName('img')[1].style.display = "none";
    }
    if (num==1){
        Method[MethodName-1].style.display="block";
        Method[MethodName-1].getElementsByTagName('img')[0].style.display = "block";
        Method[MethodName-1].getElementsByTagName('img')[1].style.display = "block";
    }else{
        Method[MethodName-1].style.display="none";
        Method[MethodName-1].getElementsByTagName('img')[0].style.display = "none";
        Method[MethodName-1].getElementsByTagName('img')[1].style.display = "none";
    }


}

