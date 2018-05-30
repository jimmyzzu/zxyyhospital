<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_TakeNumber.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_TakeNumber" %>

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
    <title>预约取号</title>
    <script src="js/jquery.min.1.9.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        function createWeixinPayOrder(departmentId, doctorId, appDate, appDateStr, IDCardNo, appointmentOrder_ID) {
            $("#hidden_DepartmentID").val(departmentId);
            $("#hidden_DoctorID").val(doctorId);
            $("#hidden_AppDate").val(appDate);
            $("#hidden_AppDateStr").val(appDateStr);
            $("#hidden_IDCardNo").val(IDCardNo);
            $("#hidden_AppointmentOrder_ID").val(appointmentOrder_ID);
            
            
            $("#btn_CreateWeixinPayOrder").click();
        }

        $(document).ready(function () {

            $(".statusHidden").each(function () {
                //获取取号状态 
                var statusString = $(this).text();
                var lb_status = $(this).prev();
                lb_status.text(lb_status.text() + statusString);

                //如果状态符合以下，则将取号按钮隐藏
                if (statusString != "待取号") {
                    $(this).parent().children().first().hide();
                }

                //如果状态符合以下，则将取消预约按钮隐藏
                if (statusString != "当天可取") {
                    $(this).next().hide();
                }
            });

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
        <h3>预约取号</h3>
    </header>
    <div class="youqingtishi" style="padding:5px; width:100%;">
    <p style="padding:20px 10px; color:red; text-align:center;">友情提示：领取实体就诊卡后方可预约取号</p>
    </div>
    <div class="ui-blk-cnt jobs-list">
       <asp:Repeater ID="rptList1" runat="server">
            <ItemTemplate>
                   <div class="name-list1">
                    <button style="display:none;" type="button" class="btn btn-primary11 dropdown-toggle" onclick="createWeixinPayOrder('<%#Eval("DepartmentID")%>','<%#Eval("DoctorID")%>','<%#Eval("AppDate")%>','<%#Eval("AppDateStr")%>','<%#Eval("UserNo")%>','<%#Eval("ID")%>');">取号</button>
                    <h42 class="jobs-hd">预约联系人：<%#Eval("Name")%></h42><br />
                    <span class="jobs-name1">预约医生：<%#Eval("DepartName")%><%#Eval("DoctorName")%></span><br />
                    <span class="jobs-name1">预约时间：<%#Eval("AppDateStr")%></span><br />
                    <span class="jobs-name1">识别码：<%#Eval("orderid")%></span><br />
                    <span class="jobs-name1">状态：</span>
                    <span class="statusHidden"><%#getStatusString(Eval("Status").ToString(), Eval("AppDateStr").ToString())%></span>
                     <button type="button" class="btn btn-primary11 dropdown-toggle btncancel" onclick="javascript:window.location.href='OrderDetail.aspx?id=<%#Eval("id")%>'">取消</button>
                    <br />
                    <span class="jobs-name1"><%#Eval("SortNum") != null && !string.IsNullOrEmpty(Eval("SortNum").ToString()) ? "就诊序号：" + Eval("SortNum").ToString() : ""%></span>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <asp:HiddenField ID="hidden_DepartmentID" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="hidden_DoctorID" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="hidden_AppDate" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="hidden_AppDateStr" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="hidden_IDCardNo" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="hidden_AppointmentOrder_ID" runat="server"></asp:HiddenField>
    <asp:Button ID="btn_CreateWeixinPayOrder" CssClass="hidden" runat="server" Text="统一下单" onclick="btn_CreateWeixinPayOrder_Click"></asp:Button>
    
</section>
    </form>
</body>
</html>
