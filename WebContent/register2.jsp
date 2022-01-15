<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<title>东软云医院HIS系统</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="./css/main.css" rel="stylesheet" type="text/css" />
	
<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="js/plugins/spinner/jquery.mousewheel.js"></script>

<script type="text/javascript" src="js/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/plugins/charts/excanvas.min.js"></script>
<script type="text/javascript" src="js/plugins/charts/jquery.flot.js"></script>
<script type="text/javascript" src="js/plugins/charts/jquery.flot.orderBars.js"></script>
<script type="text/javascript" src="js/plugins/charts/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/plugins/charts/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/plugins/charts/jquery.sparkline.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/uniform.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.cleditor.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.validationEngine.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/autogrowtextarea.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.dualListBox.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/chosen.jquery.min.js"></script>

<script type="text/javascript" src="js/plugins/wizard/jquery.form.js"></script>
<script type="text/javascript" src="js/plugins/wizard/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/plugins/wizard/jquery.form.wizard.js"></script>

<script type="text/javascript" src="js/plugins/uploader/plupload.js"></script>
<script type="text/javascript" src="js/plugins/uploader/plupload.html5.js"></script>
<script type="text/javascript" src="js/plugins/uploader/plupload.html4.js"></script>
<script type="text/javascript" src="js/plugins/uploader/jquery.plupload.queue.js"></script>

<script type="text/javascript" src="js/plugins/tables/datatable.js"></script>
<script type="text/javascript" src="js/plugins/tables/tablesort.min.js"></script>
<script type="text/javascript" src="js/plugins/tables/resizable.min.js"></script>

<script type="text/javascript" src="js/plugins/ui/jquery.tipsy.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.progress.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.colorpicker.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.jgrowl.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.breadcrumbs.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.sourcerer.js"></script>
<script type="text/javascript" src="js/charts/chart.js"></script>

<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->
	</head>
	
<body>
<!-- Left side content -->
<div id="leftSide">
    <div class="logo"><a href="index2.jsp">
    <h2>东软云医院HIS系统</h2>
</a></div>

    <div class="sidebarSep"></div>

    
        <ul id="menu" class="nav">
        <li class="forms"><a href="#" title="" class="exp"><span>挂号收费</span><strong>4</strong></a>
            <ul class="sub">
                <li><a href="register2.jsp" title="">挂号</a></li>
                <li><a href="form_validation.html" title="">退号</a></li>
                <li><a href="form_editor.html" title="">药品缴费</a></li>
				<li><a href="form_editor.html" title="">退药</a></li>
             
            </ul>
      </li>
        <li class="ui"><a href="ui_elements.html" title=""><span>门诊医生</span><strong>4</strong></a></li>
		<ul class="sub">
                <li><a href="diagnose2.jsp" title="">门诊病历</a></li>
                <li><a href="form_validation.html" title="">西药模块管理</a></li>
                <li><a href="form_editor.html" title="">西药处方模块</a></li>
				<li><a href="form_editor.html" title="">中药处方模块</a></li>
          
      </ul>
       
        <li class="widgets"><a href="#" title="" class="exp"><span>药房管理</span><strong>3</strong></a>
            <ul class="sub">
                <li><a href="widgets.html" title="">药房发药</a></li>
				<li><a href="widgets.html" title="">药房退药</a></li>
	            <li><a href="widgets.html" title="">药房管理</a></li>
        
            </ul>
        </li>
       
       
    </ul>
</div>

<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <div class="topNav">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="images/userPic.png" alt="" /></a><span>id : ${administrator.id}</span></div>
            <div class="userNav">
                <ul>
                    <li><a href="#" title=""><img src="images/icons/topnav/profile.png" alt="" /><span>用户</span></a></li>
                    <li class="dd"><a title=""><img src="images/icons/topnav/messages.png" alt="" /><span>消息</span><span class="numberTop">8</span></a>
                        <ul class="userDropdown">
                            <li><a href="#" title="" class="sAdd">new message</a></li>
                            <li><a href="#" title="" class="sInbox">inbox</a></li>
                            <li><a href="#" title="" class="sOutbox">outbox</a></li>
                            <li><a href="#" title="" class="sTrash">trash</a></li>
                        </ul>
                    </li>
                    <li><a href="#" title=""><img src="images/icons/topnav/settings.png" alt="" /><span>设置</span></a></li>
                    <li><a href="login.html" title=""><img src="images/icons/topnav/logout.png" alt="" /><span>退出</span></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    
    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>挂号</h5>
                <span>请填写您的相关信息！</span>
            </div>
		</div>
    </div>
   
    <!-- Main content wrapper -->
	<div class="wrapper">
    
        <!-- Note -->
        <!-- Chart -->
        <div class="widget chartWrapper"> </div>
        
        <!-- Widgets -->
    <div class="widgets">
            <div class="oneTwo">
			<form action="register2">
			<ul>
			<li>挂号单id：<input id="registration_record_id" type="text" name="registration_record_id"></li>
		<%-- 	<br>病历号：${administrator.id} --%>
	
			<li>病历号:<input id="medical_record_id" type="text" name="medical_record_id"></li>

  			<li>身份证号 ：<input id="identity" type="text" name="identityNumber" onblur="check_identity_validity()"></li> 
			<li><p id="react_to_identity"></p></li>
			<script>
			function check_identity_validity() {
 			 var x, text;
  			x = document.getElementById("identity").value;
  			if (isNaN(x) || x < 0 )  {		// 如果 x 不是数或小于0
   			 	text = "输入无效";
   			 	document.getElementById('identity').value = ""  //清空身份证输入框
 			 } else {
    			text = "输入有效";
    		 	var year = x.slice(6,10);
				var month = x.slice(10,12);
				var day = x.slice(12,14);	
				var birth1 = year+','+month+','+day;
				document.getElementById("birth").value = birth1;  //自动算出出生日期
				document.getElementById("age").value = 2019-year; //自动算出年龄 
 			 }
 			 document.getElementById("react_to_identity").innerHTML = text;
			}
			</script>
    		
    		<li>姓名： <input type="text" name="p_name" "></li>
    		<li>性别：<select name= "p_gender">
 			<option>男</option>
 			<option>女</option>
			</select></li>
			<li>出生日期 <input id="birth" type="text" name="p_birth"></li>
			<li>年龄： <input id="age" type="text" name="p_age" "></li>
			<li>家庭住址  <input type="text" name="p_address"></li>
			<li>本次看诊日期：<input id="demo" type="date" name="now_date"></li>
			<script>
			var date = new Date();
			var year = date.getFullYear();
			var month = date.getMonth()+1;
			var day = date.getDate();
			document.getElementById("demo").value = year +','+ month+','+day;
			/* document.getElementById("demo").value = new Date(); */
			</script>
			<li>午别
			<select name= "morning_afternoon">
 			<option>上午</option>
 			<option>下午</option>
			</select></li>
			<li>结算类型 	<input type="text" name="pay_type"></li>
			<li>科室 	<input type="text" name="dept_name"></li>
			<li>医生 	<input type="text" name="doc_name"></li>
			<li>挂号级别 	<input type="text" name="registration_level">
			<li>病历本要否 	<input type="text" name="need_medical_record_book"></li>
   			 <li><input type="submit" value="挂号"></li>
			</ul>
			</form>
				
				
            </div>
          
        
        	<!-- 2 columns widgets -->
            
            <div class="clear"></div>
        </div>
	
  	<!-- Footer line -->
    <div id="footer">
        <center><h3>东软云医院HIS系统--have right on 杜昱奇</h3></center>
    </div>

</div>

<div class="clear"></div>

</body>
</html>