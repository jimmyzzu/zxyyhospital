<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_MedicalExaminationReport.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_MedicalExaminationReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<title>体检报告</title>
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

 <script type="text/javascript">
     function searchReport() {
         var checkId = $("#txt_CheckId").val();
         var patientName = $("#txt_PatientName").val();
         if (checkId == "") {
             //alert("检查号不能为空，请重新输入");
             $("#txt_CheckId").focus();
         } else if(patientName==""){
            //alert("姓名不能为空，请重新输入");
             $("#txt_PatientName").focus();
         }
         else {
             window.location = "/HospitalWeb/Pocket_MedicalExaminationReport_ItemList.aspx?checkId=" + checkId +  "&patientName="+patientName;
         }
     }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1>体检报告</h1>
    <a href="PatientIDCardEdit.aspx?action=Add&from=assaySampleList" ID="Button1" class="ui-icon1 icon-btn1 btn-menu1">添加联系人</a> 
</header>
<section class="ui-blk">
<div class="youqingtishi" style="padding:5px; width:100%;">
    <p style="padding:20px 10px; color:red; text-align:center;">友情提示：点击右上角按钮可添加就诊卡信息</p>
    </div>


    
    <div class="ui-blk-cnt jobs-list" style=" height:50px;">
         <div class="control-group">
    
          <!-- Search input-->
          <%--<label class="control-label">体检号</label>--%>
          <div class="controls" style="margin-left:0em;width:45%;float:left;">
             <input id="txt_CheckId" type="text" placeholder="体检号" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
          </div>
           <div class="controls" style="margin-left:0em;width:35%;float:left;">
             <input id="txt_PatientName" type="text" placeholder="姓名"/>
          </div>
          <div style=" float:left; width:20%; height:100%;">
        	<a href="javascript:void(0);" onclick="searchReport();" class="checkBtn" style=" line-height:2.4em;">查看</a>
            </div>
        </div>
    </div>
    
       <div class="ui-blk-cnt jobs-list" style=" border-bottom:0;">
        <asp:Repeater ID="rptList2" runat="server">
            <ItemTemplate>
                <a href="Pocket_MedicalExaminationReport_ItemList.aspx?checkId=<%# Eval("CheckId")%>&patientName=<%#Eval("PatientName")%>">
                   <h4 class="jobs-hd">体检号：<%#Eval("CheckId")%></h4>
                    <span class="jobs-name">姓名：<%#Eval("PatientName")%></span><br />
                    <span class="jobs-name">体检日期：<%#!string.IsNullOrEmpty(Eval("ExaminationDate").ToString())?DateTime.Parse(Eval("ExaminationDate").ToString()).ToString("yyyy-MM-dd"):""%></span><br />
                    <i class="ui-icon btn-more"></i>
                </a>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <div class="ui-blk-cnt jobs-list" style=" border-bottom:0;">
        <asp:Repeater ID="rptList1" runat="server">
            <ItemTemplate>
                <a href="Pocket_MedicalExaminationReport_ItemList.aspx?patientName=<%# Eval("patientName")%>&IDCardNo=<%# Eval("cardNo")%>">
                   <h4 class="jobs-hd">就诊卡号：<%#Eval("mediCardNo")%></h4>
                    <span class="jobs-name">姓名：<%#Eval("patientName")%></span><br />
                    <span class="jobs-name">身份证号：<%#Eval("cardNo")%></span><br />
                    <i class="ui-icon btn-more"></i>
                </a>
            </ItemTemplate>
        </asp:Repeater>
    </div>

<%--    <div class="youqingtishi" style="padding:5px; width:100%;">
        <p style="padding:20px 10px; color:red; text-align:center;">友情提示：您还可以输入体检号查询</p>
    </div>--%>


    <script src="js/jquery.min.js"></script>
    <script type="text/javascript">

    </script>
</section>
    </form>
</body>
</html>
