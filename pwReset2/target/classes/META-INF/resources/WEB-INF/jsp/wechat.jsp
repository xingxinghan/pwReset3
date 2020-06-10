<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<!-- 引入JQuery  bootstrap.js-->
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/qwebchannel.js"></script>
<style type="text/css">
body {
	
	
	background: url(images/bg-library.png);
	background-size:cover;
	position:center;
	overflow: hidden;
	
}
#top {
	 height:70px;
	 background-color:rgba(86,88,84,0.4); 
}
 
.mt20{margin-top: 50px;}
.carousel-inner >.item img{width: 100%;}


</style>
</head>



<body>

	<!-- 顶栏 -->
	<div id="top" class="row">
		<div class="col-md-2">	
			<img src="images/netcenter.png" width="140%"/>
		</div>		
		<div class="col-md-5 col-md-offset-1" 
			style="margin-top:28px;font-size:15px;letter-spacing: 2px;font-family: Times New Roman;font-weight: 1000;">
			<a href="${pageContext.request.contextPath}/" style="color: #5D5D59;">主页</a>
		</div>	
		<div class="col-md-4" style="font-family:FangSong_GB2312;margin-top:14px;letter-spacing:2px;font-size:26px;color:#07272D;">
			<p style="margin-left: 350px;">企业微信加入步骤</p>
		</div>
		<!-- <div style="text-align:right;margin-right: 25px;">
			<img src="images/netcenter.png" width="20%"/>
		</div> -->
		

	</div>	
	
    <div class="container mt20">

        <!-- 在轮播图中增加id,方便小圆点和左右方向键控制图片 -->
        <div class="carousel slide" id="carouselbox" data-ride="carousel" data-interval="3000">

           <!--  轮播图正中间小圆点 -->
            <ol class="carousel-indicators">
                <!-- data-target: 控制某个轮播图的图片 . data-slide-to: 第几张. 默认从0开始  -->
                <li data-target="#carouselbox" data-slide-to="0" class="active"></li>
                <li data-target="#carouselbox" data-slide-to="1" ></li>
                <li data-target="#carouselbox" data-slide-to="2" ></li>
                <li data-target="#carouselbox" data-slide-to="3" ></li>
                <li data-target="#carouselbox" data-slide-to="4" ></li>
            </ol>

          <!--   轮播图片 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/wechat-1.png"/>
                </div>
                <div class="item">
                    <img src="images/wechat-2.png"/>
                </div>
                <div class="item">
                    <img src="images/wechat-3.png"/>
                </div>
                <div class="item">
                    <img src="images/wechat-4.png"/>
                </div>
                <div class="item">
                    <img src="images/wechat-5.png"/>
                </div>
            </div>

            <!-- 左右箭头 -->
           <!--  左侧 -->
          <!--   此处href为待控制的div的ID。  注意 ，一定要加#，因为源码是根据js控制的，data-slide:prev 上一张  , next下一张  -->
            <a href="#carouselbox" class="left carousel-control" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
         <!--    右侧 -->
            <a href="#carouselbox" class="right carousel-control" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
	
	<script>
	    var t=600;
	    var timer=setInterval(time,1000);
	    function time(){
	        t--;
	        if (t==0){
	            clearInterval(timer);
				return window.location.href='${pageContext.request.contextPath}/';
	        }console.log(t);
	    }
	
		
	</script>
	
	
	
</body>
</html>