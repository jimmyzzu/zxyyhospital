<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_MenzhenPayment.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_MenzhenPayment" %>

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
    <title>门诊待缴费</title>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>门诊待缴费</h3>
    </header>
    <div class="ui-blk-cnt jobs-list">
       <asp:Repeater ID="rptList1" runat="server">
            <ItemTemplate>
                <a href="Pocket_MenzhenPaymentDetail.aspx?patCardType=<%# Eval("patCardType") %>&patCardNo=<%# Eval("patCardNo") %>&hisOrdNum=<%#Eval("hisOrdNum")%>&payName=<%#Eval("payName")%>&totalAmt=<%#Convert.ToDecimal(Eval("totalAmt"))/100%>">
                    <h4 class="jobs-hd">就诊卡号：<%#Eval("patCardNo")%></h4>
                    <span class="jobs-name">医院订单号：<%#Eval("hisOrdNum")%></span><br />
                    <%--<span class="jobs-name">缴费项名称：<%#Eval("payName")%></span><br />--%>
                    <span class="jobs-name">接诊科室名称：<%#Eval("deptName")%></span><br />
                    <span class="jobs-name">接诊医生姓名：<%#Eval("doctorName")%></span><br />
                    <span class="jobs-name">缴费总额：<%#Convert.ToDecimal(Eval("totalAmt"))/100%></span><br />
                    <span class="jobs-name">下单时间：<%#Eval("cfTime")%></span>
                    <i class="ui-icon btn-more"></i>
                </a>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    
    
</section>
    </form>
</body>
</html>
