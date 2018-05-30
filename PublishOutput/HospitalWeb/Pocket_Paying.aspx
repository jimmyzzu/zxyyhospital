<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_Paying.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_Paying" %>

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
        function onBridgeReady() {
            WeixinJSBridge.invoke(
               'getBrandWCPayRequest', {
                   "appId": "<%=AppId %>",     //公众号名称，由商户传入     
                   "timeStamp": "<%=TimeStamp %>",         //时间戳，自1970年以来的秒数     
                   "nonceStr": "<%=NonceStr %>", //随机串     
                   "package": "<%=Package %>",
                   "signType": "<%=SignType %>",         //微信签名方式：     
                   "paySign": "<%=PaySign %>" //微信签名 
               },
               function (res) {
                   if (res.err_msg == "get_brand_wcpay_request:ok") {
                       window.location.href = $("#hidden_payResultUrl").val();
                   } else if (res.err_msg == "get_brand_wcpay_request:cancel") {
                       window.location.href = $("#hidden_redirectUrl").val();
                   }     // 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回    ok，但并不保证它绝对可靠。 
               }
            );

            return false;
        }
        if (typeof WeixinJSBridge == "undefined") {
            if( document.addEventListener ){
                document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
            }else if (document.attachEvent){
                document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 
                document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
            }
        }else{
            onBridgeReady();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>正在支付...</h3>
    </header>
    <div class="ui-blk-cnt jobs-list">
        <asp:HiddenField ID="hidden_redirectUrl" runat="server"></asp:HiddenField>
        <asp:HiddenField ID="hidden_payResultUrl" runat="server"></asp:HiddenField>
    </div>
    
    
</section>
    </form>
</body>
</html>
