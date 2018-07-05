/**
 * Created by xiaocong on 2017/5/14.
 */


document.onscroll = function () {
    if ( document.body.scrollTop > 370) {
        document.getElementById("Per-left").className = "Per-left-fixed";
    }
    else {
        document.getElementById("Per-left").className = "Per-left";
    }
};