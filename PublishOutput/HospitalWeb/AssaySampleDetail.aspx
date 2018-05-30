<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssaySampleDetail.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.AssaySampleDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <meta charset="utf-8">
    <link href="css/report.css" rel="stylesheet" type="text/css" />

    <style type="text/css">

    .dl{background-color:#21a2c6;
    border-radius: 0.5em 0.5em 0 0;
    color: #fff;
    font-size: 1.4em;
    line-height: 44px;
    text-align: left;
    margin: 10px 0 0 0;
    padding-left:10px;
    }
 .ui-header{position:relative;height:50px;line-height:50px;background-color:#23a6bb;}
.ui-header h1{width:70%;height:100%;margin:0 auto;overflow:hidden;color:#fff;font-size:1.3em;text-align:center;font-weight:400}
.ui-header h1 span{}
.ui-header h1 span img{  width:70%;height:70%;margin:8px auto;overflow:hidden;color:#fff;font-size:1.3em;text-align:center;font-weight:400}
.ui-header .icon-btn{position:absolute;top:0;left:3.9%;width:50px;height:100%;overflow:hidden;text-indent:-99em}
.ui-header .icon-btn-right{position:absolute;top:0;right:3.9%;width:50px;height:100%;overflow:hidden;text-indent:-99em}
.ui-header .s-text{display:block;position:relative;top:7px;left:3.9%;width:80%;height:35px;line-height:35px}
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
    <title>检验报告详情</title>
</head>
<body class="app-content page-report">
    <form id="form1" runat="server">
        <header class="ui-header">
            <h1><span><img src="images/logo.png" /></span></h1>
        </header>
        <section style="background: none;">

            <%if (node == null) return;

              var reqDeptName = node["reqDeptName"].InnerText;
              var reqDoctorName = node["reqDoctorName"].InnerText;
              var reqDate = node["reqDate"].InnerText;
              var nodeName = node["itemNam"].InnerText;
                  
                  //继续循环
                  var sampleItems = node.SelectNodes("testItem");
            %>

            <%if (sampleItems != null && sampleItems.Count > 0)
                {%>
                <ul class="report-detail " style=" border-bottom:1px solid #00c07d; width: 95%; margin: 0 auto;">
<%--                <p style="padding: 0.5em 0.8em;font-size: 1rem;font-weight: bold;margin: 5px 0 0 0; background-color:rgb(117,172,70);"><%=CheckModuleName%></p>--%>
                <div class="dl"><%=nodeName%></div>
                <%
                    int index = 0;
                    foreach (System.Xml.XmlNode item in sampleItems)
                    {
                        var item_code = item["code"].InnerText;
                        var item_name = item["name"].InnerText;
                        var item_result = item["value"].InnerText;
                        var item_unit = item["unit"].InnerText;
                        var item_reference = item["range"].InnerText;

                        var item_abnormal = item["abnormal"].InnerText;
                        var item_radValue = item["radValue"].InnerText;
                        var item_micValue = item["micValue"].InnerText;
                        var item_sumValue = item["sumValue"].InnerText;
                        var item_germName = item["germName"].InnerText;
                        var item_germValue = item["germValue"].InnerText;
                        var item_valueDescription = item["valueDescription"].InnerText;
                %>
                               
                        <%
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
                                <dt class="report-item-prop1" style=" border:rgb(216,216,216) 1px solid; border-top:none; line-height:1.5rem;"><%=item_name%></dt>
                                <dd class="<%=item_abnormal == "0"?"report-item-value1":"report-item-value1-red" %>" style="border-bottom:rgb(216,216,216) 1px solid; border-right:rgb(216,216,216) 1px solid; line-height:1.5rem;"><%=!string.IsNullOrEmpty(item_result) ? item_result : "-"%></dd>
                                <dd class="report-item-standar1" style="border-bottom:rgb(216,216,216) 1px solid; border-right:rgb(216,216,216) 1px solid; line-height:1.5rem;"><%=!string.IsNullOrEmpty(item_reference) ? item_reference : ""%><%=item_unit%></dd>
                            </dl> 
                        </li> 
                        <%
                        index++;
                        } %>

          <%--      <p style="padding: 0 0.8em;font-size: 1rem;font-weight: bold;margin: 10px 0;"><%=reqDoctorName%></p>--%>
               <p style="padding: 0 0.8em;font-size: 1rem;margin: 5px 0;"></p>
               
                <li class="report-item"  data-param="action=view&item=14">
                    <dl>
                        <dt class="report-item-prop"></dt>
                        <dd class="report-item-value"> 检验医生:<%=reqDoctorName%></dd>
                        <dt class="report-item-prop"></dt>
                    </dl>
                </li>
            </ul>
            <%}
                 %>
        </section>
    </form>
</body>
</html>
