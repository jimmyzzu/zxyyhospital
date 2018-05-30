<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editKWRule.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.wxRule.editKWRule" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
  <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
<link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/jquery/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/datepicker/WdatePicker.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/artdialog/dialog-plus-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
<script type="text/javascript">
    //窗口API
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
        $(".upload-img").each(function () {
            $(this).InitSWFUpload({ sendurl: "../../tools/upload_ajax.ashx", flashurl: "../../scripts/swfupload/swfupload.swf" });
        });

    });
</script>
</head>
<body>
    <form id="form1" runat="server">
          <asp:HiddenField ID="hidrId" runat="server" Value="0" />
        
        <div class="div-content">
             <dl>
                <dt>关键词</dt>
                <dd>
                    <asp:TextBox ID="txtreqKeywords" runat="server" CssClass="input normal " datatype="*1-1000" sucmsg=" " nullmsg="请填写关键词，多个关键词请用|格开：例如: 美丽|漂亮|好看"></asp:TextBox>
                    <span class="Validform_checktip"><br />*多个关键词请用|格开：例如: 美丽|漂亮|好看</span></dd>
            </dl>
            <dl>
                <dt>关键词类型</dt>
                <dd>
                    <div class="rule-multi-radio">
                        <asp:RadioButtonList ID="rblisLikeSearch" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="0" Selected="True">完全匹配</asp:ListItem>
                            <asp:ListItem Value="1">包含匹配</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <span class="Validform_checktip"><br />*完全匹配，用户输入的和此关键词一样才会触发!<br />包含匹配 (只要用户输入的文字包含本关键词就触发!)</span>
                </dd>
            </dl>
             

        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="提交保存" style="display:none;" onclick="btnSubmit_Click" />
       

    </form>
</body>
</html>
