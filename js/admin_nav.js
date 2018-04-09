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


function checkForm(){
	var fm = document.add;
	if(fm.nac_name.value == '' || fm.nav_name.value.length<2|| fm.nav_name.value.length>20){
		alert('警告：导航名称不得为空并且不得小于2位并且不得大于20位！');
		fm.nav_name.focus();
		return false;
	}
	if(fm.nav_info.value.length>200){
		fm.admin_info.focus();
		alert('警告：导航描述不得大于200位！');
		return false;
	}
	return true;
}