<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.OrderDetail" %>

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
<title>挂号详情</title>
</head>
<body>
    <form id="form1" runat="server">
   <header class="ui-header">
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <h1>郑州市中心医院</h1>
</header>
<header class="ui-blk-tit">
    <h3>订单详情</h3>
</header>
<section class="blo">
    <div class="ghxxqr">
    <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
      <ul>
      	<li><span>就诊科室：</span><%#Eval("DepartName")%></li>
        <li><span>就诊医生：</span><%#Eval("DoctorName")%></li>
        <li><span>门诊时间：</span><%#Eval("AppDateStr")%></li>
        <li><span>联系人：</span><%#Eval("Name")%></li>
        <li><span>身份证：</span><%#Eval("UserNo")%></li>
        <li><span>识别码：</span><%#Eval("orderid")%></li>
        <li><span>预约状态：</span><%#getStatusString(Eval("status").ToString(), Eval("AppDateStr").ToString())%></li>
      </ul>
      </ItemTemplate>
                                </asp:Repeater>
    </div>    
</section>
<section class="ui-blk" style=" padding:0 2.3%;">
   
    <div class="buttons mt20">
            
            <asp:Button ID="BtQx" runat="server" Text="取消预约" 
                class="btn btn-success w100 btn-primary2" style=" font-size: 1.2em;" 
                onclick="BtQx_Click"></asp:Button>
                <div class="btn btn-success btn-primary2" style=" font-size: 1.2em;word-wrap: break-word;white-space:normal;width: 90%" id="quxiaoshibai" runat="server" visible="false">
                
                </div>
          </div>    
</section>
    </form>
</body>
</html>
