<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zzyyDaozhen_c2.aspx.cs" Inherits="TandT.WeixinWeb.Daozhen.zzyyDaozhen_c2" %>

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
		width: 90%;
    	height: 86%;
    	overflow: hidden;
		margin: 0 auto;
	}
    .btn13{
		top:11.1%;
		left:79%;
	}
	.btn14{
		top:36.2%;
		left:79%;
	}
	.btn15{
		top:45.1%;
		left:79%;
	}
	.btn16{
		top:56.1%;
		left:79%;
	}
	.btn17{
		top:26.1%;
		left:1%;
	}
	.btn18{
		top:43.1%;
		left:1%;
	}
	.btn19{
		top:74.1%;
		left:1%;
	}
	.btn20{
		top:-13.9%;
		left:1%;
	}
	.btn9{
		top:-2.9%;
		left:1%;
	}
	.btn10{
		top:26.1%;
		left:1%;
	}
	.btn11{
		top:58.1%;
		left:79%;
	}
	
    </style>

    <script src="js/jquery-1.5.1.min_team.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $("button a span").click(function () {
                if ($(this).html() == "耳眼口鼻") {
                    self.location = "zzyyDaozhen_keshilist.aspx?part=" + $(this).html() + "&sex=2";
                } else {
                    self.location = "zzyyDaozhen_doctorlist3.aspx?part=" + $(this).html() + "&sex=2";
                }
            });
        });
    </script>
</head>
<body id="daozhen1" class=" bg3">
 <form id="form1" runat="server" style=" width: 100%;height: 100%;overflow: hidden;">
 <section class="suggestion">
			<div class="nav">
               <span class="item"><a href="zzyyDaozhen.aspx">男性</a></span>
			   <span class="item"><a href="zzyyDaozhen_w1.aspx">女性</a></span>
			   <span class="item on"><a href="javascript:void(0);">儿童</a></span>
		    </div>
</section>
<div class="renwu" style=" background-image:url(images/c2.png);">
<div class="renwu1" style="height:100%; width:50%; float:left;">
 <div class="renwu_6 "style="width:61%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 28.8%; position: relative;left: 12.1%;"></div>
 <button onclick="return false;"  class="btn17"><a href=""><span >颈部</span></a></button>
 <div class="renwu_7 "style="width:61%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 45.8%; position: relative;left: 12.1%;"></div>
 <button onclick="return false;"  class="btn18"><a href=""><span>腰部</span></a></button>
 <div class="renwu_8 "style="width:48%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 76.8%; position: relative;left: 6.1%;"></div>
 <button onclick="return false;"  class="btn19"><a href=""><span>足部</span></a></button>
</div>

<div style=" float:left; width:36%; height:100%;">
<div class="renwu_1 "style="width:92%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 13.8%; position: relative;left: -2.9%;"></div>   
<button onclick="return false;"  class="btn13"><a href=""><span >头部</span></a></button> 
<div class="renwu_2 "style="width:65%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 38.8%; position: relative;left: 0.1%;"></div>
 <button onclick="return false;"  class="btn14"><a href=""><span>背部</span></a></button>
 <div class="renwu_3 "style="width:67%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 47.8%; position: relative;left: -0.9%;"></div>
 <button onclick="return false;"  class="btn15"><a href=""><span>臀部</span></a></button>
 <div class="renwu_5 "style="width:58%;height:2px;margin:0px auto;padding:0px;background-color:#21a2c6;overflow:hidden; top: 58.8%; position: relative;left: 9.1%;"></div>
 <button onclick="return false;"  class="btn16"><a href=""><span>腿部</span></a></button>
 <button onclick="return false;"  class="btn11"><a href=""><span>其他</span></a></button>
 <a href="zzyyDaozhen_c1.aspx" style="top: 61.1%;left: 79%;border-radius: 6px; display: block;text-align: center; line-height: 30px; position: relative; width: 60px;"><span class="btn12"><img src="images/zs_btn.png" style=" " /></span></a>
 </div>
 </div>


 </form>
</body></html>
