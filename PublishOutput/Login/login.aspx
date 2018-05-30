<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TandT.WeixinWeb.TopmdWX.member.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>登录</title>
    <meta name="keywords" content=" 登录">
    <meta name="description" content="登录">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ont-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="js/plugins/layermobile/need/layer.css">
    <script src="js/plugins/layermobile/layer.m.js"></script>
</head>
<body class="gray-bg">
    <form class="form-horizontal" id="form1" runat="server">
    <div class="ibox-content m-t">
        <div class="form-group marginbottom15 margintop40">
            <div class="col-sm-12 col-xs-12">
                <div class="input-group m-b">
                    <span class="input-group-addon spanregImage"><i class="fa fa-user"></i></span>
                    <asp:TextBox ID="mobileTxt" placeholder="请输入手机号 / 邮箱" name="mobileTxt" type="text" class="form-control inputregrop"
                        runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="form-group marginbottom15">
            <div class="col-sm-12 col-xs-12">
                <div class="input-group m-b">
                    <span class="input-group-addon  spanregImage"><i class="fa fa-lock"></i></span>
                    <asp:TextBox ID="password" tpye="password" name="password" placeholder="请输入密码" class="form-control inputregrop"
                        runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
        </div>
        <%--<div class="form-group marginbottom15">
            <div class="col-sm-12 col-xs-12">
                <p class="text-muted text-center" style="float: right; text-decoration: underline;
                    font-size: 1.2em">
                    <a href="ResetPassword.aspx">忘记密码</a>
                </p>
            </div>
        </div>--%>
        <div class="form-group marginbottom15">
            <div class="col-sm-12 col-xs-12">
                <asp:Button ID="ButtonLogin" runat="server" Text="登录" class="btn btn-w-m btn-primaryliu btn-block"
                    OnClick="ButtonLogin_Click" />
            </div>
        </div>
        <%--<div class="form-group marginbottom15">
            <div class="col-sm-12 col-xs-12">
                <a href="Register.aspx" class="btn btn-block btn-outline btn-primary register">注册</a>
            </div>
        </div>--%>
    </div>

    <div class="footerindex">
           
            <div class=" text-center">
                <strong>Copyright</strong> © 2018  <br/>技术支持：郑州大学互联网医疗与健康服务河南省协同创新中心<br/>
            </div>
        </div>
    </form>
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/plugins/validate/jquery.validate.min.js"></script>
    <script src="js/plugins/validate/validate-methods.js"></script>
    <script src="js/plugins/validate/messages_zh.min.js"></script>
    <script type="text/javascript">
           //以下为修改jQuery Validation插件兼容Bootstrap的方法，没有直接写在插件中是为了便于插件升级
           $.validator.setDefaults({
               highlight: function (element) {
                   $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                    $(element).parent().children("div").removeClass('iputdivreg');
                    $(element).parent().children("div").removeClass('iputdivregsucess');
                      $(element).parent().children("div").addClass('iputdivregerror');
                    
               },
               success: function (element) {
                   element.closest('.form-group').removeClass('has-error').addClass('has-success');
                   $(element).parent().children("div").children("div").removeClass('iputdivregerror').addClass('iputdivregsucess');
               },
               errorElement: "p",
               errorClass: "help-block m-b-none",
              // validClass: "help-block m-b-none"


           });

           //以下为官方示例
           $().ready(function () {

               // validate signup form on keyup and submit
               $("#form1").validate({
               errorPlacement: function(error, element) {  
                      error.appendTo(element.parent().parent());  
                       },
                   rules: {
                     mobileTxt: {
                        required: true,
                        isMobileOrEmail:true
                    },
                    password:{
                     required: true
                    },
                       passwordTxt: {
                           required: true,
                           minlength: 5
                       },
                       passwordTwoTxt: {
                           required: true,
                           minlength: 5,
                           equalTo: "#passwordTxt"
                       },
                       yanzhengmaTxt: {
                           required: true,
                           minlength: 4
                       },
                       agree: "required"
                   },
                   messages: {
                       mobileTxt: {
                        required: "请输入您的手机号码或邮箱",
                        mobileTxt:"请输入有效得手机号码"
                    },
                         password: {
                        required: "请输入您的密码"
                    },
                       passwordTxt: {
                           required: "请输入您的密码",
                           minlength: "密码必须6个字符以上"
                       },
                       passwordTwoTxt: {
                           required: "请再次输入密码",
                           minlength: "密码必须6个字符以上",
                           equalTo: "两次输入的密码不一致"
                       },
                       yanzhengmaTxt: {
                           required: "输入手机验证码",
                           minlength: "验证码为4位数字"
                       },
                       agree: "必须同意协议后才能注册"
                   }
               });

             
           });
    </script>
</body>
</html>
