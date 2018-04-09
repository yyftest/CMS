<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('10','警告：该权限无法对广告管理进行操作！');
global $_tpl;
$_adver = new AdverAction($_tpl);   //入口
$_adver->_action();
$_tpl->display('adver.tpl');
?>