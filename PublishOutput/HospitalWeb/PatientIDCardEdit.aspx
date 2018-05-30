<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientIDCardEdit.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.PatientIDCardEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <title>就诊卡信息编辑</title>   
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/resume.css" type="text/css">
    <link rel="stylesheet" href="js/plugins/layermobile/need/layer.css">
    <script src="js/plugins/layermobile/layer.m.js"></script>
</head>
<body style=" background-color:#fff;">
    <form id="form1" runat="server">
    <header class="ui-header">
    <!--<a href="javascript:;" onclick="_gaq.push([&#39;_trackEvent&#39;, &#39;3g_user&#39;, &#39;click&#39;, &#39;3g_user click&#39;]);" class="ui-icon icon-btn btn-menu">展开</a>-->
    <h1>郑州市中心医院</h1>
</header>
<header class="ui-blk-tit">
    <h3>就诊卡信息<asp:Literal ID="LitHead" runat="server"></asp:Literal></h3>
</header>
<section class="ui-blk">
    <div class="ui-blk-cnt jobs-list" style="border:none;">
  
        <div class="control-group">
    
          <!-- Search input-->
          <label class="control-label">姓&nbsp;&nbsp;&nbsp;名</label>
          <div class="controls">
             <asp:TextBox ID="TBName" runat="server"  placeholder="姓名" class="input-xlarge search-query"></asp:TextBox>
            <!--<p class="help-block">请输入您的姓名</p>-->
          </div>

        </div>
    
        
    
        <div class="control-group">
    
          <!-- Text input-->
          <label class="control-label" for="input01">身份证</label>
          <div class="controls">
          <asp:TextBox ID="TBNo" runat="server"  placeholder="身份证号" class="input-xlarge"></asp:TextBox>
            <!--<p class="help-block">请输入您的身份证号</p>-->
          </div>
        </div>
    
        
    
        <div class="control-group">
    
          <!-- Text input-->
          <label class="control-label" for="input01">电&nbsp;&nbsp;&nbsp;话</label>
          <div class="controls">
             <asp:TextBox ID="TbPhone" runat="server"  placeholder="电话号码" class="input-xlarge"></asp:TextBox>
            <!--<p class="help-block">请输入您的电话号码</p>-->
          </div>
        </div>
    
     <div class="control-group">
    
          <!-- Text input-->
          <label class="control-label" for="input01">性&nbsp;&nbsp;&nbsp;别</label>
          <div class="controls">
             <asp:DropDownList ID="DropDownListsex" runat="server">
             <asp:ListItem Value="0" Text="男"></asp:ListItem>
             <asp:ListItem Value="1" Text="女"></asp:ListItem>
             </asp:DropDownList>
            <!--<p class="help-block">请输入您的电话号码</p>-->
          </div>
        </div>

        <div class="buttons mt20">
        <asp:Button ID="ButtonQueding" runat="server" Text="确定" 
                class="btn btn-success w100 btn-primary2" onclick="ButtonQueding_Click" ></asp:Button>
          </div>
          <br /><br />
        <div class="buttons mt20">
        <asp:Button ID="ButtonDele" runat="server" Text="解除绑定" 
                class="btn btn-success w100 btn-primary3" onclick="ButtonDele_Click" ></asp:Button>
          </div>  

    </div>    
</section>
    </form>
</body>
</html>
