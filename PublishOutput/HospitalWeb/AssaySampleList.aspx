<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssaySampleList.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.AssaySampleList" %>

<!DOCTYPE html>

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
 <title>检验报告</title>
</head>
<body>
     <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
<section class="ui-blk">
    <div class="youqingtishi" style="padding:5px; width:100%;">
    </div>
    <div class="ui-blk-cnt jobs-list">
        <% //循环接口数据
            foreach (System.Xml.XmlNode node in xnl)
            {
                var assayId = node["applyNo"].InnerText;
                var date = node["reqDate"].InnerText;
                var sampleName = node["itemNam"].InnerText;
                var departmentName = node["reqDeptName"].InnerText;
                %>

                <div class="name-list" style=" clear:both; height:auto; overflow:hidden">
        	        <!--<button type="button" class="btn dropdown-toggle btn-primary2" id="" style=" margin-top:20px;" data-toggle="dropdown">编辑</button>-->
                    <div style=" float:left; width:80%" onclick="javascript:window.location.href='AssaySampleDetail.aspx?assayId=<%= assayId%>&sampleName=<%= sampleName%>&cardType=<%= cardType%>&mediCardNo=<%= mediCardNO%>'">
                    <h4 class="jobs-hd"><%=sampleName%></h4>
                    <span class="jobs-name"><%= date%></span>
                 <%--   <br /><span class="jobs-name">身份证号：<%#Eval("cardNo")%></span>--%>
                    <i class="ui-icon btn-more"></i>
                    </div>
                </div>

              

        <%} %>
    </div>
    
</section>
    </form>
</body>
</html>
