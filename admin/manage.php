<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('3','警告：该权限无法对管理员进行操作！');
global $_tpl;
$_manage = new ManageAction($_tpl);//入口，将$_tpl传入ManageAction.class.php的_construct()方法。
$_manage->_action();
$_tpl->display('manage.tpl');
?>