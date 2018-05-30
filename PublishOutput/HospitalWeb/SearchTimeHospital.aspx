﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchTimeHospital.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.SearchTimeHospital" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
    <title>医院列表</title>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>医院</h3>
    </header>
    <div class="ui-blk-cnt jobs-list">
     <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
        <%--<a href="DepartCategory.aspx?id=<%#Eval("id")%>&departName=<%#Eval("name")%>">--%>
        <a href="SearchTimeDepart.aspx?HosId=<%#Eval("id")%>&SearchTime=<%=Searchtime%>">
            <h4 class="jobs-hd"><%#Eval("name")%></h4>
            <i class="ui-icon btn-more"></i>
        </a>

        </ItemTemplate>
        </asp:Repeater>
    </div>
    
    
</section>
    </form>
</body>
</html>
