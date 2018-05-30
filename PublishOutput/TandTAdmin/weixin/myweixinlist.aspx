<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myweixinlist.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.weixin.myweixinlist" %>

<%@ Import Namespace="TandT.Common" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/jquery/Validform_v5.3.2_min.js"></script>
    <script type="text/javascript" src="../../scripts/artdialog/dialog-plus-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/laywxmain.js"></script>
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
    <div class="location" style="display: none;">
        <a href="javascript:history.back(-1);" class="back"><i></i><span>返回上一页</span></a>
        <a href="wxCenter.aspx" class="home"><i></i><span>首页</span></a> <i class="arrow">
        </i><span>管理员列表</span>
    </div>
    <!--/导航栏-->
    <!--工具栏-->
    <div class="toolbar-wrap">
        <div id="floatHead" class="toolbar">
            <div class="box-wrap">
            <a class="menu-btn"></a>
                <div class="l-list">
                    <ul class="icon-list">
                        <li><a class="add" href="editorWeiXin.aspx?action=<%=DTEnums.ActionEnum.Add %>"><i></i>
                            <span>添加公众帐号</span></a></li>
                    </ul>
                </div>
                <div class="r-list">
                   
                                <asp:TextBox ID="txtKeywords" runat="server" CssClass="keyword" />
                                <asp:LinkButton ID="lbtnSearch" runat="server" CssClass="btn-search" OnClick="btnSearch_Click">查询</asp:LinkButton>
                           
                </div>
            </div>
        </div>
    </div>
    <!--/工具栏-->
    <!--列表-->
    <asp:Repeater ID="rptList" runat="server" OnItemCommand="rptList_ItemCommand">
        <HeaderTemplate>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ltable">
                <tr>
                    <th>
                        公众帐号名称
                    </th>
                    <th width="12%">
                        微信号
                    </th>
                    <th width="12%">
                        公众号原始id
                    </th>
                    <th width="16%">
                        创建时间/到期时间
                    </th>
                    <th width="8%">
                        修改
                    </th>
                    <th width="12%">
                        操作
                    </th>
                </tr>
                <tbody class="ltbody">
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:HiddenField ID="hidId" Value='<%#Eval("id")%>' runat="server" />
                    <a href="editorWeiXin.aspx?action=<%#DTEnums.ActionEnum.Edit %>&id=<%#Eval("id")%>">
                        <img alt="" src="<%#Eval("headerpic")%>" style="max-height: 40px; max-width: 40px;" />
                        <br />
                        <%# Eval("wxName") %>
                    </a>
                </td>
                <td>
                    <%# Eval("weixinCode") %>
                </td>
                <td>
                    <%# Eval("wxId") %>
                </td>
                <td>
                    创建时间：<%#string.Format("{0:yyyy/MM/dd}",Eval("createDate"))%><br />
                    到期时间：<%#string.Format("{0:yyyy/MM/dd}",Eval("endDate"))%>
                </td>
                <td align="center">
                    <a href="editorWeiXin.aspx?action=<%#DTEnums.ActionEnum.Edit %>&id=<%#Eval("id")%>">
                        修改</a>
                </td>
                <td align="center">
                    <asp:Button ID="Button1" CssClass="btn yellow" runat="server" Text="功能设置" CommandName="toIndex"
                        CommandArgument='<%#Eval("id")%>' />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            <%#rptList.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"7\">暂无数据</td></tr>" : ""%>
            </tbody> </table>
        </FooterTemplate>
    </asp:Repeater>
    <!--/列表-->
    <!--内容底部-->
    <div class="line20">
    </div>
    <!--/内容底部-->
    </form>
</body>
</html>
