<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientCardsOfOnePatient.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.PatientCardsOfOnePatient" %>

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
</head>
<body>
     <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
<section class="ui-blk">
    <div class="ui-blk-cnt jobs-list">
     <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
        <div class="name-list" style=" clear:both; height:auto; overflow:hidden">
        	<!--<button type="button" class="btn dropdown-toggle btn-primary2" id="" style=" margin-top:20px;" data-toggle="dropdown">编辑</button>-->
            <div style=" float:left; width:80%" >
            <h4 class="jobs-hd">就诊卡号：<%#Eval("mediCardNo")%></h4>
            <span class="jobs-name">姓名：<%#Eval("patientName")%></span><br />
            <span class="jobs-name">身份证号：<%#Eval("cardNo")%></span>
            </div>
        </div>
 </ItemTemplate>
        </asp:Repeater>
        
    </div>
    
</section>
    </form>
</body>
</html>
