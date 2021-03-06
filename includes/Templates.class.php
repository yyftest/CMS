<?php

//模板类
class Templates{
	
	//通过一个字段来接受变量
	//但是有不知道有多少个变量要接受
	//所以我们要动态接受变量
	//可以通过数组来实现这个功能。
	private $_vars = array();
	//保存系统变量
	private $_confing = array();
	//缓存对象
	private $_cache = null;
	//创建一个构造方法，来验证各个目录是否存在
	public function __construct($_cache){
		if(!is_dir(TPL_DIR)||!is_dir(TPL_C_DIR)||!is_dir(CACHE)){
			exit('ERROR:模板目录或者编译目录或者缓存目录不存在！请手工设置！');
		}
		$_sxe = simplexml_load_file(ROOT_PATH.'/confing/profile.xml');//获取xml文件
        
        $_tagLib = $_sxe->xpath('/root/taglib');//获取xml文件标签
        foreach($_tagLib as $_tag){
	    $this->_confing["$_tag->name"] = $_tag->value;
        }
		$this->_cache = $_cache;
	}
	
	//assign()方法，用于注入变量
	public function assign($_var,$_value){
		//$_var用于同步模板里的变量名
		//$_value值表示的是index.php里$_name的值，就是‘李炎恢‘
		if(isset($_var) && !empty($_var)){        //参数$_var存在且不为空
			//$this->vars['name']
			$this->_vars[$_var] = $_value;
		}else{
		    exit('ERROR:请设置变量名！');
		}
	}
	
	
	
	//cache()方法，跳转到缓存文件，不执行PHP，不连接数据
	public function cache($_file){
		//设置模板的路径
		$_tplFile = TPL_DIR.$_file;
		//判断模板是否存在
		if(!file_exists($_tplFile)){
			exit('ERROR：模板文件不存在！');
		}
		
		//是否加入参数
		if(!empty($_SERVER['QUERY_STRING'])){
		$_file .= $_SERVER['QUERY_STRING'];
		}
		//生成编译文件
		$_parFile = TPL_C_DIR.md5($_file).$_file.'.php';
		//缓存文件
		$_cacheFile = CACHE.md5($_file).$_file.'.html';
		//当第二次运行相同文件的时候，直接载入缓存文件，避开编译
		if(IS_CACHE){
			//缓存文件和编译文件都要存在
			if(file_exists($_cacheFile) && file_exists($_parFile)){
				//判断模板文件是否被修改过，判断编译文件是否修改过
				if(filemtime($_parFile)>=filemtime($_tplFile) && filemtime($_cacheFile)>filemtime($_parFile)){
			//载入缓存文件
			include $_cacheFile;
			exit();
				}
			}
		}
		
	}
	
	
	
	
	//display()方法
	public function display($_file){
		//给includes进来的tpl传一个模板操作的对象
		$_tpl = $this;
		//设置模板的路径
		$_tplFile = TPL_DIR.$_file;
		//判断模板是否存在
		if(!file_exists($_tplFile)){
			exit('ERROR：模板文件不存在！');
		}
		
		//是否加入参数
		if(!empty($_SERVER['QUERY_STRING'])){
		$_file_query .= $_SERVER['QUERY_STRING'];
		}
		//生成编译文件
		$_parFile = TPL_C_DIR.md5($_file).$_file.'.php';
		//缓存文件
		$_cacheFile = CACHE.md5($_file).$_file.$_file_query.'.html';
		
		//当编译文件不存在，或者模板文件修改过，则生成编译文件
		if(!file_exists($_parFile)||filemtime($_parFile)<filemtime($_tplFile)){
			//引入模板解析类
		    require_once ROOT_PATH.'/includes/Parser.class.php';
			$_parser = new Parser($_tplFile);
			$_parser->compile($_parFile);  //编译文件
		}
		
		//载入编译文件_PATH.
		include $_parFile;
		
		if(IS_CACHE && !$this->_cache->noCache()){
		//获取缓冲区的数据,并且创建缓存文件
		file_put_contents($_cacheFile,ob_get_contents());
	    //清除缓存区（清除了编译文件加载的内容）
		ob_end_clean();
		
		//载入缓存文件
		include $_cacheFile;
		}
	}
	    
        //创建create方法，用于header和footer这种模板解析使用，而不需要生成缓存文件
		public function create($_file){
					//设置模板的路径
		$_tplFile = TPL_DIR.$_file;
		//判断模板是否存在
		if(!file_exists($_tplFile)){
			exit('ERROR：模板文件不存在！');
		}
		//生成编译文件
	    $_parFile = TPL_C_DIR.md5($_file).$_file.'.php';
	    //当编译文件不存在，或者模板文件修改过，则生成编译文件
		if(!file_exists($_parFile)||filemtime($_parFile)<filemtime($_tplFile)){
			//引入模板解析类
		    require_once ROOT_PATH.'/includes/Parser.class.php';
			$_parser = new Parser($_tplFile);
			$_parser->compile($_parFile);  //编译文件
		}
		//载入编译文件_PATH
        include $_parFile;
		}
	
	
}

?>