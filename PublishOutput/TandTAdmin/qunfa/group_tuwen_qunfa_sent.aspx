<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="group_tuwen_qunfa_sent.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.qunfa.group_tuwen_qunfa_sent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>编辑图文群发内容</title>
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/jquery/Validform_v5.3.2_min.js"></script>
    <script type="text/javascript" src="../../scripts/lhgdialog/lhgdialog.js?skin=idialog"></script>
    <script type="text/javascript" src="../../scripts/datepicker/WdatePicker.js"></script>
    <script type="text/javascript" src="../../scripts/swfupload/swfupload.js"></script>
    <script type="text/javascript" src="../../scripts/swfupload/swfupload.queue.js"></script>
    <script type="text/javascript" src="../../scripts/swfupload/swfupload.handlers.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../editor/kindeditor-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../editor/lang/zh_CN.js"></script>
    <script type="text/javascript" src="../js/layout.js"></script>
    <link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
    <link href="../skin/mystyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            //初始化表单验证
            $("#form1").initValidform();
        });
    </script>
</head>

<body class="mainbody">
    <form id="form1" runat="server">
        <!--导航栏-->
        <div class="location">
            <a href="group_tuwen_qunfa_list.aspx"><span>分组群发列表</span></a>
            <i class="arrow"></i>
            <span>图文分组群发</span>
        </div>
        <div class="line10"></div>
        <!--/导航栏-->

        <!--内容-->
         <div id="floatHead" class="content-tab-wrap">
        <div class="content-tab">
                <div class="content-tab-ul-wrap">
                    <ul>
                        <li><a href="javascript:;" onclick="tabs(this);" class="selected">图文分组群发</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tab-content">
            <dl>
                <dt>分组</dt>
                <dd>
                    <asp:DropDownList ID="ddlGroups" runat="server" datatype="*"></asp:DropDownList>
                    <span class="Validform_checktip">*</span>
                </dd>
            </dl>
            <dl>
                <dt>图文</dt>
                <dd>
                    <asp:DropDownList ID="ddlTuWen" runat="server" datatype="*"></asp:DropDownList>
                    <span class="Validform_checktip">*</span>
                </dd>
            </dl>
        </div>
        <!--/内容-->

        <!--工具栏-->
        <div class="page-footer">
        <div class="btn-wrap">
            <div class="btn-list">
                <asp:Button ID="btnPreview" runat="server" Text="预览" CssClass="btn" OnClick="btnPreview_Click" />
                <asp:Button ID="btnSubmit" runat="server" Text="提交发送" CssClass="btn" OnClick="btnSubmit_Click" />
                <a href="group_tuwen_qunfa_list.aspx"><span class="btn yellow">返回上一页</span></a>
            </div>
           </div>
        </div>
        <!--/工具栏-->
    </form>
</body>
</html>
