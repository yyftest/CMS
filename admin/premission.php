<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('5','警告：该权限无法进行权限设定！');
global $_tpl;
$_premission = new PremissionAction($_tpl);//入口，将$_tpl传入ManageAction.class.php的_construct()方法。
$_premission->_action();
$_tpl->display('premission.tpl');
?>