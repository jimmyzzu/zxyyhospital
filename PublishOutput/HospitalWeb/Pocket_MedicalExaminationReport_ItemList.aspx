<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_MedicalExaminationReport_ItemList.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_MedicalExaminationReport_ItemList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <meta charset="utf-8">
    <title>体检报告</title>
    <%--<link href="css/news.css" rel="stylesheet" type="text/css">--%>
    <link rel="stylesheet" href="css/style.css" type="text/css">
  <%--  <link rel="stylesheet" href="css/slide.css" type="text/css">
    <link rel="stylesheet" href="css/resume.css" type="text/css">--%>
    <link href="css/report.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    html{font-size:100%;}
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <header class="ui-header">
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <!--<h1>河南省人民医院</h1>-->
    <%--<h1><span><img src="images/logo.png" /></span></h1>--%>
      <h1>体检报告</h1>
</header>
<%if (IsExistReport)
  { %>
        <section style="background: none;">
    <%--            <div class="ui-blk-cnt tj-list mt10 main4">
        <h2 class="tj-hd">个人信息</h2>
        <p class="tj-ys">年龄：<asp:Label ID="lb_AGE" runat="server" Text=""></asp:Label></p>
        <p class="tj-ys">身份证号：<asp:Label ID="lb_IDCARD" runat="server" Text=""></asp:Label></p>
        <p class="tj-ys">手机号：<asp:Label ID="lb_MOBILEPHONE" runat="server" Text=""></asp:Label></p>
        <p class="tj-ys">体检分院名称：<asp:Label ID="lb_REGISTDEPT" runat="server" Text=""></asp:Label></p>
    </div>--%>

    <ul class="report-detail" style=" border-bottom:1px solid #00c07d; width: 90%; margin: 20px auto; padding-bottom:10px;">
        <p style="padding: 0 0.8em;font-size: 1rem;margin: 5px 0; width:50%;">姓名：<asp:Label ID="lb_NAME" runat="server" Text=""></asp:Label></p>
        <p style="padding: 0 0.8em;font-size: 1rem;margin: 5px 0;  width:50%;margin-left:50%;margin-top:-29px;">性别：<asp:Label ID="lb_SEX" runat="server" Text=""></asp:Label></p>
        <p style="padding: 0 0.8em;font-size: 1rem;margin: 5px 0; width:50%;">年龄：<asp:Label ID="lb_AGE" runat="server" Text=""></asp:Label></p>
        <p style="padding: 0 0.8em;font-size: 1rem;margin: 5px 0;  width:50%;margin-left:50%;margin-top:-29px;">体检日期：<asp:Label ID="lb_REGISTDATE" runat="server" Text=""></asp:Label></p>
        <p style="padding: 0 0.8em;font-size: 1rem;margin: 5px 0;">工作单位：<asp:Label ID="lb_ENTERPRICE" runat="server" Text=""></asp:Label></p>
    </ul>
        </section>
    <nav id="nav1" style="margin-bottom: 70px;">
    <ul class="nav-list" style="margin:8px 8px 8px 2px;">
        
         <a title="主检报告" href="Pocket_MedicalExaminationReportDetail.aspx?patientName=<%= patientName%>&IDCardNo=<%= IDCardNo%>&checkId=<%= CheckId %>&itemType=0">
        <li onclick="" class="yyghxz">
            <div class="c-62c500">主检报告</div>
        </li></a>

        <a title="常规检查" href="Pocket_MedicalExaminationReportDetail.aspx?patientName=<%= patientName%>&IDCardNo=<%= IDCardNo%>&checkId=<%= CheckId %>&itemType=1">
        <li class="ksdh" onclick="">
            <div class="c-3d98ff">常规检查</div>
        </li></a>
         
        <a title="检验结果" href="Pocket_MedicalExaminationReportDetail.aspx?patientName=<%= patientName%>&IDCardNo=<%= IDCardNo%>&checkId=<%= CheckId %>&itemType=2">
        <li onclick="" class="tjtccx">
            <div class="c-8a95ff">检验结果</div>
        </li></a>

<%--        <a title="影像结果" href="Pocket_MedicalExaminationReport_Picture.aspx?patientName=<%= patientName%>&IDCardNo=<%= IDCardNo%>&itemType=3"> 
        <li onclick="" class="tjbgcx">
            <div class="c-66cc66">影像结果</div>
        </li></a>--%>
       
        <a title="常见保健常识" href="Pocket_MedicalExaminationReport_Knowledge.html"><li onclick="" class="mzxz">
            <div class="c-ff9913">常用保健知识</div>
        </li></a>
    </ul>    
</nav>
<%}
  else
  { %>
  <div class="youqingtishi" style="padding:5px; width:100%;">
    <p style="padding:20px 10px; color:red; text-align:center;">暂无体检报告</p>
    </div>
<%} %>
    </form>
</body>
</html>