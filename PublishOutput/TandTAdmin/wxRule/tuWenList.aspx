<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tuWenList.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.wxRule.tuWenList" %>


<%@ Import Namespace="TandT.Common" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>图文回复</title>
        <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
<link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/jquery/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/datepicker/WdatePicker.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/artdialog/dialog-plus-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/webuploader/webuploader.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../editor/kindeditor-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/uploader.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
    <script type="text/javascript">
        function parentToIndex(id) {
            parent.location.href = "/TandTAdmin/Index.aspx?id=" + id;

        }

        $(function () {
            //图文添加按钮
            $("#itemAddButton").click(function () {

                showGuiZeDialog(0);
            });

        });

        //创建图文的窗口
        function showGuiZeDialog(id) {
           
            var contenturl = "wxRule/editKWRule.aspx?rid=" + id;

            var m = top.dialog({
                id: 'dialogKWGuiZe',
                fixed: true,
                lock: true,
                max: false,
                min: false,
                title: "添加回复规则",
                url: contenturl,
                height: 220,
                width: 650,

                onclose: function () {
                    location.reload();
                }
            }).showModal();
        }

    </script>
</head>

<body class="mainbody">
    <form id="form1" runat="server">
        <!--导航栏-->
        <div class="location">
            <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
            <i class="arrow"></i>
            <span>图文回复列表</span>
        </div>
        <!--/导航栏-->

        <!--工具栏-->
        <div class="toolbar-wrap">
            <div id="floatHead" class="toolbar">
            <div class="box-wrap">
            <a class="menu-btn"></a>
                <div class="l-list">
                    <ul class="icon-list">
                        <li><a class="icon-btn add"  id="itemAddButton"><i></i><span>添加图文回复规则</span></a></li>
                        <li><a class="all" href="javascript:;" onclick="checkAll(this);"><i></i><span>全选</span></a></li>
                        <li>
                            <asp:LinkButton ID="btnDelete" runat="server" CssClass="del" OnClientClick="return ExePostBack('btnDelete');" OnClick="btnDelete_Click"><i></i><span>删除</span></asp:LinkButton></li>
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

        <asp:Repeater ID="rptList" runat="server" OnItemCommand="rptList_ItemCommand" OnItemDataBound="rptList_ItemDataBound">
            <HeaderTemplate>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ltable">
                    <thead>
                        <tr>
                            <th width="5%">选择</th>
                            <th width="20%">关键词</th>
                            
                            <th width="8%">修改</th>
                            <th width="8%">编辑内容</th>
                        </tr>
                    </thead>
                    <tbody class="ltbody">
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="td_c">
                    <td>
                        <asp:CheckBox ID="chkId" CssClass="checkall" runat="server" Style="vertical-align: middle;" />
                        <asp:HiddenField ID="hidId" Value='<%#Eval("id")%>' runat="server" />
                    </td>
                    <td style="text-align:left;">
                        <asp:Image ID="imgIsLikeSearch" runat="server" ImageUrl="~/TandTAdmin/skin/default/wan.png" ToolTip='<%#Eval("isLikeSearch")%>' />
                        <%# Eval("reqKeywords") %>
                    </td>
                   
                    <td>
                        <a  onclick='showGuiZeDialog(<%#Eval("id")%>);' class="operator" href="javascript:;">修改</a>
                    </td>
                     <td>
                        <a  href='tuwenMgr.aspx?rid=<%#Eval("id") %>' class="operator">编辑内容</a>
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
