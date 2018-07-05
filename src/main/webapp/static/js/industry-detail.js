/**
 * Created by yl on 2017/5/9.
 */


function backTop(){
    var osTop = document.documentElement.scrollTop || document.body.scrollTop;
    document.documentElement.scrollTop = document.body.scrollTop -= osTop;
}
function changeContentSize(size){
    var SizeObj = document.getElementsByClassName('industry-content')[0].getElementsByTagName('p');
    for(var i=0;i<SizeObj.length;i++){
        SizeObj[i].style.fontSize= size + 'px';
    }
}  //用于业界动态详细页在的调整字体大小的函数
window.onscroll = function () {
    if ( document.body.scrollTop > 400 ||  document.documentElement.scrollTop>400) {
        document.getElementById("backTop").style.display = "block";
    }
    else {
        document.getElementById("backTop").style.display = "none";
    }
};


