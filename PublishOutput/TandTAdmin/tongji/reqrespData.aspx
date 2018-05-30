<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reqrespData.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.tongji.reqrespData" %>

<%@ Import Namespace="TandT.Common" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>请求回复记录</title>
   <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
<link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="../../scripts/jquery/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="../../scripts/artdialog/dialog-plus-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
<script type="text/javascript">
        function parentToIndex(id) {
            parent.location.href = "/TandTAdmin/Index.aspx?id=" + id;

        }
    </script>
</head>

<body class="mainbody">
    <form id="form1" runat="server">
        <!--导航栏-->
        <div class="location">
            <a href="javascript:;" class="home"><i></i><span>请求回复记录</span></a>

        </div>
        <!--/导航栏-->

        <!--工具栏-->
        <div class="toolbar-wrap">
            <div id="floatHead" class="toolbar">
            <div class="box-wrap">
            <a class="menu-btn"></a>
               
                <div class="r-list">
                    <asp:TextBox ID="txtKeywords" runat="server" CssClass="keyword" />
                    <asp:LinkButton ID="lbtnSearch" runat="server" CssClass="btn-search" OnClick="btnSearch_Click">查询</asp:LinkButton>
                </div>
            </div>
            </div>
        </div>
        <!--/工具栏-->

        <!--列表-->

        <asp:Repeater ID="rptList" runat="server"  OnItemDataBound="rptList_ItemDataBound">
            <HeaderTemplate>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ltable">
                    <thead>
                        <tr>
                            <th width="15%">用户openid</th>
                            <th width="8%">请求类型</th>
                            <th>请求内容</th>
                            <th width="8%">回复类型</th>
                            <th>回复内容</th>
                            <th width="12%">发生时间</th>

                        </tr>
                    </thead>
                    <tbody class="ltbody">
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="td_c">
                     
                    <td>
                        <asp:HiddenField ID="hidId" Value='<%#Eval("id")%>' runat="server" />
                        <%# Eval("wx_openid") %>
                    </td>
                    <td>
                          <%# TypeStr( Eval("requestType")) %>
                    </td>
                     <td>
                          <%# Eval("requestContent") %>
                    </td>
                      <td>
                          <%#TypeStr( Eval("responseType")) %>
                    </td>
                      <td>
                          <%# Eval("reponseContent") %>
                    </td>
                    <td>
                        <%# Eval("createDate") %>
                    </td>
                    
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                <%#rptList.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"4\">暂无记录</td></tr>" : ""%>
                 </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>

        <!--/列表-->

        <!--内容底部-->
        <div class="line20"></div>
        <div class="pagelist">
            <div class="l-btns">
                <span>显示</span><asp:TextBox ID="txtPageNum" runat="server" CssClass="pagenum" onkeydown="return checkNumber(event);" OnTextChanged="txtPageNum_TextChanged" AutoPostBack="True"></asp:TextBox><span>条/页</span>
            </div>
            <div id="PageContent" runat="server" class="default"></div>
        </div>
        <!--/内容底部-->
    </form>
</body>
</html>
