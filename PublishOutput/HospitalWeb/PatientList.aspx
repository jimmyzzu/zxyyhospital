<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientList.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.PatientList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<title>挂号联系人</title>
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
 <script type="text/javascript">
     var contectid = "<%=contactsid%>";
     if (window.name != "bencalie") {
         location.reload();
         window.name = "bencalie";
     } else {
         window.name = "";
     }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1>挂号联系人</h1>
    <a href="PatientEdit.aspx?action=Add&<%=urlquery%>" ID="Button1" class="ui-icon1 icon-btn1 btn-menu1">添加联系人</a> 
</header>
<section class="ui-blk">
<div class="youqingtishi" style="padding:5px; width:100%;">
    <p style="padding:20px 10px; color:red; text-align:center;">友情提示：点击右上角按钮可添加联系人信息</p>
    </div>
    <div class="ui-blk-cnt jobs-list">
     <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
        <label style=" width:100%;">
        
        <input name="radiouser"   type="radio" value="<%#Eval("id")%>"  style=" float:left;height:80px; width:6%; margin-top:4%;"/>
        <div class="name-list" style=" height:auto; overflow:hidden; float:left; width:86%;">
          <div style=" float:right; width:20%">
        	<a href="PatientEdit.aspx?id=<%#Eval("id")%>&action=Edit&<%=urlquery%>" class=" mt20">编辑</a></div>
        	<!--<button type="button" class="btn dropdown-toggle btn-primary2" id="" style=" margin-top:20px;" data-toggle="dropdown">编辑</button>-->
            <div style=" float:left; width:80%">
            <h4 class="jobs-hd"><%#Eval("Name")%></h4>
            <span class="jobs-name">身份证号：<%#Eval("UserNo")%></span><br /><span class="jobs-name">电话号码：<%#Eval("Phone")%></span></div>
        </div>
        </label>
 </ItemTemplate>
        </asp:Repeater>
        
    </div>
    <div class="buttons mt20" style=" width:100%; margin:0 auto; position:fixed; bottom:0; height:60px">
            <%--<button class="btn btn-success w100 btn-primary2" id="" style=" background:#21a2c6; color:White; border-radius: 0;">下一步</button>--%>
            <asp:Button ID="ButNext" runat="server" 
                class="btn btn-success w100 btn-primary2" 
                style=" background:#21a2c6; color:White; border-radius: 0; height:60px"  Text="下一步" 
                onclick="ButNext_Click"></asp:Button>
            <%--<asp:Button ID="ButtonDoc"
                    runat="server" Text="下一步" class="btn btn-success w100 btn-primary2" style=" margin-top:20px;"/>--%>
          </div>
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript">
       var contectid = "<%=contactsid%>";
//        $(document).ready(function () {
            if (contectid != "") {
                $("input[name=radiouser][value='" + contectid + "']").attr("checked", 'checked');
            }
            else {
                $("input[name=radiouser]:eq(0)").attr("checked", 'checked');
            }
       // });
    </script>
</section>
    </form>
</body>
</html>
