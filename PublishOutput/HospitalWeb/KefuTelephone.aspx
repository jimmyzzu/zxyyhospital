<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KefuTelephone.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.KefuTelephone" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head id="Head1" runat="server"> 
 <title>在线客服</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
<script type="text/javascript">
    function f() {
        document.getElementById("tel").click();
    }
    setTimeout("f()", 200);
   </script>
</head>
<body id="cate5">
<form id="form2" runat="server">

<section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>客服电话</h3>
    </header>
    <div class="ui-blk-cnt jobs-list">
        <a href="tel:96595" id="tel">
            <h4 class="jobs-hd">客服电话：96595</h4>
        </a>
    </div>    
</section>
</form>
</body></html>
