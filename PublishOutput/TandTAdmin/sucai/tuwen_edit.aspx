<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="tuwen_edit.aspx.cs"
    Inherits="TandT.WeixinWeb.TandTAdmin.sucai.tuwen_edit" %>

<%@ Import Namespace="TandT.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>编辑图文回复内容</title>
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
        $(function () {
            //初始化表单验证
            $("#form1").initValidform();

            //初始化上传控件
            $(".upload-img").InitUploader({ filesize: "<%=siteConfig.imgsize %>", sendurl: "../../tools/upload_ajax.ashx", swf: "../../scripts/webuploader/uploader.swf", filetypes: "<%=siteConfig.fileextension %>" });
            //初始化编辑器
            var editor = KindEditor.create('.editor', {
                width: '98%',
                height: '350px',
                resizeType: 1,
                uploadJson: '../../tools/upload_ajax.ashx?action=EditorFile&IsWater=1',
                fileManagerJson: '../../tools/upload_ajax.ashx?action=ManagerFile',
                allowFileManager: true
            });
        });
    </script>
</head>
<body class="mainbody">
    <form id="form1" runat="server">
    <!--导航栏-->
    <div class="location">
     <a href="../center.aspx" class="home"><i></i><span>首页</span></a> <i class="arrow">
        </i>
        <a href="tuwen_list.aspx"><span>图文素材列表</span></a> <i class="arrow"></i><span>编辑图文素材</span>
    </div>
    <div class="line10">
    </div>
    <!--/导航栏-->
    <!--内容-->
     <div id="floatHead" class="content-tab-wrap">
        <div class="content-tab">
            <div class="content-tab-ul-wrap">
                <ul>
                    <li><a href="javascript:;" onclick="tabs(this);" class="selected">编辑图文素材</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tab-content">
        <dl>
            <dt>上级图文</dt>
            <dd>
                <asp:DropDownList ID="ddlParent" runat="server">
                </asp:DropDownList>
                <span class="Validform_checktip">*</span>
                <input type="hidden" runat="server" id="hidId" />
            </dd>
        </dl>
        <dl>
            <dt>标题</dt>
            <dd>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="input normal" datatype="*2-100"></asp:TextBox>
                <span class="Validform_checktip">*</span>
            </dd>
        </dl>
        <dl>
            <dt>封面</dt>
            <dd>
                <asp:TextBox ID="txtCoverImgUrl" runat="server" CssClass="input normal upload-path"
                    datatype="*" sucmsg="请上传封面" />
                <div class="upload-box upload-img">
                </div>
                <span class="Validform_checktip">*</span>
            </dd>
        </dl>
        <dl>
            <dt>作者</dt>
            <dd>
                <asp:TextBox ID="txtAuthor" runat="server" CssClass="input normal"></asp:TextBox>
                <span class="Validform_checktip"></span>
            </dd>
        </dl>
        <dl>
            <dt>原文链接</dt>
            <dd>
                <asp:TextBox ID="txtContentSourceUrl" runat="server" CssClass="input normal"></asp:TextBox>
                <span class="Validform_checktip"></span>
            </dd>
        </dl>
        <dl>
            <dt>排序值</dt>
            <dd>
                <asp:TextBox ID="txtSortOrder" runat="server" CssClass="input small" datatype="n"
                    sucmsg="" Text="99"></asp:TextBox>
                <span class="Validform_checktip">*数字，越小越向前</span>
            </dd>
        </dl>
        <dl>
            <dt>是否显示封面</dt>
            <dd>
                <asp:DropDownList ID="ddlShowCoverPic" runat="server">
                    <asp:ListItem Text="显示" Value="1"></asp:ListItem>
                    <asp:ListItem Text="隐藏" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <span class="Validform_checktip"></span>
            </dd>
        </dl>
        <dl>
            <dt>简介</dt>
            <dd>
                <asp:TextBox ID="txtDigest" runat="server" CssClass="input normal" TextMode="MultiLine"
                    Columns="100" Rows="1"></asp:TextBox>
                <span class="Validform_checktip"></span>
            </dd>
        </dl>
        <dl>
            <dt>内容</dt>
            <dd>
                <textarea id="txtContent" class="editor" runat="server" datatype="*"></textarea>
                <span class="Validform_checktip">*</span>
            </dd>
        </dl>
    </div>
    <!--/内容-->
    <!--工具栏-->
    <div class="page-footer">
        <div class="btn-wrap">
            <div class="btn-list">
                <asp:Button ID="btnSubmit" runat="server" Text="提交保存" CssClass="btn" OnClick="btnSubmit_Click" />
                <a href="tuwen_list.aspx"><span class="btn yellow">返回上一页</span></a>
            </div>
        </div>
    </div>
    <!--/工具栏-->
    </form>
</body>
</html>
