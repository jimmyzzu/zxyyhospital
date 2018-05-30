<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addNews.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.wxRule.addNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    //窗口API
    var api = top.dialog.get(window); //获取父窗体对象
    api.button([{
        value: '确定',
        autofocus: true,
        callback: function () {
            if (!submitForm()) {
                return false;
            }
            
           
        } 
        
    }, {
        value: '取消',
        callback: function () { }
    }]);

    //提交表单处理
    function submitForm() {
        //验证表单
        if ($("#txtTitle").val() == "") {
            W.$.dialog.alert('请填写标题！', function () { $("#txtTitle").focus(); }, api);
            return false;
        }
       
       
        if ($("#txtSortId").val() == "") {
            W.$.dialog.alert('请填写排序号！', function () { $("#txtSortId").focus(); }, api);
            return false;
        }
        if (isNaN($('#txtSortId').val()))
        {
            W.$.dialog.alert('排序号请填写数字！', function () { $("#txtSortId").focus(); }, api);
            return false;
        }
        $("#btnSubmit").click();
    }

    $(function () {
            //初始化表单验证
            $("#form1").initValidform();

            //初始化上传控件
            $(".upload-img").InitUploader({ filesize: "<%=siteConfig.imgsize %>", sendurl: "../../tools/upload_ajax.ashx", swf: "../../scripts/webuploader/uploader.swf", filetypes: "<%=siteConfig.fileextension %>" });

        });
</script>
</head>
<body>
    <form id="form1" runat="server">
          <asp:HiddenField ID="hidrId" runat="server" Value="0" />
         <asp:HiddenField ID="hidId" runat="server" Value="0" />
        <asp:HiddenField ID="hidAction" runat="server" Value="0" />
       
        <div class="div-content">
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
                </dd>
            </dl>

            <dl>
                <dt>内容</dt>
                <dd>
                    <textarea name="txtContent" rows="2" cols="20" id="txtContent" class="input" runat="server"></textarea>
                    <span class="Validform_checktip"></span>
                </dd>
            </dl>
             <dl>
                <dt>链接</dt>
                <dd>
                    <textarea name="txtUrl" rows="2" cols="20" id="txtUrl" class="input" runat="server"></textarea>
                    <span class="Validform_checktip"></span>
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
        <asp:Button ID="btnSubmit" runat="server" Text="提交保存" style="display:none;" onclick="btnSubmit_Click" />
       

    </form>
</body>
</html>
