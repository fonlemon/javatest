/**
 * Created by yl on 2017/5/20.
 */
var num = 1;
var answer = 0;
var PassAnswer = 0;
var Pass = 1;
function isLoginNum() {
	var reg_mail = /^([\w_-])+@([\w_-])+((\.[\w_-]{2,3}){1,2})$/g;
	var EmailNum = document.getElementById('EmailNum');
	var EmailPrint = document.getElementById('EmailPrint');
	var PassNum = document.getElementById('PassNum');
	var PassPrint = document.getElementById('PassPrint');
	EmailNum.onfocus = function() {
		if (answer == 0) {
			if (num == 0) {
				EmailNum.style.border = "1px solid gray";
				EmailPrint.style.color = "gray";
			}
			EmailPrint.style.color = "gray";
			EmailPrint.innerHTML = '<i class="fa fa-exclamation-circle"></i></i>请输入邮箱账号';
		}
	};
	EmailNum.onblur = function() {
		num = 1;
		if (reg_mail.test(this.value)) {
			EmailPrint.style.color = "gray";
			EmailPrint.innerHTML = '<i class="fa fa-check-circle" id="green"></i>&nbsp;OK!';
			answer = 1;
		} else if (this.value == "") {
			EmailNum.setAttribute('placeholder', "常用邮箱账号");
			EmailPrint.innerHTML = '';
		} else if (answer == 0) {
			EmailPrint.style.color = "#ff6501";
			EmailPrint.innerHTML = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-exclamation-triangle" id="orange"></i>邮箱格式不正确，请重新输入';
		}
	};
	PassNum.onfocus = function() {
		PassPrint.style.color = 'gray';
		if (PassAnswer == 0) {
			if (Pass == 0) {
				PassNum.style.border = "1px solid gray";
				PassPrint.style.color = "gray";
			}
			PassPrint.innerHTML = '<i class="fa fa-exclamation-circle"></i></i>请输入密码';
		}
	};
	PassNum.onblur = function() {
		PassPrint.style.color = 'gray';
		Pass = 1;
		if (this.value.length < 6 && this.value.length > 0) {
			PassPrint.style.color = "#ff6501";
			PassPrint.innerHTML = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-exclamation-triangle" id="orange"></i>密码不能小于6个字符。';
		} else if (this.value == "") {
			PassPrint.innerHTML = "";
			PassNum.setAttribute('placeholder', "密码");
		} else if (this.value.length > 16) {
			PassPrint.style.color = "#ff6501";
			PassPrint.innerHTML = '<i class="fa fa-exclamation-triangle" id="orange"></i>密码不能大于16个字符。';
		} else {
			PassAnswer = 1;
			PassPrint.innerHTML = '<i class="fa fa-check-circle" id="green"></i>&nbsp;OK!';
			PassPrint.style.color = 'green';
		}
	}

}
function ISLogin() {
	var user_id = document.getElementById('user_id');
	var IS_id = user_id.innerText;
	var NotLog = document.getElementById('NotLogin');
	var HasLog = document.getElementById('HasLogin');
	var HasOutLog = document.getElementsByClassName('Out-Self-Info')[0];
	var HasInLog = document.getElementsByClassName('in-Self-Info')[0];
	switch (IS_id) {
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
	default:
		NotLog.style.display = "block";
		HasLog.style.display = "none";
		HasOutLog.style.display = "none";
		HasInLog.style.display = "none";
	}
}
window.onload = function() {
	isLoginNum();
	//ISLogin();
	checkLogin();
};
function checkLogin() {

	var reg_mail = /^([\w_-])+@([\w_-])+((\.[\w_-]{2,3}){1,2})$/g;
	var EmailNum = document.getElementById('EmailNum');
	var EmailPrint = document.getElementById('EmailPrint');
	var PassNum = document.getElementById('PassNum');
	var PassPrint = document.getElementById('PassPrint');
	var submitBtn = document.getElementById('submitBtn');
	var login_button = document.getElementsByClassName('login-button')[0];
	var testNum = document.getElementById('testNum');
	var TextPrint = document.getElementById('TextPrint');
	login_button.onclick = function() {
		if (EmailNum.value == "") {
			EmailPrint.innerHTML = '<i class="fa fa-exclamation-triangle"></i>请输入邮箱账号';
			EmailPrint.style.color = "#ff6501";
			EmailNum.style.border = "1px solid #ff6501";
			num = 0;
		} else if (EmailNum.value != 0 && !reg_mail.test(EmailNum.value)) {
			if (answer == 0) {
				EmailNum.style.border = "1px solid #ff6501";
				EmailPrint.innerHTML = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-exclamation-triangle" id="orange"></i>邮箱格式不正确，请重新输入';
				num = 0;
			}
		} else if (PassNum.value == "") {
			PassAnswer = 0;
			PassPrint.innerHTML = '<i class="fa fa-exclamation-triangle"></i>请输入密码';
			PassPrint.style.color = "#ff6501";
			PassNum.style.border = "1px solid #ff6501";
			Pass = 0;
		} else if (PassNum.value.length < 6 && PassNum.value.length > 0) {
			PassNum.style.border = "1px solid #ff6501";
			PassPrint.innerHTML = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-exclamation-triangle" id="orange"></i>密码不能小于6个字符。';
			Pass = 0;
		} else if (testNum.value == "") {
			TextPrint.style.color = "#ff6501";
			testNum.style.border = "1px solid #ff6501";
			TextPrint.innerHTML = ' <i class="fa fa-exclamation-triangle" id="orange"></i>请输入验证码';
		} else {
			submitBtn.click();
		}
	};
	testNum.onclick = function() {
		TextPrint.style.color = "gray";
		testNum.style.border = "1px solid gray";
		TextPrint.innerHTML = '';
	};

}
function OpenSelf(className) {
	var NeedName = document.getElementsByClassName(className);
	for (var i = 0; i < NeedName.length; i++) {
		NeedName[i].style.display = "block";
	}
}
function CloseSelf(className) {
	var NeedName = document.getElementsByClassName(className);
	for (var i = 0; i < NeedName.length; i++) {
		NeedName[i].style.display = "none";
	}
}