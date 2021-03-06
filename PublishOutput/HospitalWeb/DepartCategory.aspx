﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartCategory.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.DepartCategory" %>

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
    <title>科室类型</title>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <!--<h1>河南省人民医院</h1>-->
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>科室类型</h3>
    </header>
    <div class="ui-blk-cnt jobs-list">
   
        <%--<a href="GuahaoMode.aspx?HosId=<%=HosId%>&departName=专家门诊">--%>
        <a href="FistDepart.aspx?HosId=<%=HosId%>&departName=专家门诊">
            <h4 class="jobs-hd">专家门诊</h4>
            <i class="ui-icon btn-more"></i>
        </a>
        <%if (HosId == "010101")
          {%>
         <a href="GuahaoMode_Zhuanke.aspx?HosId=<%=HosId%>&departName=专科门诊">
        <%-- <a href="SecondDepart.aspx?HosId=<%=HosId%>&departName=专科门诊">--%>
            <h4 class="jobs-hd">专科门诊</h4>
            <i class="ui-icon btn-more"></i>
        </a>
        <%} %>
    </div>
    
    
</section>
    </form>
</body>
</html>
