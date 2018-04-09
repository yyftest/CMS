<?php
//配置文件
	define('WEBNAME','瓢城Web俱乐部');
	define('PAGE_SIZE',10);
	define('ARTICLE_SIZE',8);
	define('NAV_SIZE',10);
	define('UPDIR','/uploads/');

//轮播器设置
	define('RO_TIME',3);
	define('RO_NUM',3);

//广告服务
	define('ADVER_PIC_NUM',3);
	define('ADVER_TEXT_NUM',5);

//数据库配置
	define('DB_HOST','localhost');
	define('DB_USER','root');
	define('DB_PASS','root');
	define('DB_NAME','cms');

	define('GPC',get_magic_quotes_gpc());
	define('PREV_URL',$_SERVER["HTTP_REFERER"]);

//模板配置信息
	define('TPL_DIR',ROOT_PATH.'/templates/');
	define('TPL_C_DIR',ROOT_PATH.'/templates_c/');
	define('CACHE',ROOT_PATH.'/cache/');
	define('MARK',ROOT_PATH.'/images/yc.png');
?>
