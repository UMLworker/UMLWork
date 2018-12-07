window.onload = function(){
	var oDiv = document.getElementById('scrollDiv');
	var oUl = document.getElementById('scrollul');
	var speed = -1;//初始化速度

	oUl.innerHTML += oUl.innerHTML;//图片内容*2-----参考图（2）
	var oLi= oUl.getElementsByTagName('li');
	oUl.style.width = oLi.length*200+'px';//设置ul的宽度使图片可以放下

	// var oleftBtn = document.getElementById('leftBtn');
	// var orightBtn = document.getElementById('rightBtn');


	function move(){
		if(oUl.offsetLeft<-(oUl.offsetWidth/2)){//向左滚动，当靠左的图4移出边框时
			oUl.style.left = 0;
		}

		if(oUl.offsetLeft > 0){//向右滚动，当靠右的图1移出边框时
			oUl.style.left = -(oUl.offsetWidth/2)+'px';
		}

		oUl.style.left = oUl.offsetLeft + speed + 'px';
	}

	// // 向左滚动按钮
	// oleftBtn.addEventListener('click',function(){
	// 	speed = -2;
	// },false);
	// // 向右滚动按钮
	// orightBtn.addEventListener('click',function(){
	// 	speed = 2;
	// },false);

	var timer = setInterval(move,30);//全局变量 ，保存返回的定时器

	oDiv.addEventListener('mouseout', function () {
		timer = setInterval(move,30);
	},false);
	oDiv.addEventListener('mousemove', function () {
		clearInterval(timer);//鼠标移入清除定时器
	},false);
}