<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Ticket.demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>超炫酷的jQuery卷轴展开动画DEMO演示</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/zzsc.css"/>
<link rel="stylesheet" type="text/css" href="css/myStyle.css"/>
</head>
<body>
<div class="content">
	<div class="l-pic-index"></div>
	<div class="r-pic-index"></div>
	<div class="l-bg-index"></div>
	<div class="r-bg-index"></div>
	<div class="main-index">
		<p class="intro-text">
			传统音乐是在以典河流域为中心的中原音乐和四域音乐以及外国音乐的交流融合之中形成发展起来的。
		</p>
	</div>
</div>

<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
	 $(document).ready(function(){
			//卷轴展开动画效果
			$(".l-pic-index").animate({'left':'95px','top':'-4px'},1300);
			$(".r-pic-index").animate({'right':'-23px','top':'-5px'},1450);
			$(".l-bg-index").animate({'width':'433px','left':'73px'},1500);
			$(".r-bg-index").animate({'width':'433px','right':'-38px'},1500,function(){
				$(".main-index").fadeIn(800);
			});
		});
</script>

<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
</body>
</html>