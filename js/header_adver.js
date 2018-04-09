var header = [];
header[1] = {
	'title' : '湖南信息职业技术学院',
	'pic' : '/CMS10.9/uploads/2017-11-12/201711122010411000.png',
	'link' : 'http://www.hniu.cn/'
};
header[2] = {
	'title' : '网易娱乐跨界盛典',
	'pic' : '/CMS10.9/uploads/2017-11-10/20171110193024416.png',
	'link' : 'http://www.163.com'
};
header[3] = {
	'title' : '暑假人气网游推荐',
	'pic' : '/CMS10.9/uploads/2017-11-10/20171110192916392.png',
	'link' : 'http://www.taobao.com'
};
var i = Math.floor(Math.random()*3+1);
document.write('<a href="'+header[i].link+'" target="_blank" title="'+header[i].title+'"><img src="'+header[i].pic+'"></a>');