<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('14','警告：该权限无法管理系统配置文件！');
global $_tpl;
$_system = new SystemAction($_tpl);//入口，将$_tpl传入ManageAction.class.php的_construct()方法。
$_system->_action();
$_tpl->display('system.tpl');
?>