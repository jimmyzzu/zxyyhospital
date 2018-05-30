<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchDoctor.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.SearchDoctor" %>

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
     <link rel="stylesheet" href="js/plugins/layermobile/need/layer.css">
    <script src="js/plugins/layermobile/layer.m.js"></script>
    <title>我要约医生</title>
</head>
<body style=" background:#fff;">
    <form id="form1" runat="server">
    <header class="ui-header">
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <!--<h1>河南省人民医院</h1>-->
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
   <header class="ui-blk-tit">
        <h3 style=" color:#21a2c6;">我要约医生</h3>
    </header>
    <section class="ui-blk">
    
    <div class="ui-blk-cnt jobs-list" style="border:none;">
    
        <div class="control-group">
    
          <div class="controls" style=" width:90%; margin:0 auto;">
            <%--<input placeholder="就诊卡号" class="input-xlarge" type="text">--%>
            <!--<p class="help-block">请输入您的身份证号</p>-->
            <asp:TextBox ID="TextDoctor" runat="server" placeholder="医生姓名或拼音" class="input-xlarge search-query"></asp:TextBox>
          </div>
          </div>
          <div class="buttons mt20" style=" width:90%; margin:0 auto;">
            <%--<button class="btn btn-success w100 btn-primary2" id="">确定<tton>--%>
            <asp:Button ID="ButtonDoc"
                    runat="server" Text="搜索" onclick="ButtonDoc_Click" class="btn btn-success w100 btn-primary2" style=" margin-top:20px;"/>
          </div>
        </div>
     
    <%--<div class="ui-blk-cnt jobs-list">
     <asp:TextBox ID="TextDoctor" runat="server" placeholder="医生姓名或拼音"></asp:TextBox>
        <asp:Button ID="ButtonDoc"
                    runat="server" Text="确定" onclick="ButtonDoc_Click" />
    </div>--%>
    
    
</section>

    </form>
</body>
</html>
