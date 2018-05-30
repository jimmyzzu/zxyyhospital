<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_ConsumingRecords.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_ConsumingRecords" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<title>我的帐单</title>
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
 <script type="text/javascript">
     var contectid = "<%=contactsid%>";
     if (window.name != "bencalie") {
         location.reload();
         window.name = "bencalie";
     } else {
         window.name = "";
     }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1>我的帐单</h1>
</header>
<section class="ui-blk">
<div class="youqingtishi" style="padding:5px; width:100%;">
    </div>
    <div class="ui-blk-cnt jobs-list">
     <asp:Repeater ID="rptList1" runat="server">
        <ItemTemplate>

            <a href="Pocket_ConsumingRecordsDetail.aspx?patCardNo=<%# Eval("MediCardNO")%>">
                <h4 class="jobs-hd">就诊卡号：<%#Eval("MediCardNO")%></h4>
                <h4 class="jobs-hd">余额：<%#Eval("Balance").ToString() !="" ?Convert.ToDecimal(Eval("Balance")).ToString("#0.00"):""%></h4>
                <span class="jobs-name">姓名：<%#Eval("Name")%></span><br />
                <span class="jobs-name">身份证号：<%#Eval("UserNo")%></span><br />
                <i class="ui-icon btn-more"></i>
            </a>
        </ItemTemplate>
    </asp:Repeater>
    </div>

    <script src="js/jquery.min.js"></script>
    <script type="text/javascript">

    </script>
</section>
    </form>
</body>
</html>
