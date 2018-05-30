<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lbsedit.aspx.cs" Inherits="TandT.WeixinWeb.TandTAdmin.lbs.lbsedit" %>

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

            //设置封面图片的样式
            $(".photo-list ul li .img-box img").each(function () {
                if ($(this).attr("src") == $("#hidFocusPhoto").val()) {
                    $(this).parent().addClass("selected");
                }
            });

            $("#txtAddr").change(function () {

                // $("#baiduframe").attr("src", "MapSelectPoint.aspx?addr="+$(this).val());

            });


        });
    </script>
</head>
<body class="mainbody">
    <form id="form1" runat="server">
    <!--导航栏-->
    <div class="location">
        <a href="lbslist.aspx" class="back"><i></i><span>返回列表页</span></a> <i class="arrow">
        </i><span>编辑lbs数据</span>
    </div>
    <div class="line10">
    </div>
    <!--/导航栏-->
    <!--内容-->
    <div class="content-tab-wrap">
        <div id="floatHead" class="content-tab">
            <div class="content-tab-ul-wrap">
                <ul>
                    <li><a href="javascript:;" onclick="tabs(this);" class="selected">编辑lbs数据</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tab-content">
        <dl>
            <dt>名称</dt>
            <dd>
                <asp:TextBox ID="txtshopName" runat="server" CssClass="input normal " datatype="*1-1000"
                    sucmsg=" " nullmsg="请填写名称"></asp:TextBox>
                <span class="Validform_checktip">*</span></dd>
        </dl>
        <dl>
            <dt>电话</dt>
            <dd>
                <asp:TextBox ID="txtTelphone" runat="server" CssClass="input" datatype="*1-30" sucmsg=" "
                    nullmsg="电话"></asp:TextBox>
                <span class="Validform_checktip">*</span></dd>
        </dl>
        <dl>
            <dt>简介</dt>
            <dd>
                <asp:TextBox ID="txtBrief" runat="server" CssClass="input" TextMode="MultiLine" datatype="*0-1000"
                    sucmsg=" " nullmsg=""></asp:TextBox>
                <span class="Validform_checktip">*</span></dd>
        </dl>
        <dl>
            <dt>封面图片</dt>
            <dd>
                <asp:TextBox ID="txtImgUrl" runat="server" CssClass="input normal upload-path" />
                <div class="upload-box upload-img">
                </div>
                <span class="Validform_checktip">（尺寸：宽720像素，高400像素） 小于500k;</span>
            </dd>
        </dl>
        <dl>
            <dt>详细地址</dt>
            <dd>
                <asp:TextBox ID="txtAddr" runat="server" CssClass="input normal" datatype="*0-1000"
                    sucmsg=" 这只是模糊定位，准确定位在地图上标注" nullmsg=""></asp:TextBox>
                <span class="Validform_checktip">这只是模糊定位，准确定位在地图上标注</span>
            </dd>
        </dl>
        <dl>
            <dt>地图选点</dt>
            <dd>
                <iframe id="baiduframe" src="MapSelectPoint.aspx?yjindu=113.65013&xweidu=34.753541"
                    height="300" width="700" style="border: 1px solid #e1e1e1;"></iframe>
            </dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd>
                纬度（x）:
                <asp:TextBox ID="txtLatXPoint" runat="server" Width="200px" Text="" CssClass="input small "
                    datatype="*1-20" sucmsg=" " nullmsg=""></asp:TextBox>
                <span class="Validform_checktip">*</span> &nbsp;&nbsp;&nbsp; 经度（y）:
                <asp:TextBox ID="txtLngYPoint" runat="server" Width="200px" Text="" CssClass="input small "
                    datatype="*1-20" sucmsg=" " nullmsg=""></asp:TextBox>
                <span class="Validform_checktip">*</span>
            </dd>
        </dl>
        <dl>
            <dt>外部链接</dt>
            <dd>
                <asp:TextBox ID="txtwUrl" runat="server" CssClass="input normal " datatype="*0-1000"
                    sucmsg=" " nullmsg=""></asp:TextBox>
                <span class="Validform_checktip">*</span></dd>
        </dl>
        <dl>
            <dt>排序数字</dt>
            <dd>
                <asp:TextBox ID="txtSortId" runat="server" CssClass="input small" datatype="n" sucmsg=" ">99</asp:TextBox>
                <span class="Validform_checktip">*数字，越小越向前</span>
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
