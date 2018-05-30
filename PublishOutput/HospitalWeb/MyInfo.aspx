<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyInfo.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.MyInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
<title>个人中心</title>
</head>
<body>
    <form id="form1" runat="server">
 <header class="ui-header">
    <h1>个人中心</h1>
</header>
<!-- <section class="ghb">
    <div class="ui-blk-cnt jobs-list">
        <a href="#" style="height:60px;">
        	<div class="fl-img">
            	<img src="images/2012121819450318.jpg"/>
            </div> 
            <div class="fr-text">   
                <h4 class="jobs-hd">美美</h4>
                <span class="jobs-name">电话：15532458546</span>
                <i class="ui-icon btn-more"></i>
            </div>
        </a>
    </div>
 </section>--> 
 <section class="mt20">
    <header class="ui-blk-tit">
        <h4 style=" font-weight:bold;">门诊</h4>
    </header>
    <div class="ui-blk-cnt jobs-list">
        <a href="MyOrder.aspx" style="padding: 4% 2.3%;">
            <h4 class="jobs-hd">预约挂号订单查询</h4>
            <i class="ui-icon btn-more"></i>
        </a>
            <a href="PatientIDCardList.aspx" style="padding: 4% 2.3%;">
            <h4 class="jobs-hd">就诊卡信息管理</h4>
            <i class="ui-icon btn-more"></i>
        </a>
        <a href="AssaySampleList.aspx" style="padding: 4% 2.3%;">
            <h4 class="jobs-hd">我的化验单</h4>
            <i class="ui-icon btn-more"></i>
        </a>
        <a href="https://y.wizarcan.com/wxf/index/my_award/1186" style="padding: 4% 2.3%;">
            <h4 class="jobs-hd">我的卡劵</h4>
            <i class="ui-icon btn-more"></i>
        </a>
    </div>
</section>
<%--<section class="mt20">
    <header class="ui-blk-tit">
        <h4>住院</h4>
    </header>
    <div class="ui-blk-cnt jobs-list">
        <a href="kaifa.html">
            <h4 class="jobs-hd">我的住院信息</h4>
            <i class="ui-icon btn-more"></i>
        </a>
    </div>
</section>
<section class="mt20 mb80">
    <header class="ui-blk-tit">
        <h4>体检</h4>
    </header>
    <div class="ui-blk-cnt jobs-list">
        <a href="kaifa.html">
            <h4 class="jobs-hd">体检报告查询</h4>
            <i class="ui-icon btn-more"></i>
        </a>
    </div>
</section>--%>  
  <footer id="Float" style=" width:100%;clear:both;position:fixed !important;position:absolute;z-index:9999;bottom:0px !important;_top:expression(eval(document.compatMode &amp;&amp; document.compatMode=='CSS1Compat')?documentElement.scrollTop+(document.documentElement.clientHeight-this.offsetHeight):document.body.scrollTop+(document.body.clientHeight-this.clientHeight));">
			<div class="footer">
			<input type="hidden" id="TemMenu" name="TemMenu">
            <dl>
                <dt id="" class="b-r1"><a href="MenZhenIndex.aspx">门诊</a></dt>
            </dl>
            <dl>
                <dt id=""  class="b-r1"><a href="ZhuYuanIndex.aspx">住院</a></dt>
            </dl>
            <dl>
                <dt id="" class="b-r1"><a href="TiJianIndex.aspx">体检</a></dt>
            </dl>
            <dl class="on">
                <dt id=""><a href="MyInfo.aspx">个人中心</a></dt>
            </dl>
			</div>
        </footer>        
 </form>
</body>
</html>
