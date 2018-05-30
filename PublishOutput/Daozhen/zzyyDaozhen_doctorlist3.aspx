<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zzyyDaozhen_doctorlist3.aspx.cs" Inherits="TandT.WeixinWeb.Daozhen.zzyyDaozhen_doctorlist3" %>

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

<script src="../Scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var symptomid = getUrlParam("symptomid");

        $(".jibingleft1 a").each(function (i, v) {
            //左侧栏默认激活
            if (symptomid == null || symptomid == "") {
                if (i == 0) {
                    $(v).attr("class", "active");
                } else {
                    $(v).attr("class", "");
                }
            } else {
                if ($(v).attr("symptomid") == symptomid) {
                    $(v).attr("class", "active");
                } else {
                    $(v).attr("class", "");
                }
            }
        });

        //初始化科室
        $(".jibingleft1 a").each(function (i, v) {
            if ($(v).attr("class") == "active") {
                $("#lb_Keshi").text($(v).attr("departname"));
            }
        });
    });

    //获取url中的参数
    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg);  //匹配目标参数
        if (r != null) return unescape(r[2]); return null; //返回参数值
    }
</script>
<title>推荐科室</title>
</head>
<body id="cate5">
<form id="form1" runat="server">
<header class="ui-header">
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <!--<h1>河南省人民医院</h1>-->
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
<script src="http://lib.sinaapp.com/js/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
   <script type="text/javascript">
       $(document).ready(function () {
           var tags_a = $("#tags a");
           tags_a.each(function () {
               var x = 9;
               var y = 0;
               var rand = parseInt(Math.random() * (x - y + 1) + y);
               $(this).addClass("tags" + rand);
           });
       })   
   </script>
<div class="jibingleft1" style=" width:100%; float:left; margin-top:10%;" id="tags">
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

  <%--      <a href="#" class="active"><h3>角膜炎</h3></a>
    
        <a href="#"><h3>近视</h3></a>--%>
    
</div>
<%--<section class="ui-blk">
    <header class="ui-blk-tit1">
        <h3>参考科室：<label id="lb_Keshi"></label></h3>
    </header>
    <header class="ui-blk-tit21">
        <h3>科室医生</h3>
    </header>
    
    <div class="ui-blk-cnt jobs-list">
    <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
        <a href="/HospitalWeb/MenZhenDocDetail.aspx?docid=<%#Eval("empid")%>&departid=<%#Eval("orgid")%>" style="padding: 8% 2.3% 12% 2.3%;">
            <img src="<%#Eval("DocPic")%>" style=" text-align:center; width:20%; height:10%; float:left;"/>
            <h4 class="jobs-hd" style="  font-weight:600; font-size:100%;padding: 8% 0 3% 8%;"><%#Eval("empname")%> <%#Eval("codename")%></h4>
            <i class="ui-icon btn-more"></i>
        </a>
        </ItemTemplate>
                                </asp:Repeater>
       
    </div>
    
    
</section>--%>
</form>
</body></html>