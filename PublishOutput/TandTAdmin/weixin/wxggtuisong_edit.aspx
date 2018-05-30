<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wxggtuisong_edit.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.weixin.wxggtuisong_edit" %>
<%@ Import namespace="TandT.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<title>编辑内容</title>
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

        

        //初始化编辑器
        var editor = KindEditor.create('.editor', {
            width: '100%',
            height: '350px',
            resizeType: 1,
            uploadJson: '../../tools/upload_ajax.ashx?action=EditorFile&IsWater=1',
            fileManagerJson: '../../tools/upload_ajax.ashx?action=ManagerFile',
            allowFileManager: true
        });
        var editorMini = KindEditor.create('.editor-mini', {
            width: '100%',
            height: '250px',
            resizeType: 1,
            uploadJson: '../../tools/upload_ajax.ashx?action=EditorFile&IsWater=1',
            items: [
				'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
				'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
				'insertunorderedlist', '|', 'emoticons', 'image', 'link']
        });

        //初始化上传控件
        $(".upload-img").InitUploader({ filesize: "<%=siteConfig.imgsize %>", sendurl: "../../tools/upload_ajax.ashx", swf: "../../scripts/webuploader/uploader.swf", filetypes: "<%=siteConfig.fileextension %>" });
        $(".upload-video").InitUploader({ filesize: "<%=siteConfig.videosize %>", sendurl: "../../tools/upload_ajax.ashx", swf: "../../scripts/webuploader/uploader.swf", filetypes: "<%=siteConfig.videoextension %>" });
        $(".upload-album").InitUploader({ btntext: "批量上传", multiple: true, water: true, thumbnail: true, filesize: "<%=siteConfig.imgsize %>", sendurl: "../../tools/upload_ajax.ashx", swf: "../../scripts/webuploader/uploader.swf" });

        //设置封面图片的样式
        $(".photo-list ul li .img-box img").each(function () {
            if ($(this).attr("src") == $("#hidFocusPhoto").val()) {
                $(this).parent().addClass("selected");
            }
        });

        //创建上传附件
        $(".attach-btn").click(function () {
            showAttachDialog();
        });
    });

    //初始化附件窗口
    function showAttachDialog(obj) {
        var objNum = arguments.length;
        var attachDialog = top.dialog({
            id: 'attachDialogId',
            title: "上传附件",
            url: 'dialog/dialog_attach.aspx',
            width: 500,
            height: 180,
            onclose: function () {
                var liHtml = this.returnValue; //获取返回值
                if (liHtml.length > 0) {
                    $("#showAttachList").children("ul").append(liHtml);
                }
            }
        }).showModal();
        //如果是修改状态，将对象传进去
        if (objNum == 1) {
            attachDialog.data = obj;
        }
    }
    //删除附件节点
    function delAttachNode(obj) {
        $(obj).parent().remove();
    }
</script>
</head>

<body class="mainbody">
<form id="form1" runat="server">
<!--导航栏-->
<div class="location">
  <a href="wxggtuisong.aspx" class="back"><i></i><span>返回列表页</span></a>
  <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
  <i class="arrow"></i>
  <a href="wxggtuisong.aspx"><span>内容管理</span></a>
  <i class="arrow"></i>
  <span>编辑内容</span>
</div>
<div class="line10"></div>
<!--/导航栏-->

<!--内容-->
<div id="floatHead" class="content-tab-wrap">
  <div class="content-tab">
    <div class="content-tab-ul-wrap">
      <ul>
        <li><a class="selected" href="javascript:;">基本信息</a></li>
        <li id="field_tab_item" runat="server" visible="false"><a href="javascript:;">扩展选项</a></li>
      </ul>
    </div>
  </div>
</div>

<div class="tab-content">
  <dl>
    <dt>显示状态</dt>
    <dd>
      <div class="rule-multi-radio">
        <asp:RadioButtonList ID="rblstatus" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
        <asp:ListItem Value="0" Selected="True">正常</asp:ListItem>
        <asp:ListItem Value="1">待审核</asp:ListItem>
        <asp:ListItem Value="2">不显示</asp:ListItem>
        </asp:RadioButtonList>
      </div>
    </dd>
  </dl>
  <dl>
    <dt>推荐类型</dt>
    <dd>
      <div class="rule-multi-checkbox">
        <asp:CheckBoxList ID="cblItem" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
        <asp:ListItem Value="1">允许评论</asp:ListItem>
        <asp:ListItem Value="1">置顶</asp:ListItem>
        <asp:ListItem Value="1">推荐</asp:ListItem>
        <asp:ListItem Value="1">热门</asp:ListItem>
        <asp:ListItem Value="1">幻灯片</asp:ListItem>
        </asp:CheckBoxList>
      </div>
    </dd>
  </dl>
  
  <dl>
    <dt>封面图片</dt>
    <dd>
      <asp:TextBox ID="txtPicURL" runat="server" CssClass="input normal upload-path" />
      <div class="upload-box upload-img"></div>
    </dd>
  </dl>
   <dl>
    <dt>图片名称</dt>
    <dd>
      <asp:TextBox ID="txtPicName" runat="server" maxlength="255" datatype="*1-100" CssClass="input normal" sucmsg=" " nullmsg="请填写图片名称" />
      <span class="Validform_checktip">*图片名称</span>
    </dd>
  </dl>
  
  <dl>
    <dt>排序数字</dt>
    <dd>
      <asp:TextBox ID="txtsort_id" runat="server" CssClass="input small" datatype="n" sucmsg=" ">99</asp:TextBox>
      <span class="Validform_checktip">*数字，越小越向前</span>
    </dd>
  </dl>
  <dl>
    <dt>发布时间</dt>
    <dd>
      <asp:TextBox ID="txtadd_time" runat="server" CssClass="input rule-date-input" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" datatype="/^\s*$|^\d{4}\-\d{1,2}\-\d{1,2}\s{1}(\d{1,2}:){2}\d{1,2}$/" errormsg="请选择正确的日期" sucmsg=" " />
      <span class="Validform_checktip">不选择默认当前发布时间</span>
    </dd>
  </dl>
</div>

<!--工具栏-->
<div class="page-footer">
  <div class="btn-wrap">
    <asp:Button ID="btnSubmit" runat="server" Text="提交保存" CssClass="btn" onclick="btnSubmit_Click" />
    <input name="btnReturn" type="button" value="返回上一页" class="btn yellow" onclick="javascript:history.back(-1);" />
  </div>
</div>
<!--/工具栏-->

</form>
</body>
</html>
