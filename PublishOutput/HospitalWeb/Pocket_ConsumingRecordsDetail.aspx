<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_ConsumingRecordsDetail.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_ConsumingRecordsDetail" %>

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
    <title>消费明细详情</title>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>消费明细详情</h3>
    </header>
    <div class="ui-blk-cnt jobs-list">
        <%if (DataT != null && DataT.Rows.Count > 0)
          {
              foreach (System.Data.DataRow dr in DataT.Rows)
              { 
              %>

              <a href="javascript:void(0);">
                    <h4 class="jobs-hd">单据号：<%= dr["SFDH"]%></h4>
                    <span class="jobs-name">处方日期：<%= dr["CFRQ"]%></span><br />
                    <span class="jobs-name">收费日期：<%= dr["SFRQ"]%></span><br />
          <%--          <span class="jobs-name">处方唯一号：<%#Eval("CFID")%></span><br />--%>
                    <span class="jobs-name">名称：<%= dr["CFMC"]%></span><br />

                    <%if (dr["YF"] != null && !string.IsNullOrEmpty(dr["YF"].ToString()))
                     { %>
                    <span class="jobs-name">用法：<%= dr["YF"]%></span><br />
                    <% }%>

                     <%if (dr["CS"] != null && !string.IsNullOrEmpty(dr["CS"].ToString()))
                     { %>
                    <span class="jobs-name">次数：<%= dr["CS"]%></span><br />
                    <% }%>
                    
                    <%--<span class="jobs-name">天数：<%= dr["TS"]%></span><br />--%>
                   
                   <%if (Convert.ToDecimal(dr["YL"]) != 0)
                     { %>
                    <span class="jobs-name">用量：<%=Convert.ToDecimal(dr["YL"]).ToString("#0.00")%> <%=dr["YLDW"]%></span><br />
                    <% }%>

                    <span class="jobs-name">总量：<%=Convert.ToDecimal(dr["ZL"]).ToString("#0.00")%> <%=dr["ZLDW"]%></span><br />
                    <span class="jobs-name">单价：<%=Convert.ToDecimal(dr["DJ"]).ToString("#0.00")%></span><br />
                    <span class="jobs-name">费用：<%=Convert.ToDecimal(dr["FY"]).ToString("#0.00")%></span>
                </a>


          <%}
          } %>

<%--       <asp:Repeater ID="rptList1" runat="server">
            <ItemTemplate>
                <a href="javascript:void(0);">
                    <h4 class="jobs-hd">单据号：<%#Eval("SFDH")%></h4>
                    <span class="jobs-name">处方日期：<%#Eval("CFRQ")%></span><br />
                    <span class="jobs-name">收费日期：<%#Eval("SFRQ")%></span><br />
                    <span class="jobs-name">处方唯一号：<%#Eval("CFID")%></span><br />
                    <span class="jobs-name">名称：<%#Eval("CFMC")%></span><br />
                    <span class="jobs-name">用法：<%#Eval("YF")%></span><br />
                    <span class="jobs-name">次数：<%#Eval("CS")%></span><br />
                    <span class="jobs-name">天数：<%#Eval("TS")%></span><br />
                   
                   
                    <span class="jobs-name">用量：<%#Convert.ToDecimal(Eval("YL")).ToString("#0.00")%> <%#Eval("YLDW")%></span><br />

                    <span class="jobs-name">总量：<%#Convert.ToDecimal(Eval("ZL")).ToString("#0.00")%> <%#Eval("ZLDW")%></span><br />
                    <span class="jobs-name">单价：<%#Convert.ToDecimal(Eval("DJ")).ToString("#0.00")%></span><br />
                    <span class="jobs-name">费用：<%#Convert.ToDecimal(Eval("FY")).ToString("#0.00")%></span>
                </a>
            </ItemTemplate>
        </asp:Repeater>--%>
    </div>
    
    
</section>
    </form>
</body>
</html>
