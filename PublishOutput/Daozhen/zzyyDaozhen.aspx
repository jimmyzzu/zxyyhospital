<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zzyyDaozhen.aspx.cs" Inherits="TandT.WeixinWeb.Daozhen.zzyyDaozhen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"> 
 <title>智能导诊</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<!--<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">-->
<meta charset="utf-8">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
<link rel="stylesheet" href="css/zzyy_lu.css" type="text/css" />
<!--<link rel="stylesheet" href="css/mui.min.css" type="text/css" />-->
<!--<script src="js/mui.min.js"></script>
<script type="text/javascript" charset="utf-8">
      	mui.init();
    </script>-->
<style type="text/css">
    body,html{
    	width: 100%;
    	height: 100%;
    	overflow: hidden;
    }
	.renwu{
		width: 94%;
    	height: 86%;
    	overflow: hidden;
		margin: 0 auto;
	}
    .btn1{
		top:1.1%;
		left:79%;
	}
	.btn2{
		top:3.2%;
		left:79%;
	}
	.btn3{
		top:24.1%;
		left:79%;
	}
	.btn4{
		top:31.1%;
		left:79%;
	}
	.btn5{
		top:49.1%;
		left:79%;
	}
	.btn6{
		top:4.1%;
		left:1%;
	}
	.btn7{
		top:7.1%;
		left:1%;
	}
	.btn8{
		top:16.1%;
		left:1%;
	}
	.btn9{
		top:26.1%;
		left:1%;
	}
	.btn10{
		top:60.1%;
		left:1%;
	}
	.btn11{
		top:52.1%;
		left:79%;
	}
	
    </style>
    
    <script src="js/jquery-1.5.1.min_team.js"></script>
    <script type="text/javascript">

        $(document).ready(function() {
            $("button a span").click(function () {
                if ($(this).html() == "耳眼口鼻") {
                    self.location = "zzyyDaozhen_keshilist.aspx?part=" + $(this).html() + "&sex=1";
                } else {
                    self.location = "zzyyDaozhen_doctorlist3.aspx?part=" + $(this).html() + "&sex=1";
                }
            });
        });
    </script>
</head>
<body id="daozhen1" class=" bg3">
 <form id="form1" runat="server" style=" width: 100%;height: 100%;overflow: hidden;">
 <section class="suggestion">
			<div class="nav">
               <span class="item on"><a href="javascript:void(0);">男性</a></span>
			   <span class="item"><a href="zzyyDaozhen_w1.aspx">女性</a></span>
			   <span class="item"><a href="zzyyDaozhen_c1.aspx">儿童</a></span>
		    </div>
</section>
<div class="renwu">
<div class="renwu1" style="height:100%; width:50%; float:left;">
 <div class="renwu_6 "style="width:55%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 7.8%; position: relative; right:-15%;"></div>
 <button onclick="return false;"  class="btn6" style=" width:90px;"><a href=""><span >耳眼口鼻</span></a></button>
 <div class="renwu_7 "style="width:68%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 10.8%; position: relative;right:-12%;"></div>
 <button onclick="return false;"  class="btn7"><a href=""><span>颈部</span></a></button>
 <div class="renwu_8 "style="width:44%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 18.8%; position: relative;right:0%;"></div>
 <button onclick="return false;"  class="btn8"><a href=""><span>上肢</span></a></button>
 <div class="renwu_9 "style="width:27%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 28.8%; position: relative;right:3%;"></div>
 <button onclick="return false;"  class="btn9"><a href=""><span>手部</span></a></button>
 <div class="renwu_10 "style="width:59%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 62.8%; position: relative;right:-8%;"></div>
 <button onclick="return false;"  class="btn10"><a href=""><span>足部</span></a></button>
</div>

<div style=" float:left; width:36%; height:100%;">

<!--</div>
<div class="renwu1" style=" z-index:999;"> -->
<div class="renwu_1 "style="width:70%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 3.8%; position: relative;left: -5.9%;"></div>   
<button onclick=" return false;"  class="btn1"><a href=""><span >头部</span></a></button> 
<div class="renwu_2 "style="width:76%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 5.8%; position: relative;left: -9%;"></div>
 <button onclick="return false;"  class="btn2"><a href=""><span>面部</span></a></button>
 <div class="renwu_3 "style="width:70%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 26.8%; position: relative;left: -6.9%;"></div>
 <button onclick="return false;"  class="btn3"><a href=""><span>腹部</span></a></button>
 <div class="renwu_4 "style="width:70%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 33.8%; position: relative;left: -5.9%;"></div>
 <button onclick="return false;"  class="btn4"><a href=""><span>生殖</span></a></button>
 <div class="renwu_5 "style="width:63%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 51.8%; position: relative;left: -2.9%;"></div>
 <button onclick="return false;"  class="btn5"><a href=""><span>腿部</span></a></button>
 <button onclick="return false;"  class="btn11"><a href=""><span>其他</span></a></button>
 <a href="zzyyDaozhen_m2.aspx" style="top: 53.1%;left: 79%;border-radius: 6px; display: block;text-align: center; line-height: 30px; position: relative; width: 60px;"><span class="btn12"><img src="images/zs_btn.png" style=" " /></span></a>
 </div>
 </div>

 </form>
</body></html>
