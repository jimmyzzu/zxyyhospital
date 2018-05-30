<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editTuWen.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.wxRule.editTuWen" %>

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
        var api = top.dialog.get(window);
        api.button([{
            value: '确定',
            autofocus: true,
            callback: function () {
                if (!submitForm()) {
                    return false;
                }
            }

        }, {
            value: '取消'
        }]);

        //提交表单处理
        function submitForm() {
            //验证表单
            if ($("#txtreqKeywords").val() == "") {
                W.$.dialog.alert('请填写关键词！', function () { $("#txtreqKeywords").focus(); }, api);
                return false;
            }


            $("#btnSubmit").click();
        }


        $(function () {
            //初始化表单验证
            $("#form1").initValidform();

            //初始化上传控件
            $(".upload-img").InitUploader({ filesize: "<%=siteConfig.imgsize %>", sendurl: "../../tools/upload_ajax.ashx", swf: "../../scripts/webuploader/uploader.swf", filetypes: "<%=siteConfig.fileextension %>" });
            $(".upload-album").each(function () {
                $(this).InitSWFUpload({ btntext: "批量上传", btnwidth: 66, single: false, water: true, thumbnail: true, filesize: "2048", sendurl: "../../tools/upload_ajax.ashx", flashurl: "../../scripts/swfupload/swfupload.swf", filetypes: "*.jpg;*.jpge;*.png;*.gif;" });
            });
            $(".attach-btn").click(function () {
                showAttachDialog();
            });
            //设置封面图片的样式
            $(".photo-list ul li .img-box img").each(function () {
                if ($(this).attr("src") == $("#hidFocusPhoto").val()) {
                    $(this).parent().addClass("selected");
                }
            });

            $("#btnSelectImg").click(function () {

                selectmodule("txtUrl");
            });


        });

        function selectmodule(txtUrl) {
            $.dialog({
                id: 'selectmodule',
                fixed: true,
                lock: true,
                max: false,
                min: false,
              
                title: "选择模型",
                content: "url:/TandTAdmin/dialog/selectmodulelink.aspx?url=" + txtUrl,
                height: 420,
                width: 440
            });

        }

    </script>
</head>

<body class="mainbody">
    <form id="form1" runat="server">
        <!--内容-->
        <div class="content-tab-wrap">
            <div id="floatHead" class="content-tab">
                <div class="content-tab-ul-wrap">
                    <ul>
                        <li><a href="javascript:;" onclick="tabs(this);" class="selected">编辑图文回复内容</a></li>
                    </ul>
                </div>
            </div>
        </div>
        
        <div class="tab-content">

           <dl>
                <dt>标题</dt>
                <dd>
                    <textarea name="txtTitle" rows="2" cols="20" id="txtTitle" class="input" runat="server"></textarea>
                    <span class="Validform_checktip">*</span>
                </dd>
            </dl>
            <dl>
                <dt>图片</dt>
                <dd>
                    <asp:TextBox ID="txtImgUrl" runat="server" CssClass="input normal upload-path" />
                    <div class="upload-box upload-img"></div>
                      <span class="Validform_checktip">（尺寸：宽720像素，高400像素） 小于200k;</span>
                </dd>
            </dl>

            <dl>
                <dt>简介</dt>
                <dd>
                    <textarea name="txtContent" rows="2" cols="20" id="txtContent" class="input" runat="server"></textarea>
                    <span class="Validform_checktip"></span>
                </dd>
            </dl>
             <dl>
                <dt>链接</dt>
                <dd>
                    <textarea name="txtUrl" rows="2" cols="20" id="txtUrl" class="input" runat="server"></textarea>
                    <span class="Validform_checktip"></span>   <input id="btnSelectImg" type="button" value="选择" class="btn" />
                </dd>
            </dl>

            <dl>
                <dt>排序</dt>
                <dd>
                    <asp:TextBox ID="txtSortId" runat="server" CssClass="input small" datatype="n" sucmsg=" ">1</asp:TextBox>
                    <span class="Validform_checktip">*数字，越小越向前</span>
                </dd>
            </dl>
            
        </div>
        <!--/内容-->

        <!--工具栏-->
        <div class="page-footer">
            <div class="btn-list">
                <asp:Button ID="btnSubmit" style="display:none;" runat="server" Text="提交保存" CssClass="btn" OnClick="btnSubmit_Click" />
                
            </div>
            <div class="clear"></div>
        </div>
        <!--/工具栏-->
    </form>
</body>
</html>