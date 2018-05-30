<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_MenzhenPaymentDetail.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_MenzhenPaymentDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
        .selflable{font-size: 1.2em;line-height: 2.4em; text-align: right; display: inline-block;width: 30%;}
    </style>
    <title>门诊待缴费详情</title>
    <script type="text/javascript">

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
    <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>门诊待缴费详情</h3>
    </header>
    <div class="ui-blk-cnt jobs-list">
       <asp:Repeater ID="rptList1" runat="server">
            <ItemTemplate>
                <a href="javascript:void(0);">
                    <h4 class="jobs-hd">项目名称：<%#Eval("itemName")%></h4>
                    <span class="jobs-name">项目类别：<%#Eval("itemType")%></span><br />
                    <span class="jobs-name">单价：<%#Convert.ToDecimal(Eval("itemPrice"))/100%></span><br />
                    <span class="jobs-name">单位：<%#Eval("itemUnit")%></span><br />
                    <span class="jobs-name">数量：<%#Convert.ToDecimal(Eval("itemNumber")).ToString("0")%></span><br />
                    <span class="jobs-name">规格：<%#Eval("itemSpec")%></span><br />
                    <span class="jobs-name">价格总计：<%#Convert.ToDecimal(Eval("itemTotalFee"))/100%></span>
                    </a>
            </ItemTemplate>
        </asp:Repeater>

        <div class="buttons mt20">
            <asp:Button ID="btn_Pay" runat="server" Text="支付" 
                class="btn btn-success w100 btn-primary2" onclick="btn_Pay_Click" Visible="false" ></asp:Button>
        </div>
    </div>
    
    
</section>
    </form>
</body>
</html>
