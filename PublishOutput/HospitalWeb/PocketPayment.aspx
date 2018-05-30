<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PocketPayment.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.PocketPayment" %>

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
    <title>掌上支付</title>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>掌上支付</h3>
    </header>
    <div class="ui-blk-cnt jobs-list">
        <a href="Pocket_MenzhenPayment.aspx">
            <h4 class="jobs-hd">门诊待缴费</h4>
            <i class="ui-icon btn-more"></i>
        </a>
        <a href="Pocket_TakeNumber.aspx">
            <h4 class="jobs-hd">预约取号</h4>
            <i class="ui-icon btn-more"></i>
        </a>
<%--        <a href="Pocket_RechargeCard.aspx">
            <h4 class="jobs-hd">卡充值</h4>
            <i class="ui-icon btn-more"></i>
        </a>--%>
    <%--    <a href="Pocket_HospitalizationDeposit.aspx">
            <h4 class="jobs-hd">住院押金缴费</h4>
            <i class="ui-icon btn-more"></i>
        </a>--%>
        <a href="Pocket_ConsumingRecords.aspx">
            <h4 class="jobs-hd">消费明细查询</h4>
            <i class="ui-icon btn-more"></i>
        </a>
         <a href="Pocket_MedicalExaminationReport.aspx">
            <h4 class="jobs-hd">我的体检报告</h4>
            <i class="ui-icon btn-more"></i>
        </a>
    <%--     <a href="Pocket_TakeNumber_QueueSchedule.aspx">
            <h4 class="jobs-hd">排队进度</h4>
            <i class="ui-icon btn-more"></i>
        </a>--%>
        
    </div>
    
    
</section>
    </form>
</body>
</html>
