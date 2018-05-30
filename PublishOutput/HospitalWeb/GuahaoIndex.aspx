<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuahaoIndex.aspx.cs" Inherits="TandT.WeixinWeb.HospitalWeb.GuahaoIndex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="js/mui.min.js"></script>
    <link href="css/mui.min.css" rel="stylesheet"/>
    <script type="text/javascript" charset="utf-8">
        mui.init();
    </script>
    <style type="text/css">
    	body{
    		background: #fff;
    		font-family: "微软雅黑";
    		
    	}
    	.list p{
    		width: 80%;
    		text-overflow: ellipsis;
    		overflow: hidden;
    		white-space: nowrap;
    	}
    	.myheader{
    		background: #23a6bb;
    		
    	}
    	.mui-title{
    		color: #fff;
    	}
    	.mui-title img{
    		max-width: 70%;
    		 
    	}
    	.mui-action-back{
    		color: #fff;
    	}
    	.mui-table-view{
    		color:#23a6bb;
    	}
    	.mui-segmented-control-inverted a{
    		padding: 0 5px;
    		font-size: 0.8em;
    		/*background: #23a6bb;*/
    	}
    	.mui-segmented-control.mui-segmented-control-inverted .mui-control-item.mui-active{
    		background: #23a6bb;
    		color: #fff;
    	}
    	.mui-segmented-control.mui-segmented-control-inverted~.mui-slider-progress-bar{
    		background-color: #f90;
    	}
    	.mui-segmented-control .mui-control-item{
    		line-height: 42px;
    display: table-cell;
    overflow: hidden;
    width: 1%;
    -webkit-transition: background-color .1s linear;
    transition: background-color .1s linear;
    text-align: center;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #007aff;
    border-color: #007aff;
    border-left: 1px solid #007aff;
    	}
    </style>
      <link href="css/news.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/slide.css" type="text/css">
    <link rel="stylesheet" href="css/resume.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
  <header class="ui-header">
    
    <h1><span><img src="images/logo.png" /></span></h1>
</header>
	<div id="slider" class="mui-slider" style="margin-top: 44px;">
	 
	  <div class="mui-slider-indicator">
	    <div class="mui-indicator mui-active"></div>
	    <div class="mui-indicator"></div>
	  </div>
	</div>
	<div class="mui-slider">
	    <div class="mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
	        <a class="mui-control-item mui-active" href="#item1">我要约科室</a>
	        <a class="mui-control-item" href="#item2">我要约医生</a>
	        <a class="mui-control-item" href="#item3">我要约时间</a>
	    </div>
	    <div id="sliderProgressBar" class="mui-slider-progress-bar mui-col-xs-4"></div>
	    <div class="mui-slider-group">
	        <div id="item1" class="mui-slider-item mui-control-content mui-active">
	                       <section class="ui-blk">
    <header class="ui-blk-tit">
        <h3>医院</h3>
    </header>
    <div class="ui-blk-cnt jobs-list">
     
       <asp:Repeater ID="rptList1" runat="server">
                                    <ItemTemplate>
        <a href="FistDepart.aspx?id=<%#Eval("id")%>&departName=<%#Eval("name")%>">
            <h4 class="jobs-hd"><%#Eval("name")%></h4>
            <i class="ui-icon btn-more"></i>
        </a>

        </ItemTemplate>
        </asp:Repeater>

       
    </div>
    
    
</section>
	        </div>
	        <div id="item2" class="mui-slider-item mui-control-content">
                <asp:TextBox ID="TextDoctor" runat="server" placeholder="医生姓名或拼音"></asp:TextBox><asp:Button ID="ButtonDoc"
                    runat="server" Text="确定" OnClick="ButtonQueding_Click" />
	        </div>
            <div id="item3" class="mui-slider-item mui-control-content">
	             <input id="Text2" type="text" />
                <input id="Button2" type="button" value="确定" />
	        </div>
	    </div>
	</div>
    </form>
</body>
</html>
