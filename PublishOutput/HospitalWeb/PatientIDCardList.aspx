<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientIDCardList.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.PatientIDCardList" %>

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
<title>就诊卡信息列表</title>
</head>
<body>
     <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
    <a href="PatientIDCardEdit.aspx?action=Add" ID="Button1" class="ui-icon1 icon-btn1 btn-menu1">添加就诊卡</a> 
</header>

<section class="ui-blk">
     <div class="youqingtishi" style="padding:5px; width:100%;">
    <p style="padding:20px 10px; color:red; text-align:center;">友情提示：点击右上角按钮可添加就诊卡信息</p>
    </div>
    <div class="ui-blk-cnt jobs-list">
     <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
        <div class="name-list" style=" clear:both; height:auto; overflow:hidden">
          <div style=" float:right">
        	<a href="PatientIDCardEdit.aspx?id=<%#Eval("id")%>&action=Edit" class=" mt20">编辑</a></div>
        	<!--<button type="button" class="btn dropdown-toggle btn-primary2" id="" style=" margin-top:20px;" data-toggle="dropdown">编辑</button>-->
            <div style=" float:left; width:80%" onclick="javascript:window.location.href='PatientCardsOfOnePatient.aspx?idCardNo=<%#Eval("UserNo")%>&name=<%#Eval("Name")%>&action=Edit'">
            <h4 class="jobs-hd"><%#Eval("Name")%></h4>
            <span class="jobs-name">身份证号：<%#Eval("UserNo")%></span><br />
            <span class="jobs-name">电话号码：<%#Eval("Phone")%></span></div>
        </div>
 </ItemTemplate>
        </asp:Repeater>
        
    </div>
    
</section>
    </form>
</body>
</html>
