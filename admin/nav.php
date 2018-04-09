<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('6','警告：该权限无法对导航条进行操作！');
global $_tpl;
$_nav = new NavAction($_tpl);//入口，将$_tpl传入ManageAction.class.php的_construct()方法。
$_nav->_action();
$_tpl->display('nav.tpl');
?>