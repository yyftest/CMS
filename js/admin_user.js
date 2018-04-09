// JavaScript Documentvar title = document.getElementById('title');
window.onload = function(){
	var ol = document.getElementsByTagName('ol');
	var a = ol[0].getElementsByTagName('a');
	
	for(i=0;i<a.length;i++){
		a[i].className = null;
		if(title.innerHTML == a[i].innerHTML){
			a[i].className = 'selected';
		}
	}
	
}



//选择头像
function sface(){
	var fm = document.reg;
	var index = fm.face.selectedIndex;
	fm.faceImg.src = "../images/"+fm.face.options[index].value;	
}



//验证等级表单
function checkForm(){
	var fm = document.add;
	if(fm.level_name.value == '' || fm.level_name.value.length<2|| fm.level_name.value.length>20){
		alert('警告：等级名称不得为空并且不得小于2位并且不得大于20位！');
		fm.level_name.focus();
		return false;
	}
	if(fm.level_info.value.length>200){
		fm.admin_info.focus();
		alert('警告：等级描述不得大于200位！');
		return false;
	}
	return true;
}




//验证修改
function checkUpdate(){
    var fm = document.reg;
	if(fm.pass.value != ''){
	  if(fm.pass.value == '' || fm.pass.value.length<6){
		  alert('警告：密码不得为空并且不得小于6位！');
		  fm.pass.focus();
		  return false;
	  }
	}
	
	if(!/^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/.test(fm.email.value)){
		alert('邮件格式不正确！');
		fm.email.value = '';
		fm.email.focus();
		return false;
	}
	
	return true;
}






//验证登陆
function checkReg(){
    var fm = document.reg;
	if(fm.user.value == '' || fm.user.value.length<2|| fm.user.value.length>20){
		alert('警告：用户名不得为空并且不得小于2位并且不得大于20位！');
		fm.user.focus();
		return false;
	}
	if(fm.pass.value == '' || fm.pass.value.length<6){
		alert('警告：密码不得为空并且不得小于6位！');
		fm.pass.focus();
		return false;
	}
	if(fm.pass.value != fm.notpass.value){
		alert('警告：密码与确认密码不一致！');
		fm.notpass.focus();
		return false;
	}
	if(!/^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/.test(fm.email.value)){
		alert('邮件格式不正确！');
		fm.email.value = '';
		fm.email.focus();
		return false;
	}
	if(fm.code.value.length != 4 ){
		alert('警告：验证码必须为4位！');
		fm.code.focus();
		return false;
	}
	return true;
}


