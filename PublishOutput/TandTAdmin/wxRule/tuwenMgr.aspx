<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tuwenMgr.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.wxRule.tuwenMgr" %>


<%@ Import Namespace="TandT.Common" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>图文回复内容</title>
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
       

        //创建图文的窗口
        function showGuiZeDialog(rid,action,id) {

            var contenturl = "wxRule/editTuWen.aspx?rid=" + rid + "&action=" + action + "&id=" + id;

            var m = top.dialog({
                id: 'dialogKWGuiZe',
                fixed: true,
                lock: true,
                max: false,
                min: false,
                title: "添加图文回复规则",
                url: contenturl,
                height: 470,
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
            <a href="tuWenList.aspx" class="back"><i></i><span>返回图文规则列表</span></a>
            <i class="arrow"></i>
            <span>图文回复内容</span>
        </div>
        <!--/导航栏-->
         <div class="mytips">
                最多添加10条内容！
            </div>
        <!--工具栏-->
        <div class="toolbar-wrap">
            <div id="floatHead" class="toolbar">
            
            <div class="box-wrap">
            <a class="menu-btn"></a>
                <div class="l-list">
                    <ul class="icon-list">

                        <li>
                           <a class="icon-btn add"  id="itemAddButton" onclick='showGuiZeDialog(<%=Rid%>,"<%=DTEnums.ActionEnum.Add %>",0);'><i></i><span>添加图文回复规则</span></a></li>
                        <li><a class="all" href="javascript:;" onclick="checkAll(this);"><i></i><span>全选</span></a></li>
                        <li>
                            <asp:LinkButton ID="btnDelete" runat="server" CssClass="del" OnClientClick="return ExePostBack('btnDelete');" OnClick="btnDelete_Click"><i></i><span>删除</span></asp:LinkButton></li>
                    </ul>
                </div>
                <div class="r-list righttopname">
                    关键词：
                    <asp:Label ID="lblKeyWords" runat="server" Text="" CssClass="guc"></asp:Label>
                </div>
                </div>
            </div>
        </div>
        <!--/工具栏-->

        <!--列表-->

        <asp:Repeater ID="rptList" runat="server">
            <HeaderTemplate>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ltable">
                    <thead>
                        <tr>
                            <th width="5%">选择</th>
                            <th width="20%">图片</th>
                            <th width="20%">标题</th>
                            <th width="20%">链接</th>
                            <th width="3%">排序</th>
                            <th width="8%">修改</th>
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
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("picUrl")%>' Style="max-height: 50px; max-width: 100px;" />
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("rContent")%>'></asp:Label>
                    </td>
                    <td style="text-align:left;">
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("detailUrl")%>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("seq")%>'></asp:Label>
                    </td>
                    <td>
                        <a class="icon-btn add"   onclick='showGuiZeDialog(<%=Rid%>,"<%=DTEnums.ActionEnum.Edit %>",<%#Eval("id")%>);'><i></i><span>修改</span></a></li>                        
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                <%#rptList.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"6\">暂无记录</td></tr>" : ""%>
                 </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>

        <!--/列表-->

        <!--内容底部-->
        <div class="line20"></div>

        <!--/内容底部-->
    </form>
</body>
</html>
