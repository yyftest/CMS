<?php
//开启session
session_start();

//error_reporting(E_ALL ^ E_NOTICE);
error_reporting(E_ERROR);
//设置utf-8
header('Content-Type:text/html;charset=utf-8');
//网站根目录
define('ROOT_PATH',dirname(__FILE__));

//引入模板配置信息
require ROOT_PATH.'/confing/profile.inc.php';

//设置中国时区
date_default_timezone_set('Asia/Shanghai');

//自动加载类
	function __autoload($_className){
		if(substr($_className,-6) == 'Action'){
			require ROOT_PATH.'/action/'.$_className.'.class.php';
		}elseif(substr($_className,-5) == 'Model'){
			require ROOT_PATH.'/model/'.$_className.'.class.php';
		}else{
			require ROOT_PATH.'/includes/'.$_className.'.class.php';
		}
	}
	
	
	
//设置不缓存
$_cache = new Cache(array('code','ckeup','static','upload','register','feedback','cast','friendlink','search'));


//实例化模板类
$_tpl = new Templates($_cache);

//初始化
require 'common.inc.php';

?>