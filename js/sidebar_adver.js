var sidebar = [];
sidebar[1] = {
	'title' : '车优惠',
	'pic' : '/CMS10.9/uploads/2017-11-12/20171112202730937.png',
	'link' : 'http://www.yc60.com'
};
sidebar[2] = {
	'title' : 'M绅士全场三折',
	'pic' : '/CMS10.9/uploads/2017-11-12/20171112200222970.png',
	'link' : 'https://www.jd.com/'
};
sidebar[3] = {
	'title' : '爱制造旗舰店',
	'pic' : '/CMS10.9/uploads/2017-11-12/20171112202347877.png',
	'link' : 'http://www.360.com'
};
sidebar[4] = {
	'title' : '生活家买一送三',
	'pic' : '/CMS10.9/uploads/2017-11-12/20171112202614790.png',
	'link' : 'http://www.tmall.com'
};
var i = Math.floor(Math.random()*4+1);
document.write('<a href="'+sidebar[i].link+'" target="_blank" title="'+sidebar[i].title+'"><img border="0" src="'+sidebar[i].pic+'"></a>');