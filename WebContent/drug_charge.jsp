<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>医生诊断</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

<link href="./css/main.css" rel="stylesheet" type="text/css" />
	
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	
  <!--  /* 	var txt = '{"lists":' +data +' }';
            	var obj = eval ("(" + txt + ")"); */
            	var myarr = JSON.parse(data);
     		/* 	var total_price = 0;
            	for (i = 0; i < obj.lists.length; i++) { 
            		var lang = "<tr><td></td><td align='center'><a href='images/big.png'rel='lightbox'><img src='images/icons/dark/tag.png' /></a></td><td>";
            		var id = obj.lists[i].drug_id ;
            		var lang0 = "</td> <td align= 'center' >";
              		var name = obj.lists[i].drug_name;
               		var lang1 = "</td><td align='center'>";
            		var amount = obj.lists[i].drug_amount;
					var amount1 = Number(amount); // 234
            		var lang2 = "</td><td align='center'>";
            		var price = obj.lists[i].drug_price;
					var price1 = Number(price); // 234
					var drug_price = amount1*price1;
					total_price += drug_price;
            		var lang3 = "</td></tr>";
            		var youle = lang + id + lang0 + name + lang1 + amount + lang2 +price+ lang3;
            		$("#drugs").append(youle);
            		
            	 }; */ -->

<script type="text/javascript">
$(document).ready(function(){
   $("#button1").click(function() {
	  var page = "drug_charge";
	  var medical_record_id = $("#medical_record_id").val();
	  $.ajax({
			datatype : "json",
		 	type: "POST",
            url: page,
            data: { // 提交数据
                "medical_record_id": medical_record_id,// 前者为字段名，后者为数据
            },
            contentType: "application/x-www-form-urlencoded; charset=utf-8", 
            success: function(data) {
            	 var myarr = JSON.parse(data);
            	 var total_price = 0;
             	 for (i = 0; i < myarr.length; i++) { 
             		var lang = "<tr><td></td><td align='center'><a href='images/big.png'rel='lightbox'><img src='images/icons/dark/tag.png' /></a></td><td>";
             		var id = myarr[i].drug_id ;
             		var lang0 = "</td> <td align= 'center' >";
               		var name = myarr[i].drug_name;
                	var lang1 = "</td><td align='center'>";
             		var amount = myarr[i].drug_amount;
 					var amount1 = Number(amount); // 234
             		var lang2 = "</td><td align='center'>";
             		var price = myarr[i].drug_price;
 					var price1 = Number(price); // 234
 					var drug_price = amount1*price1;
 					total_price += drug_price;
             		var lang3 = "</td></tr>";
             		var youle = lang + id + lang0 + name + lang1 + amount + lang2 +price+ lang3;
             		$("#drugs").append(youle);
             	 };
            	document.getElementById("totalprice").innerHTML = total_price;
            },
            error : function(data) {
                alert("失败");
            }
	  	});
   });
});
</script>
	
	
<script type="text/javascript">
$(document).ready(function(){
   $("#button2").click(function() {
	  var page = "drug_charge";
	  var medical_record_id1 = $("#medical_record_id").val();
	  $.ajax({
			datatype : "json",
		 	type: "POST",
            url: page,
            data: { // 提交数据
                "medical_record_id1": medical_record_id1,// 前者为字段名，后者为数据
            },
            success: function(data){
            	alert("缴费成功");
            	window.location.href = 'index2.jsp';
            }
	  	});
   });
});
</script>

</head>
	
<body>
<!-- Left side content -->
<div id="leftSide">
    <div class="logo"><a href="index2.jsp">
    <h2>东软云医院HIS系统</h2>
</a></div>

    <div class="sidebarSep"></div>

    <!-- General balance widget -->
    <div class="genBalance">
        <a href="#" title="" class="amount">
            <span>Current Time</span>
            <span class="balanceAmount"><p id="current_time"></p>
									   <script> 
									   document.getElementById("current_time").innerHTML = new Date();</script>
																					  </span>
        </a>

    </div>
    
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
		</div>
    </div>
    

    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
              <h5>取药缴费</h5>
              <span>请输入病例号！</span>
			 <span> <input type="text" id="medical_record_id"></input></span>
			<br>
			<span><button type="button" id = "button1" >查看缴费信息</button></span>
			</div>
		        <!-- Media table -->
			<div class="widget">
            <div class="title"><span class="titleIcon"><input type="checkbox" id="titleCheck" name="titleCheck" /></span>
				<h6>药品总价： </h6> <h6 id = "totalprice"></h6> 
			</div>
            
		<table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="checkAll">
                <thead>
                    <tr>
                        <td><img src="images/icons/tableArrows.png" alt="" /></td>
                        <td>Image</td>
                        <td class="sortCol"><div>id<span></span></div></td>
                        <td class="sortCol"><div>name<span></span></div></td>
                        <td class="sortCol"><div>amount<span></span></div></td>
                        <td>price</td>
                        
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <td colspan="6">
                            <div class="itemActions">
    							<button id = "button2" type="button" > 确认缴费 </button>
                            </div>
                            <div class="tPagination">
                                <ul>
                                    <li class="prev"><a href="#" title=""></a></li>
                                    <li><a href="#" title="">1</a></li>
                                    <li><a href="#" title="">2</a></li>
                                    <li><a href="#" title="">3</a></li>
                                    <li><a href="#" title="">4</a></li>
                                    <li><a href="#" title="">5</a></li>
                                    <li><a href="#" title="">6</a></li>
                                    <li>...</li>
                                    <li><a href="#" title="">20</a></li>
                                    <li class="next"><a href="#" title=""></a></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                </tfoot>
                
                <tbody id="drugs">
<!--        				 一会要添加药品-->
                    	
                </tbody>
            </table>
      </div>
		
		
		
        </div>
    </div>

    

    

    

    


</body>
</html>