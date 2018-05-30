<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wxsymptom_edit.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.weixin.wxsymptom_edit" %>
<%@ Import namespace="TandT.Common" %>
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
    });
    </script>
</head>

<body class="mainbody">
<form id="form1" runat="server">
<!--导航栏-->
<div class="location">
  <a href="wxsymptom.aspx" class="back"><i></i><span>返回列表页</span></a>
  <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
  <i class="arrow"></i>
  <a href="wxsymptom.aspx"><span>内容管理</span></a>
  <i class="arrow"></i>
  <span>添加内容</span>
</div>
<div class="line10"></div>
<!--/导航栏-->

<!--内容-->
<div id="floatHead" class="content-tab-wrap">
  <div class="content-tab">
    <div class="content-tab-ul-wrap">
      <ul>
        
        <li id="field_tab_item" runat="server" visible="false"><a href="javascript:;">扩展选项</a></li>
        <li><a href="javascript:;">详细描述</a></li>
        
      </ul>
    </div>
  </div>
</div>



<div id="field_tab_content" runat="server" visible="false" class="tab-content" style="display:none"></div>

<div class="tab-content" style="display:block">
  <%--<dl>
    <dt>部位编号</dt>
    <dd>
      <asp:TextBox ID="txtpart_id" runat="server" CssClass="input normal" datatype="/^\s*$|^[a-zA-Z0-9\-\_]{2,50}$/" sucmsg=" "></asp:TextBox>
      <span class="Validform_checktip">*部位编号</span>
    </dd>
  </dl>--%>
  <dl>
    <dt>部位名称</dt>
    <dd>
      <asp:TextBox ID="txtpart_name" runat="server" maxlength="255" datatype="*1-100" CssClass="input normal" sucmsg=" " nullmsg="请填写部位名称"/>
      <span class="Validform_checktip">部位名称</span>
    </dd>
  </dl>
  <dl>
    <dt>时间</dt>
    <dd>
      <asp:TextBox ID="txtadd_time" runat="server" CssClass="input rule-date-input" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" datatype="/^\s*$|^\d{4}\-\d{1,2}\-\d{1,2}\s{1}(\d{1,2}:){2}\d{1,2}$/" errormsg="请选择正确的日期" sucmsg=" " />
      <span class="Validform_checktip">不选择默认当前时间</span>
    </dd>
  </dl>
</div>


<!--/内容-->

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
