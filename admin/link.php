<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('12','警告：该权限无法对友情链接进行操作！');
global $_tpl;
$_link = new LinkAction($_tpl);   //入口
$_link->_action();
$_tpl->display('link.tpl');
?>