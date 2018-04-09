<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('13','警告：该权限无法对会员进行操作！');
global $_tpl;
$_user = new UserAction($_tpl);//入口，将$_tpl传入ManageAction.class.php的_construct()方法。
$_user->_action();
$_tpl->display('user.tpl');
?>