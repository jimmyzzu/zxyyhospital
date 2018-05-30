﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zzyyPhysical.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.zzyyPhysical" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"> 
 <title>体检套餐建议</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
</head>
<body id="cate6">
 <form id="form1" runat="server">
 <header class="ui-header">
    <h1>体检套餐建议</h1>
</header>
<div class="jsy">
    
    <!--<h2>价格：<span class="FF5A00">440元（男）&nbsp;508元（女）</span></h2>-->   
    <h3> （无乙肝五项，自愿检查请您签字） </h3>
    <div class="tcnr mt20">    
        <div class="dl"><%=PackageTitle %></div>
        <div class="tcnr1">
            <%if (!string.IsNullOrEmpty(Description))
              {  %>
              <h2><span>适合人群：</span> <%=Description %></h2>
            <%} %>
            
            <h3><span>项目：</span><%=PackageItems %></h3>

             <%if (!string.IsNullOrEmpty(SelfChoosePackageItems))
            {  %>
              <h3><span>自选项目：</span> <%=SelfChoosePackageItems%></h3>
            <%} %>

            <%if (!string.IsNullOrEmpty(Remark))
            {  %>
              <h3><span>备注：</span> <%=Remark %></h3>
            <%} %>
            <h4><span>价格：</span><%=Price %>元</h4>
          </div>
     </div>
 
</div>      
 </form>
</body></html>
