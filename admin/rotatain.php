<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('9','警告：该权限无法对轮播器进行操作！');
global $_tpl;
$_rotatain = new RotatainAction($_tpl);//入口，将$_tpl传入ManageAction.class.php的_construct()方法。
$_rotatain->_action();
$_tpl->display('rotatain.tpl');
?>