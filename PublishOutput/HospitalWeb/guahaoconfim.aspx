<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guahaoconfim.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.guahaoconfim" %>

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
<script type="text/javascript" src="js/jquery.min.1.9.1.js"></script>
<script type="text/javascript">
    function ExePostBackbutton(objId) {
        __doPostBack(objId, '');
        return false;
    }
</script>
<title>挂号信息确认</title>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    <a href="MenZhenIndex.aspx" ID="Button1" class="ui-icon1 icon-btn1 btn-menu1" style="height: 100%;overflow: hidden; position: absolute;left: 3.9%; text-indent: -99em; top: 0;width: 50px;background-position : 10px -335px;
    ">返回</a>
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <h1>郑州市中心医院</h1>
</header>
<header class="ui-blk-tit">
    <h3>挂号信息确认</h3>
</header>
<section class="blo">
    <div class="ghxxqr">
      <ul>
      	<li><span>就诊科室：</span><asp:Literal ID="LitDepart" runat="server"></asp:Literal></li>
        <li><span>就诊医生：</span><asp:Literal ID="LitDoc" runat="server"></asp:Literal></li>
        <li><span>门诊时间：</span><asp:Literal ID="LitTime" runat="server"></asp:Literal></li>
        <li><span>联系人：</span><asp:Literal ID="LitUserName" runat="server"></asp:Literal></li>
        <li><span>身份证：</span><asp:Literal ID="LitUserNo" runat="server"></asp:Literal></li>
      </ul>
    </div>    
</section>
<section class="ui-blk" style=" padding:0 2.3%;">
   
    <div class="buttons mt20">
           <%-- <button class="btn btn-success w100 btn-primary2" id="yuyueButton" onclick="ExePostBackbutton('LinkButton1')"><p>预约</p></button>--%>
            <asp:Button ID="yuyueButton" runat="server" 
               class="btn btn-success w100 btn-primary2" Text="预约" onclick="LinkButton1_Click"></asp:Button>
           <%-- <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" class="btn btn-success w100 btn-primary2" >预约</asp:LinkButton>--%>
          </div>    
</section>
    </form>
</body>
</html>
