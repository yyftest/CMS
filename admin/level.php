<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('4','警告：该权限无法对等级管理进行操作！');
global $_tpl;
$_level = new LevelAction($_tpl);//入口，将$_tpl传入ManageAction.class.php的_construct()方法。
$_level->_action();
$_tpl->display('level.tpl');
?>