<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lbsSetting.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.lbs.lbsSetting" %>

<%@ Import Namespace="TandT.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>编辑lbs数据</title>
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
            //$(".upload-album").each(function () {
            //    $(this).InitSWFUpload({ btntext: "批量上传", btnwidth: 66, single: false, water: true, thumbnail: true, filesize: "2048", sendurl: "../../tools/upload_ajax.ashx", flashurl: "../../scripts/swfupload/swfupload.swf", filetypes: "*.jpg;*.jpge;*.png;*.gif;" });
            //});
            //$(".attach-btn").click(function () {
            //    showAttachDialog();
            //});
            ////设置封面图片的样式
            //$(".photo-list ul li .img-box img").each(function () {
            //    if ($(this).attr("src") == $("#hidFocusPhoto").val()) {
            //        $(this).parent().addClass("selected");
            //    }
            //});
        });
    </script>
</head>
<body class="mainbody">
    <form id="form1" runat="server">
    <!--导航栏-->
    <div class="location">
        <a href="lbslist.aspx" class="back"><i></i><span>返回列表页</span></a> <i class="arrow">
        </i><span>配置lbs基本信息</span>
    </div>
    <div class="line10">
    </div>
    <!--/导航栏-->
    <!--内容-->
    <div id="floatHead" class="content-tab-wrap">
        <div class="content-tab">
            <div class="content-tab-ul-wrap">
                <ul>
                    <li><a href="javascript:;" onclick="tabs(this);" class="selected">配置lbs基本信息</a></li>
                </ul>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="hidModelID" runat="server" />
    <div class="tab-content">
        <dl>
            <dt>默认查询范围</dt>
            <dd>
                <asp:TextBox ID="txtsearchRadius" runat="server" CssClass="input normal " datatype="n"
                    sucmsg=" " nullmsg="默认查询范围">100</asp:TextBox>公里 <span class="Validform_checktip">*</span></dd>
        </dl>
        <dl>
            <dt>封面图片</dt>
            <dd>
                <asp:Image ID="imgImgUrl" runat="server" Style="max-height: 80px; padding-bottom: 10px;"
                    ImageUrl="~/images/noneimg.jpg" /><br />
                <asp:TextBox ID="txtImgUrl" runat="server" CssClass="input normal upload-path" />
                <div class="upload-box upload-img">
                </div>
                <span class="Validform_checktip">（尺寸：宽700像素，高400像素） 小于500k;</span>
            </dd>
        </dl>
    </div>
    <!--/内容-->
    <!--工具栏-->
    <div class="page-footer">
        <div class="btn-wrap">
            <div class="btn-list">
                <asp:Button ID="btnSubmit" runat="server" Text="提交保存" CssClass="btn" OnClick="btnSubmit_Click" />
                <a href="lbslist.aspx"><span class="btn yellow">返回上一页</span></a>
            </div>
        </div>
    </div>
    <!--/工具栏-->
    </form>
</body>
</html>
