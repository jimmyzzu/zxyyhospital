<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocket_MedicalExaminationReport_Picture.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.Pocket_MedicalExaminationReport_Picture" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <meta charset="utf-8">
    <title>影像结果</title>
    <%--<link href="css/news.css" rel="stylesheet" type="text/css">--%>
    <link rel="stylesheet" href="css/style.css" type="text/css">
  <%--  <link rel="stylesheet" href="css/slide.css" type="text/css">
    <link rel="stylesheet" href="css/resume.css" type="text/css">--%>
    <link href="css/report.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    html{font-size:100%;}
    
    .max{width:100%;height:auto;}
.min{width:100px;height:auto;}
    </style>

    <script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script src="js/jquery.min.1.9.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            funcReadImgInfo();
        });


        /*调用微信预览图片的方法*/
        function funcReadImgInfo() {
            var domain = window.location.host + '/HospitalWeb/';
            var imgs = [];
            var imgObj = $("li img"); //这里改成相应的对象
            for (var i = 0; i < imgObj.length; i++) {
                imgObj.eq(i).attr('src', 'http://' + domain + imgObj.eq(i).attr('src'));
                imgs.push(imgObj.eq(i).attr('src'));
                imgObj.eq(i).click(function () {
                    var nowImgurl = $(this).attr('src');
                    WeixinJSBridge.invoke("imagePreview", {
                        "urls": imgs,
                        "current": nowImgurl
                    });
                });
            }
        }
    </script>
</head>
<body>
    <form id="form2" runat="server">
    <header class="ui-header">
      <h1>影像结果</h1>
</header>
        <section style="background: none;">
    <ul class="report-detail" style=" border-bottom:1px solid #00c07d; width: 90%; margin: 20px auto; padding-bottom:10px;">
    <%for (var i = 0; i < picCount; i++)
      { %>
        <li>
            <img class="max" src="Pocket_MedicalExaminationReport_PictureDetail.aspx?checkId=<%=checkId %>&imgIndex=<%=i %>" />
        </li>
     <%} %>
    </ul>
        </section>
    </form>
</body>
</html>
