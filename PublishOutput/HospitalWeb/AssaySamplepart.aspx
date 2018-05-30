<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssaySamplepart.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.AssaySamplepart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"> 
 
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
<title>化验单查询</title>
</head>
<body id="cate6">
<form id="form1" runat="server">
<header class="ui-blk-tj">
    <h3>检查单</h3>
</header>
<section class="ui-blk" style="margin-bottom:30px;">
    <div class="ui-blk-cnt jobs-list">
        <%--<a href="#">
            <h4 class="jobs-hd">癌胚抗原</h4>
            <i class="ui-icon btn-more"></i>
        </a>--%>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>    
</section>
</form>
</body></html>
