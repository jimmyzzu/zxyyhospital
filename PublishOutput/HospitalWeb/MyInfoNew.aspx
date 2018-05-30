<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyInfoNew.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.MyInfoNew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人中心</title>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="email=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/flat-ui.css" rel="stylesheet" />
    <link href="css/WeChatCommon.css" rel="stylesheet" />
    <link href="css/toastr.css" rel="stylesheet" />
    <link href="Font-Awesome-3.2.1/css/font-awesome.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/flat-ui.min.js"></script>
    <script src="js/common.js"></script>
    <script src="js/application.js"></script>
    <script src="js/jweixin-1.0.0.js"></script>
    <script src="js/spin.min.js"></script>
    <script src="js/toastr.js"></script>
    <script src="js/common2.js"></script>


    <script type="text/javascript">
        function div_Gourl(url) {
            window.location.href = url;
        }
    </script>
    <meta charset="utf-8">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar navbar-static-top bs-docs-nav" style="margin-bottom: 20px; background: #23a6bb">
        <div class="navbar-header">
            <div class="navbar-brand" style="font-size: 20px; font-weight: 400; color: white;
                width: 50%; margin-left: 25%; text-align: center;">
                个人中心</div>
        </div>
    </div>
    <div class="container-fluid has_header">
       
        <div class="panel" style="border: none">
            <div class="panel-body">
                <a href="#" class="pc-avatar">
                    <asp:Literal ID="LiteralImg" runat="server"></asp:Literal>
                </a>
                <div class="pc-user-info-con">
                    <p class="pc-nickname">
                        <asp:Literal ID="LabelNickName" runat="server"></asp:Literal>
                    </p>
                    <div id="div_myBindingCount" class="pc-binded-con" onclick="div_Gourl('PatientIDCardList.aspx')">
                        已绑定 <a href="#">
                            <asp:Literal ID="LiteralpaCount" runat="server"></asp:Literal>
                        </a>张就诊卡
                    </div>
                </div>
            </div>
            <table class="table" style="color: #797979; font-size: 14px;">
                <tbody>
                    <tr>
                        <td>
                            <div id="div_myBinding" onclick="div_Gourl('PatientIDCardList.aspx')")>
                                <i class="icon-user tab-icon"></i>我的就诊卡
                            </div>
                        </td>
                        <td>
                            <div id="div_myOrder" onclick="div_Gourl('Pocket_TakeNumber.aspx')">
                                <i class="icon-user-md tab-icon"></i>我的预约
                            </div>
                        </td>
                    </tr>
                    <%--<tr>
                        <td>
                            <div id="div_myQueue" onclick="div_Gourl('kaifa.html')">
                                <i class="icon-group tab-icon"></i>排队进度
                            </div>
                        </td>
                        <td>
                            <div id="div_myFee" onclick="div_Gourl('Pocket_ConsumingRecords.aspx')">
                                <i class="icon-money tab-icon"></i>我的账单
                            </div>
                        </td>
                    </tr>--%>
                    <tr>
                        <td>
                            <div id="div_myReport" onclick="div_Gourl('AssaySampleMedicardSelect.aspx')">
                                <i class="icon-beaker tab-icon"></i>检查结果
                            </div>
                        </td>
                        <td>
                            <%--<div id="div_myEMR" onclick="div_Gourl('kaifa.html')">
                                <i class="icon-edit tab-icon"></i>我的病历
                            </div>--%>
                        </td>
                        
                    </tr>
                    <%--<tr>
                        <td>
                            <div id="div_myPhysical" onclick="div_Gourl('Pocket_MedicalExaminationReport.aspx')">
                                <i class="icon-stethoscope tab-icon"></i>体检报告
                            </div>
                        </td>
                        <td>
                            <div id="div_myAddOrder" onclick="div_Gourl('kaifa.html')">
                                <i class="icon-comments-alt tab-icon"></i>就医指南
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="div_kajuan" onclick="div_Gourl('kaifa.html')">
                                <i class="icon-stethoscope tab-icon"></i>我的卡劵
                            </div>
                        </td>
                        <td>
                            <div id="div_MenzhenPayment" onclick="div_Gourl('Pocket_MenzhenPayment.aspx')">
                             <i class="icon-money tab-icon"></i>门诊待缴费
                            </div>
                        </td>
                    </tr>--%>
                </tbody>
            </table>
        </div>
    </div>
        <footer id="Float" style=" width:100%;clear:both;position:fixed !important;position:absolute;z-index:9999;bottom:0px !important;_top:expression(eval(document.compatMode &amp;&amp; document.compatMode=='CSS1Compat')?documentElement.scrollTop+(document.documentElement.clientHeight-this.offsetHeight):document.body.scrollTop+(document.body.clientHeight-this.clientHeight));">
			<div class="footer">
			<input type="hidden" id="TemMenu" name="TemMenu">
            <dl>
                <dt id="" class="b-r1" ><a href="MenZhenIndex.aspx" style="font-weight: 100;font-size:15px">门诊</a></dt>
            </dl>
            <dl>
                <dt id=""  class="b-r1"><a href="ZhuYuanIndex.aspx" style="font-weight: 100;font-size:15px">住院</a></dt>
            </dl>
            <dl>
                <dt id="" class="b-r1"><a href="TiJianIndex.aspx" style="font-weight: 100;font-size:15px">体检</a></dt>
            </dl>
            <dl class="on">
                <dt id=""><a href="MyInfo.aspx" style="font-weight: 100;font-size:15px">个人中心</a></dt>
            </dl>
			</div>
        </footer>        
   
    </form>
    
</body>
</html>
