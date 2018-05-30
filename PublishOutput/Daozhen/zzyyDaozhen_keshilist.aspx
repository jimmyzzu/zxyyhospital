<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zzyyDaozhen_keshilist.aspx.cs" Inherits="TandT.WeixinWeb.Daozhen.zzyyDaozhen_keshilist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"> 
<title>智能导诊</title> 
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
    
<script src="../Scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {

        var sex = getUrlParam("sex");
        $("div a").click(function () {
            self.location = "zzyyDaozhen_doctorlist3.aspx?part=" + $(this).find("h4").html() + "&sex=" + sex;
        });
    });

    //获取url中的参数
    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg);  //匹配目标参数
        if (r != null) return unescape(r[2]); return null; //返回参数值
    }
</script>
</head>
<body id="cate5" style=" background:#fff;">
<form id="form1" runat="server">
<header class="ui-header">
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <!--<h1>河南省人民医院</h1>-->
    <h1>耳眼口鼻</h1>
</header>
<!--<div class="jibingleft">

        <a href="#"><h3>角膜炎</h3></a>
    
        <a href="#"><h3>近视</h3></a>
    
</div>-->
<section class="ui-blk1">
    
    <div class="ui-blk-cnt jobs-list">
        <a href="#">
            <h4 class="jobs-hd">耳部</h4>
            <i class="ui-icon btn-more"></i>
        </a>
        <a href="#">
            <h4 class="jobs-hd">眼部</h4>
            <i class="ui-icon btn-more"></i>
        </a>
        <a href="#">
            <h4 class="jobs-hd">口腔</h4>
            <i class="ui-icon btn-more"></i>
        </a>
        <a href="#">
            <h4 class="jobs-hd">鼻部</h4>
            <i class="ui-icon btn-more"></i>
        </a>
      
    </div>
</section>
</form>
</body></html>
