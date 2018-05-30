<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.qrcode.create" %>

<%@ Import Namespace="TandT.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>生成带参数二维码</title>
    <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/jquery/Validform_v5.3.2_min.js"></script>
    <script type="text/javascript" src="../../scripts/artdialog/dialog-plus-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
</head>
<body class="mainbody">
    <form id="form1" runat="server">
    <!--导航栏-->
    <div class="location">
        <a href="../center.aspx" class="home"><i></i><span>首页</span></a> <i class="arrow">
        </i><span>场景二维码生成器</span>
    </div>
    <div class="line10">
    </div>
    <!--/导航栏-->
    <!--内容-->
    <div id="floatHead" class="content-tab-wrap">
        <div class="content-tab">
            <div class="content-tab-ul-wrap">
                <ul>
                    <li><a href="javascript:;" onclick="tabs(this);" class="selected">配置基本信息</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tab-content">
        <dl>
            <dt>AppId</dt>
            <dd>
                <asp:TextBox ID="tbxAppId" runat="server" CssClass="input normal " datatype="n" sucmsg=" "
                    nullmsg="AppId"></asp:TextBox>
                <span class="Validform_checktip">*</span></dd>
        </dl>
        <dl>
            <dt>AppSecret</dt>
            <dd>
                <asp:TextBox ID="tbxAppSecret" runat="server" CssClass="input normal " datatype="n"
                    sucmsg=" " nullmsg="AppSecret"></asp:TextBox>
                <span class="Validform_checktip">*</span></dd>
        </dl>
        <dl>
            <dt>标识参数</dt>
            <dd>
                <asp:TextBox ID="tbxParam" runat="server" CssClass="input normal " datatype="n" sucmsg=" "
                    nullmsg="标识参数"></asp:TextBox>
                <span class="Validform_checktip">*</span> <span class="Validform_checktip">（临时二维码时为32位非0整型，永久二维码时最大值为1-100000）</span>
            </dd>
        </dl>
        <dl>
            <dt>有效期</dt>
            <dd>
                <asp:TextBox ID="tbxValidate" runat="server" CssClass="input normal" Text="0" datatype="n"
                    sucmsg=" " nullmsg="标识参数"></asp:TextBox>
                <span class="Validform_checktip">*</span> <span class="Validform_checktip">（0为永久二维码，其他为临时二维码（临时二维码以秒为单位。
                    最大不超过1800））</span>
            </dd>
        </dl>
        <dl>
            <dt>二维码图片</dt>
            <dd>
                <asp:Image ID="ImgUrl" runat="server" ImageUrl="~/images/noneimg.jpg" />
            </dd>
        </dl>
    </div>
    <!--/内容-->
    <!--工具栏-->
    <div class="page-footer">
        <div class="btn-wrap">
            <div class="btn-list">
                <asp:Button ID="btnSubmit" runat="server" Text="生成二维码" CssClass="btn" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>
    <!--/工具栏-->
    </form>
</body>
</html>
