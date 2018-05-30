<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenZhenDocDetail.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.MenZhenDocDetail" %>

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
<title>医生详情</title>
</head>
<body id="cate6">
    <form id="form1" runat="server">
    <header class="ui-header">
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <h1><asp:Literal ID="Literaldepath" runat="server"></asp:Literal>-<asp:Literal ID="LitDocNameH" runat="server"></asp:Literal></h1>
</header>
<section class="ui-blk mb20">
    <div class="doc-header"></div>
    <div class="doc-name">
        <button type="button" class="btn btn-primary11 dropdown-toggle" data-toggle="dropdown" style=" display:none">关注</button>
    	<div class="fl-img">
            <%--<img src="images/2012121819450318.jpg"/>--%>
            <asp:Literal ID="LiteralImg" runat="server"></asp:Literal>
        </div> 
        <div class="fr-text">   
            <h4 class="jobs-hd"><asp:Literal ID="LitDocName" runat="server"></asp:Literal></h4>
            <span class="jobs-name"><asp:Literal ID="LitTitleName" runat="server"></asp:Literal></span>
            <span class="jobs-area"><asp:Literal ID="LitDepart" runat="server"></asp:Literal></span></br>
            <span class="jobs-jianjie">医生简介：<asp:Literal ID="LitDocdesc" runat="server"></asp:Literal></span></br>
           <%-- <span class="jobs-time">出诊信息：周二、周四、周六上午</span>--%>
        </div>
    </div>
</section>
<section class="mb20">
    <div class="ui-blk-cnt jobs-list">
    <%
        List<string> dateList = new List<string>();
        var currentDateListItem = string.Empty;
        var i = 0;
        foreach (System.Data.DataRowView item in DataSource)
      {
          var goDay = item["GoDay"].ToString();
          var times = item["Times"].ToString();
          var RegistId = item["RegistId"].ToString();
          var CurDate = item["CurDate"].ToString();
          var orgid = item["orgid"].ToString();
          var empid = item["empid"].ToString();
          var DocName = item["DocName"].ToString();
          var DepartName = item["DepartName"].ToString();
          var DateTypeID = item["DateTypeID"].ToString();
          var StopFlag = item["StopFlag"].ToString();
          var Week = item["Week"].ToString();
          var noon = item["noon"].ToString();
          var HaoCount = item["HaoCount"].ToString();

          //var goTimeHour = Regex.Replace(times, @"(?<=:)([\s\S]*)", "00").TrimStart('0'); //整点
          var goTimeHour = Int32.Parse(Regex.Replace(times, @"(?<=)(:[\s\S]*)", "")); //整点
          var dateListItem = string.Format("{0}{1}:00", goDay, goTimeHour);
          if (!dateList.Contains(dateListItem))
          {
              if (i > 0)
              { %>
                </div>
              <%
              }
              currentDateListItem = dateListItem;
              %>
              <a id="a_<%=dateListItem %>" class="a_Title" href="javascript:void(0);">  
                <h4 class="jobs-hd"> <%=goDay%> （<%=Week%>）<%=noon%><br /><%=string.Format("{0}:00-{1}:00", goTimeHour, goTimeHour + 1)%></h4>
              </a>
              <div id="div_<%=dateListItem %>" class="div_guahaoDetail" style="display:none;">
              <%
              dateList.Add(dateListItem);
          }
          %>
           <a href="javascript:void(0);">  
                <button type="button" class="btn btn-primary11 dropdown-toggle" onclick="javascript:guahao('<%=RegistId%>','<%=CurDate%>','<%=orgid%>','<%=empid%>','<%=DocName%>','<%=DepartName%>','<%=DateTypeID%>','<%=times%>','<%=StopFlag%>')"><%=(StopFlag=="1"?"停诊":"挂号")%></button>
               <%-- <h4 class="jobs-hd"> <%=goDay%> （<%=Week%>）<%=noon%></h4>--%>
                <h42><%=goDay%> <%=times.TrimStart('0')%></h42>
            </a>
    <% i++;
       if (i == DataSource.Count)
       {%>
       </div> 
       <%}
      } %>
<%--
    <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
         <a  href="javascript:void(0)">  
            <button type="button" class="btn btn-primary11 dropdown-toggle" onclick="javascript:guahao('<%#Eval("RegistId")%>','<%#Eval("CurDate")%>','<%#Eval("orgid")%>','<%#Eval("empid")%>','<%#Eval("DocName")%>','<%#Eval("DepartName")%>','<%#Eval("DateTypeID")%>','<%#Eval("Times")%>','<%#Eval("StopFlag")%>')"><%#Eval("StopFlag").ToString()=="1"?"停诊":"挂号"%></button>
            <h4 class="jobs-hd"> <%#Eval("GoDay")%> （<%#Eval("Week")%>）<%#Eval("noon")%></h4>
            <h42><%#Eval("Times").ToString().TrimStart('0')%></h42>
            <h41 class="jobs-hd">剩余号源<%#Eval("HaoCount")%></h41>
        </a>
         </ItemTemplate>
                                </asp:Repeater>--%>
    </div>
</section>  
<section class="yyxz mb20">
    <div class="ksjj">
      <%--<p style=" color:#888; text-align:center; font-size:0.8em;text-shadow: 0.1em 0.1em 0.1em #ccc;">技术支持:郑州大学互联网医疗与健康服务河南省协同创新中心</p>--%>
       <!--科室简介 河南省人民医院妇产科成立于1948年，经过数十年几代人的努力，不断发展而壮大。现设有病床176张，分为6区一室三中心，即妇科一病区、妇科二病区、妇科三病区、产前病区、产后病区、门诊、妇产科试验室、河南省产前诊断中心、河南省高危孕产妇诊治中心和河南省盆底功能障碍性疾病诊治中心。先进技术和优质服务吸引广大患者，-->
    </div>    
</section>
    <script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
    function guahao(RegistId, CurDate, orgid, empid, DocName, DepartName, DateTypeID, Times, stopflag) {
        if (stopflag == 1) {
            return false;
        }
        else {
            javascript: window.location.href = 'PatientList.aspx?RegistId='+RegistId+'&pAppDate='+CurDate+'&pAppOrg='+orgid+'&pAppDoctor='+empid+'&docName='+DocName+'&departName='+DepartName+'&pNoon='+DateTypeID+'&pHour='+DateTypeID+'&pHourName='+Times;
            return true;
        }
    }

    $(document).ready(function () {
        $(".a_Title").click(function () {
            var a_this = $(this);
            $(".div_guahaoDetail").each(function (i, v) {
                if ($(v).attr("id").split('_')[1] !== a_this.attr("id").split('_')[1]) {
                    $(v).hide();
                }
            });
            a_this.next().toggle(100);
        });
    });
</script>
    </form>
</body>
</html>
