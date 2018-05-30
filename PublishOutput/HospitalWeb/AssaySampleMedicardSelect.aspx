<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssaySampleMedicardSelect.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.AssaySampleMedicardSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">


<style type="text/css">
.checkBtn
{
    border: 1px solid transparent;
    border-radius: 4px;
    cursor: pointer;
    display: inline-block;
    font-size: 14px;
    font-weight: 400;
    line-height: 2.4em;
    margin-bottom: 0;
    padding: 7px 14px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    background-color: #33d0b3;
    border-color: #33d0b3;
    color: #fff;
    }
</style>
 <title>检验报告</title>
 <script src="js/jquery.min.js"></script>
   <script type="text/javascript">
       function searchReport() {
           var checkId = $("#txt_CheckId").val();
           if (checkId == "") {
               //alert("检查号不能为空，请重新输入");
               $("#txt_CheckId").focus();
           }
           else {
               window.location = "/HospitalWeb/AssaySampleDetail.aspx?assayId=" + checkId;
           }
       }
    
    </script>

</head>
<body>
     <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
<section class="ui-blk">
    <div class="youqingtishi" style="padding:5px; width:100%;">
    <p style="padding:20px 10px; color:red; text-align:center;">友情提示：请选择就诊卡，查看对应化验单信息</p>
    </div>

    <div class="ui-blk-cnt jobs-list" style=" height:50px;">
         <div class="control-group">
    
          <!-- Search input-->
          <%--<label class="control-label">检验单号</label>--%>
          <div class="controls" style="margin-left:0em;width:80%;float:left;">
             <input id="txt_CheckId" type="text" placeholder="检验单号" onkeyup="this.value=this.value.replace(/[\W]/g,'')" onpaste="this.value=this.value.replace(/[\W]/g,'')"/>
          </div>
          <div style=" float:left; width:20%; height:100%;">
        	<a href="javascript:void(0);" onclick="searchReport();" class="checkBtn" style=" line-height:2.4em;">查看</a>
            </div>
        </div>
    </div>

    <div class="ui-blk-cnt jobs-list">
     <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
        <div class="name-list" style=" clear:both; height:auto; overflow:hidden">
        	<!--<button type="button" class="btn dropdown-toggle btn-primary2" id="" style=" margin-top:20px;" data-toggle="dropdown">编辑</button>-->
            <div style=" float:left; width:80%" onclick="javascript:window.location.href='AssaySampleList.aspx?cardType=<%#Eval("cardType")%>&mediCardNO=<%#Eval("mediCardNo")%>'">
            <h4 class="jobs-hd"><%#(Eval("cardType") == "O" ? "就诊卡号：" : "住院号：")%><%#Eval("mediCardNO")%></h4>
           <span class="jobs-name">姓名：<%#Eval("patientName")%></span><br />
            <span class="jobs-name">身份证号：<%#Eval("cardNo")%></span>
            <i class="ui-icon btn-more"></i>
            </div>
        </div>
 </ItemTemplate>
        </asp:Repeater>
        
    </div>
    
</section>
    </form>
</body>
</html>
