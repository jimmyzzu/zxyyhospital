<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthManage.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.HealthManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <meta charset="utf-8">
    <title>健康管理</title>
    <link href="css/news.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/slide.css" type="text/css">
    <link rel="stylesheet" href="css/resume.css" type="text/css">
    <script src="js/iscroll.js" type="text/javascript"></script>
    <script type="text/javascript">
        var myScroll;

        function loaded() {
            myScroll = new iScroll('wrapper', {
                snap: true,
                momentum: false,
                hScrollbar: false,
                onScrollEnd: function () {
                    document.querySelector('#indicator > li.active').className = '';
                    document.querySelector('#indicator > li:nth-child(' + (this.currPageX + 1) + ')').className = 'active';
                }
            });
        }
        document.addEventListener('DOMContentLoaded', loaded, false);
    </script>
</head>
<body>
      <form id="form1" runat="server">
    <header class="ui-header">
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <!--<h1>河南省人民医院</h1>-->
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <div class="banner">
        <div id="wrapper" style="overflow: hidden;">
            <div id="scroller" style="width: 12664px; -webkit-transition: -webkit-transform 0ms;
                transition: -webkit-transform 0ms; -webkit-transform-origin: 0px 0px; -webkit-transform: translate3d(-3166px, 0px, 0px) scale(1);">
                <ul id="thelist">
                 <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
                    <li style=" height:180px;">
                        <p>
                           <%#Eval("PicName")%></p>
                        <a href="">
                            <img src='<%#Eval("PicURL")%>' style="width: 1583px;"></a> </li>
                      </ItemTemplate>
                                </asp:Repeater>

                   
                </ul>
            </div>
        </div>
        <div id="nav">
            <div id="prev">
                ← prev</div>
            <ul id="indicator">
                <li class="active">1</li>
                <li class="">2</li>
                <li class="">3</li>
            </ul>
            <div id="next">
                next →</div>
        </div>
        <div class="clr">
        </div>
    </div>
    <nav id="nav1" style="margin-bottom: 70px;">
    <ul class="nav-list" style="margin:8px 8px 8px 2px;">
    <a title="健康指导" href="https://love.topmd.cn/WebServices/news/NewsList1.aspx">
        <li class="ksdh" onclick="">
            <div class="c-3d98ff">健康指导</div>
        </li></a>


        <a title="我的随访" href="FollowUp.aspx">
        <li onclick="" class="tjtccx">
            <div class="c-8a95ff">我的随访</div>
        </li></a>
       
    </ul>    
<p style=" color:#888; text-align:center; font-size:0.8em;text-shadow: 0.1em 0.1em 0.1em #ccc;">技术支持:郑州大学互联网医疗与健康服务河南省协同创新中心</p>        
</nav>
    <footer id="Float" style="width: 100%; clear: both; position: fixed !important; position: absolute;
        z-index: 9999; bottom: 0px !important; _top: expression(eval(document.compatMode &amp;
        &amp; document.compatmode=='css1compat')?documentelement.scrolltop+(document.documentelement.clientheight-this.offsetheight): document.body.scrollTop+(document.body.clientHeight-this.clientHeight));">
			<div class="footer">
			<input type="hidden" id="TemMenu" name="TemMenu">
            <dl>
                <dt id="" class="b-r1"><a href="MenZhenIndex.aspx">门诊</a></dt>
            </dl>
            <dl>
                <dt id=""  class="b-r1"><a href="ZhuYuanIndex.aspx">住院</a></dt>
            </dl>
            <dl>
                <dt id="" class="b-r1"><a href="TiJianIndex.aspx">体检</a></dt>
            </dl>
            <dl>
                <dt id=""><a href="MyInfo.aspx">个人中心</a></dt>
            </dl>
			</div>
        </footer>
    <script>


        var count = document.getElementById("thelist").getElementsByTagName("img").length;

        for (i = 0; i < count; i++) {
            document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:" + document.body.clientWidth + "px";

        }

        document.getElementById("scroller").style.cssText = " width:" + document.body.clientWidth * count + "px";


        setInterval(function () {
            myScroll.scrollToPage('next', 0, 400, count);
        }, 3500);

        window.onresize = function () {
            for (i = 0; i < count; i++) {
                document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:" + document.body.clientWidth + "px";

            }

            document.getElementById("scroller").style.cssText = " width:" + document.body.clientWidth * count + "px";
        } 
    </script>
    </form>
</body>
</html>
