<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_MedicalExaminationReportDetail.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_MedicalExaminationReportDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <meta charset="utf-8">
    <link href="css/report.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .ui-header{position:relative;height:50px;line-height:50px;background-color:#23a6bb;}
    .ui-header h1{width:70%;height:100%;margin:0 auto;overflow:hidden;color:#fff;font-size:1.3em;text-align:center;font-weight:400}
    .dl{background-color:#21a2c6;
    border-radius: 0.5em 0.5em 0 0;
    color: #fff;
    font-size: 1.4em;
    line-height: 44px;
    text-align: left;
    margin: 10px 0 0 0;
    padding-left:10px;
    }
    </style>

    <script src="js/jquery.min.1.9.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("dl").each(function (i, v) {
                var high = 0;
                $(v).children().each(function (ind, va) {
                    var thisheight = $(va).height();
                    if (thisheight > high) {
                        high = thisheight;
                    }
                });
                $(v).children().height(high);
            });
        });
    </script>
    <title><%=headerTitle%></title>
</head>
<body class="app-content page-report">
    <form id="form1" runat="server">
        <header class="ui-header">
            <h1><%=headerTitle%></h1>
        </header>
        <section style="background: none;">
            <%if (itemType == "0")
              { %>
            <ul class="report-detail " style=" border-bottom:1px solid #00c07d; width: 95%; margin: 0 auto;">
               <%--<p style="padding: 0 0.8em;font-size: 1rem;font-weight: bold;margin: 10px 0;">主要疾病诊断及医生建议</p>--%>
               <div class="dl">主要疾病诊断及医生建议</div>
               <p style="padding: 0 0.8em;font-size: 1rem;margin: 5px 0;"><asp:Label ID="lb_ANALYZE" runat="server" Text=""></asp:Label></p>
               <li class="report-item"  data-param="action=view&item=14">
                    <dl>
                        <dt class="report-item-prop">主检医师:<asp:Label ID="lb_ANALYZEDOCTOR" runat="server" Text=""></asp:Label></dt>
                        <dd class="report-item-value"><asp:Label ID="lb_AUDITDOCTOR" runat="server" Text=""></asp:Label></dd>
                    </dl>
                    <dl>
                        <dt class="report-item-prop" style="width:80%;">主检日期：<asp:Label ID="lb_REGISTDATE" runat="server" Text=""></asp:Label></dt>
                        <%--<dd class="report-item-value"></dd>--%>
                    </dl>
                </li> 
            </ul>
            <%} %>

            <%if (CheckResultList == null) return;
                foreach (var checkItem in CheckResultList)
                {
                    var CheckModuleName = checkItem.CheckModuleName;    //检查项目名称
                    var ReportType = checkItem.ReportType;              //报告格式类型  0：普通 1：纯描述  2：纯诊断 
                    var CheckModuletype = checkItem.CheckModuletype;    //检查项目类型，0：临床  1：检验
                    var IsResultHaveUnit = checkItem.IsResultHaveUnit;  //结果类型  0：结果中没有单位和参考范围信息。  1：结果中需要显示单位和参考范围
                    var ShowOrder = checkItem.ShowOrder;                //显示顺序
                    var DiagnoseSign = checkItem.DiagnoseSign;          //诊断内容标题
                    var DiagnoseResult = checkItem.DiagnoseResult;      //诊断内容
                    var CheckSign = checkItem.CheckSign;                //检查医生标题
                    var CheckDoctor = checkItem.CheckDoctor;            //检查医生姓名
                    var AuditSign = checkItem.AuditSign;                //审核医生标题
                    var AuditDoctor = checkItem.AuditDoctor;            //审核医生姓名

                    var Results = checkItem.Results;    //
            %>

            <%if (Results != null)
                {%>
                <ul class="report-detail " style=" border-bottom:1px solid #00c07d; width: 95%; margin: 0 auto;">
<%--                <p style="padding: 0.5em 0.8em;font-size: 1rem;font-weight: bold;margin: 5px 0 0 0; background-color:rgb(117,172,70);"><%=CheckModuleName%></p>--%>
                <div class="dl"><%=CheckModuleName%></div>
                <%
                    int index = 0;
                    foreach (var checkRes in Results.OrderBy(c => c.ShowOrder))
                    {
                        var CheckItemName = FomatString(checkRes.CheckItemName);
                        var CriticalName = checkRes.CriticalName;
                        var ItemResult = checkRes.ItemResult;
                        var Unit = checkRes.Unit;
                        var UpDownFlag = checkRes.UpDownFlag;

                        if (!IsResultHaveUnit)
                        {
                            if (index == 0)
                            { 
                %>
                              <li class="report-item" style=" background-color:rgb(213,213,213);" data-param="action=view&item=1">
                                <dl>
                                    <dt class="report-item-prop1" style=" color:#333;">项目名称</dt>
                                    <dd class="report-item-value1" style=" color:#333;width:70%;">检查结果</dd>
                                </dl>
                            </li>
                            <%} %>
                        <li class="report-item" data-param="action=view&item=1">
                            <dl>
                                <dt class="report-item-prop1" style=" border:rgb(216,216,216) 1px solid; border-top:none; line-height:1.5rem;">
                                    <span><%=CheckItemName%></span>
                                </dt>
                                <dd class="<%=string.IsNullOrEmpty(UpDownFlag)?"report-item-value1":"report-item-value1-red" %>" style="width:70%; border-bottom:rgb(216,216,216) 1px solid; border-right:rgb(216,216,216) 1px solid; line-height:1.5rem;">
                                    <%=!string.IsNullOrEmpty(ItemResult) ? ItemResult : "-"%>
                                </dd>
                            </dl> 
                        </li>    
                        <%}
                        else
                        {
                            if (index == 0)
                            { %>
                            <li class="report-item" style=" background-color:rgb(213,213,213);" data-param="action=view&item=1">
                                <dl>
                                    <dt class="report-item-prop1" style=" color:#333;">项目名称</dt>
                                    <dd class="report-item-value1" style=" color:#333;">检查结果</dd>
                                    <dd class="report-item-standar1" style=" color:#333;">参考范围 </dd>
                                </dl>
                            </li>
                            <%} %>
                        <li class="report-item" data-param="action=view&item=1">
                            <dl>
                                <dt class="report-item-prop1" style=" border:rgb(216,216,216) 1px solid; border-top:none; line-height:1.5rem;"><%=CheckItemName%></dt>
                                <dd class="<%=string.IsNullOrEmpty(UpDownFlag)?"report-item-value1":"report-item-value1-red" %>" style="border-bottom:rgb(216,216,216) 1px solid; border-right:rgb(216,216,216) 1px solid; line-height:1.5rem;"><%=!string.IsNullOrEmpty(ItemResult) ? ItemResult : "-"%></dd>
                                <dd class="report-item-standar1" style="border-bottom:rgb(216,216,216) 1px solid; border-right:rgb(216,216,216) 1px solid; line-height:1.5rem;"><%=!string.IsNullOrEmpty(CriticalName) ? CriticalName : ""%><%=Unit%></dd>
                            </dl> 
                        </li> 
                        <%}
                        index++;
                        } %>

                <p style="padding: 0 0.8em;font-size: 1rem;font-weight: bold;margin: 10px 0;"><%=DiagnoseSign%></p>
               <p style="padding: 0 0.8em;font-size: 1rem;margin: 5px 0;"><%=DiagnoseResult %></p>
                <li class="report-item"  data-param="action=view&item=14">
                    <dl>
                        <dt class="report-item-prop">检查医生:<%=CheckDoctor %></dt>
                        <dd class="report-item-value">审核医生:<%=AuditDoctor %></dd>
                    </dl>
                </li>
            </ul>

            <%}
                } %>
        </section>
    </form>
</body>
</html>
