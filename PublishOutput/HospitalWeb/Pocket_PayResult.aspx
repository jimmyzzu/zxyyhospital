<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_PayResult.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_PayResult" %>

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
    <style type="text/css">
        .selflable{font-size: 1.2em;line-height: 2.4em; text-align: right; display: inline-block;width: 30%;}
    </style>
    <title></title>
    <script src="js/jquery.min.1.9.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btn_Back").attr("href", $("#hidden_redirectUrl").val());
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
     <a href="#" ID="btn_Back" class="ui-icon1 icon-btn1 btn-menu1" style="height: 100%;overflow: hidden; position: absolute;left: 3.9%; text-indent: -99em; top: 0;width: 50px;background-position : 10px -335px;">返回</a>
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>支付结果</h3>
    </header>
    <div class="ui-blk-cnt jobs-list" style="height:400px; padding-top:40px; text-align:center;">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
     <asp:HiddenField ID="hidden_redirectUrl" runat="server"></asp:HiddenField>
    
</section>
    </form>
</body>
</html>
