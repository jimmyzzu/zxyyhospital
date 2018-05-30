<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyOrder.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.MyOrder" %>

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
<title>订单列表</title>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    <a href="MyInfo.aspx" ID="Button1" class="ui-icon1 icon-btn1 btn-menu1" style="height: 100%;overflow: hidden; position: absolute;left: 3.9%; text-indent: -99em; top: 0;width: 50px;background-position : 10px -335px;
    ">返回</a>
    <h1>郑州市中心医院</h1>
</header>
<section class="ui-blk">
    <div class="youqingtishi" style="padding:5px; width:100%;">
    <p style="padding:20px 10px; color:red; text-align:center;">友情提示:取消预约需在就诊前一天的12:00之前。</p>
    </div>
    <div class="ui-blk-cnt jobs-list">
      <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
        <div class="name-list1">
            <a href="OrderDetail.aspx?id=<%#Eval("id")%>">
            <h42 class="jobs-hd">预约联系人：<%#Eval("Name")%></h42><br />
            <span class="jobs-name1">预约医生：<%#Eval("DepartName")%>  <%#Eval("DoctorName")%></span><br />
            <span class="jobs-name1">预约时间：<%#Eval("AppDateStr")%></span><br />
            <span class="jobs-name1">识别码：<%#Eval("orderid")%></span><br />
            <span class="jobs-name1">预约状态：<%#getStatusString(Eval("status").ToString(), Eval("AppDateStr").ToString())%></span>
            </a>
        </div>
        </ItemTemplate>
                                </asp:Repeater>

       
    </div>
    
</section>
    </form>
</body>
</html>
