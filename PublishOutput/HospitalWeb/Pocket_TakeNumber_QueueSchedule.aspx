<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_TakeNumber_QueueSchedule.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_TakeNumber_QueueSchedule" %>

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
    <title>排队进度</title>
    <script src="js/jquery.min.1.9.1.js" type="text/javascript"></script>
    <script type="text/javascript">


        $(document).ready(function () {

//            $(".statusHidden").each(function () {
//                //获取取号状态 
//                var statusString = $(this).text();
//                var lb_status = $(this).prev();
//                lb_status.text(lb_status.text() + statusString);

//                //如果状态符合以下，则将取号按钮隐藏
//                if (statusString != "成功预约") {
//                    $(this).parent().children().first().hide();
//                }
//            });

        });
    </script>

    <style type="text/css">
    .statusHidden{display:none;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>排队进度</h3>
    </header>
    <div class="youqingtishi" style="padding:5px; width:100%;">
    </div>
    <div class="ui-blk-cnt jobs-list">
       <asp:Repeater ID="rptList1" runat="server" 
            onitemdatabound="rptList1_ItemDataBound">
            <ItemTemplate>
                   <div class="name-list1">
                    <h42 class="jobs-hd">排号：<asp:Literal ID="Literal1" runat="server"></asp:Literal></h42><br />
                    <span class="jobs-name1">预约联系人：<%#Eval("Name")%></span><br />
                    <span class="jobs-name1">预约医生：<%#Eval("DepartName")%><%#Eval("DoctorName")%></span><br />
                    <span class="jobs-name1">预约时间：<%#Eval("AppDateStr")%></span>
                    
                    </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    
</section>
    </form>
</body>
</html>
