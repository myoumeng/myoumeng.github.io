<link rel="stylesheet" class="aplayer-secondary-style-marker" href="/assets/css/APlayer.min.css"><script src="/assets/js/APlayer.min.js" class="aplayer-secondary-script-marker"></script><script class="meting-secondary-script-marker" src="/assets/js/Meting.min.js"></script>const live2d_path = "https://myoumeng.github.io/live2d-widget/";
//const live2d_path = "./";
//<script src="https://myoumeng.github.io/live2d-widget/autoload.js"></script>


$("<link>").attr({href: live2d_path + "waifu.css", rel: "stylesheet", type: "text/css"}).appendTo("head");
//waifu.css的绝对路径

$.ajax({
	url: live2d_path + "live2d.min.js",
	dataType: "script",
	cache: true,
	async: false
});
//live2d.min.js的绝对路径

$.ajax({
	url: live2d_path + "waifu-tips.js",
	dataType: "script",
	cache: true,
	async: false
});
//waifu-tips.js的绝对路径

//初始化看板娘，会自动加载指定目录下的waifu-tips.json
$(window).on("load", function() {
	initWidget(live2d_path + "waifu-tips.json", "https://live2d.fghrsh.net/api");
});
//initWidget第一个参数为waifu-tips.json的绝对路径
//第二个参数为api地址（无需修改）
//api后端可自行搭建，参考https://github.com/fghrsh/live2d_api