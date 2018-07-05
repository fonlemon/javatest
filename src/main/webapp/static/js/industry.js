
function changePageOn(){
    var pageObj = document.getElementsByClassName('page')[0].getElementsByTagName('a');
    for(var i=2;i<pageObj.length-2;i++){
        pageObj[i].num = i;
        pageObj[i].onclick = function(){
            changeColor();
            pageObj[this.num].className = 'page-on';
        }
    }
}
function changeColor(){
    var pageObj = document.getElementsByClassName('page')[0].getElementsByTagName('a');
    for(var j=2;j<pageObj.length-2;j++){
        pageObj[j].className=' ';
    }
}
function changeContentSize(size){
    var SizeObj = document.getElementsByClassName('industry-content')[0].getElementsByTagName('p');
    for(var i=0;i<SizeObj.length;i++){
        SizeObj[i].style.fontSize= size + 'px';
    }
}  //用于业界动态详细页在的调整字体大小的函数

//function OpenSelf(){
//    var OutUser = document.getElementsByClassName('Out-User');
//    for(var i=0;i<OutUser.length;i++){
//        OutUser[i].style.display = "block";
//    }
//
//}
//function CloseSelf(){
//    var OutUser = document.getElementsByClassName('Out-User');
//    for(var i=0;i<OutUser.length;i++){
//        OutUser[i].style.display = "none";
//    }
//}