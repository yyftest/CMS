<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('7','警告：该权限无法对发布文档！');
global $_tpl;
$_content = new ContentAction($_tpl);//入口，将$_tpl传入ManageAction.class.php的_construct()方法。
$_content->_action();
$_tpl->display('content.tpl');
?>