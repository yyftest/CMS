<?php
//验证码类
	class ValidateCode{
		private $charset = 'abcdefghkmnprstuvwxyzABCDEFGHkMNPRSTUVWXYZ23456789';//随机因子
		//生成随机码
		public function createCode(){
			return $this->charset[2];
		}
	}
?>