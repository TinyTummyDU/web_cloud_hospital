<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<title>为病人开处方</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="js/plugins/spinner/jquery.mousewheel.js"></script>

<script type="text/javascript" src="js/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/plugins/charts/excanvas.min.js"></script>
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

<script type="text/javascript" src="js/plugins/calendar.min.js"></script>
<script type="text/javascript" src="js/plugins/elfinder.min.js"></script>

<script type="text/javascript" src="js/custom.js"></script>


	
<script type="text/javascript">
function look_template(obj){
	  var prescription_id = obj.getAttribute("id");
	  var page = "create_prescription1";
	  $.ajax({
			datatype : "json",
		 	type: "POST",
            url: page,
            data: { // 提交数据
                "prescription_id": prescription_id
            },
            success: function(data){
                    var txt = '{"lists":' +data +' }';
               		var obj = eval ("(" + txt + ")");
               		for (i = 0; i < obj.lists.length; i++) { 
               			var lang = "<tr><td><span class='green f11'>";
               			var name = obj.lists[i].drug_name;
               			var lang1 = "</span></td> <td><span class='green f11'>";
             			var amount = obj.lists[i].drug_amount;
             			var lang2 = "</span></td> <td><span class='green f11'>";
              			var price = obj.lists[i].drug_price;
              			var lang3 = "</span></td></tr>";
               			var youle = lang + name + lang1 + amount + lang2 +price+ lang3;
               			$("#target_prescription_drugs").append(youle);
           			 };
					document.getElementById('use_this_template').id=prescription_id; 

            },
		  	error:function(){
		  		alert("查看模版错误");
	  		}
	  	});
}
</script>
	
<script type="text/javascript">
function use_template(obj){
	  var prescription_id = obj.getAttribute("id");
	  alert(prescription_id);
	  var page = "create_prescription1";
	  var all_drug_amount = Number(document.getElementById("all_drug_amount").innerHTML);
	  $.ajax({
			datatype : "json",
		 	type: "POST",
            url: page,
            data: { // 提交数据
                "prescription_id": prescription_id,// 前者为字段名，后者为数据
            },
            success: function(data){
                    var txt = '{"lists":' +data +' }';
               		var obj = eval ("(" + txt + ")");
               		for (i = 0; i < obj.lists.length; i++) { 
               			var lang = "<tr id= '" ;
						var id_tr = obj.lists[i].drug_id+"tr";
						var lang1 = "'><td>";
						var id = obj.lists[i].drug_id;
						var lang2 = "</td><td>";
               			var name = obj.lists[i].drug_name;
               			var lang3 = "</td> <td> <input class='amount_input' value = ' ";
	
             			var amount = obj.lists[i].drug_amount;
						
             			var lang4 = " '> </input></td> <td>";
              			var price = obj.lists[i].drug_price;
              			var lang5 = "</td><td><button class='delete' onclick='delete_drug(this)' id='";
						
						var lang6 = "'>删除</td></tr>";			
               			var youle = lang + id_tr + lang1 + id +lang2+  name + lang3 +amount +lang4 + price + lang5+id+lang6;
               			$("#now_drugs").append(youle);
						all_drug_amount += 1;
						
           			 };	
					 document.getElementById("all_drug_amount").innerHTML = all_drug_amount;
            },
		  	error:function(){
		  		alert("使用模版错误");
	  		}
	  	});
}
</script>
		
<script type="text/javascript">
function delete_drug(obj){
	  alert("delete");
	  var drug_id = obj.getAttribute("id");
	  var all_drug_amount = Number(document.getElementById("all_drug_amount").innerHTML)-1;
	  var de = "#"+ drug_id+"tr"
 	  $(de).remove(); 
/* 	  $("#11tr").remove(); */
	  document.getElementById("all_drug_amount").innerHTML = all_drug_amount;
}
</script>

<script type="text/javascript">
function use_drug(obj){
	 alert("到了use_drug");
	  var drug_id = obj.getAttribute("id");
	  var page = "create_prescription1";
	  var all_drug_amount = Number(document.getElementById("all_drug_amount").innerHTML)+1;
	  var index = all_drug_amount-1;
	  $.ajax({
			datatype : "json",
		 	type: "POST",
            url: page,
            data: { // 提交数据
                "drug_id": drug_id,// 前者为字段名，后者为数据
            },
            success: function(data){
               			var drug = JSON.parse(data);
               			var lang = "<tr  class='";
               			
               			var lang0 ="' id='>";
               			var id = drug.drug_id;
						var lang1 = "'><td class='0'>";
			
						var lang2 = "</td><td class ='1'>";
               			var name = drug.drug_name;
               			var lang3 = "</td> <td class='2' ><input class='amount_input'>";

             			var lang4 = "</input></td> <td class='3'>";
              			var price = drug.drug_price;
              			var lang5 = "</td><td><button class='delete' id ='";
						
						var lang6 = "' onclick='delete_drug(this)'>删除</td></tr>";			
               			var youle = lang + index + lang0 + id + lang1+id+lang2+  name + lang3 +lang4 + price + lang5+id+lang6;
               			$("#now_drugs").append(youle);
						document.getElementById("all_drug_amount").innerHTML = all_drug_amount;
           		
            },
		  	Error:function(data){
				alert("添加药品错误");
			}
	  	});
	}
</script>

	
	
	
<script type="text/javascript">
$(document).ready(function(){
   $("#submit_drugs").click(function() {
	 /*  var max_index = Number(document.getElementById("all_drug_amount").innerHTML)-1;
	  alert(max_index);
	  var m_r_id = document.getElementById("medical_record_id").value;
	  alert(m_r_id);
	  var p_id = m_r_id;
	  var p_name = document.getElementById("prescription_name").value;
	  alert(p_name);
	  var p_time = document.getElementById("prescription_time").value;
	  alert(p_time);
	  var page ="create_prescription1";
	  var drugs = new Array(); 
	  for (var i=0;i<max_index+1;i++)
	  	{ 
		  	alert(i);
			var drug = {id:"lala",name:"",num:"",price:""};
			var tr = "tr."+i;
			alert(tr);
			var tr1 = $("#now_drugs").children(tr).children("td.0");
			
			alert(tr1.innerHTML);
			alert(drug.id)
			drug.id = $("#now_drugs").children(tr).children("td.0").value;
		  	alert(drug.id);
			drug.name = $("#now_drugs").children(tr).children("td.1").innerHTML;
		  	alert(drug.name);
			drug.num = $("#now_drugs").children(tr).children("td.2").find("input").value;
		  	alert(drug.num);
			drug.price = $("#now_drugs").children(tr).children("td.3").innerHTML;
		  	alert(drug.price);
			drugs[i]=drug;
			
		};
	   var prescription = {id:m_r_id,name:p_name,time:p_time};
	   var drugs_json = JSON.Stringify(drugs); */
	   
/* 	    $.ajax({
			datatype : "json",
		 	type: "POST",
            url: page,
            data: { // 提交数据
                "prescription_json": prescription_json,// 前者为字段名，后者为数据
            	"drugs_json":drugs_jsons
			},
            success: function(data){
               			alert("开立处方成功！");
           		
            },
            error:function(data){
            	alert("wocao");
            } */
			alert("成功");
        	window.location.href = 'index2.jsp';
/* 	  	}); */
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


    
    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="forms"><a href="#" title="" class="exp"><span>挂号收费</span><strong>4</strong></a>
            <ul class="sub">
                <li><a href="register2.jsp" title="">挂号</a></li>
                <li><a href="form_validation.html" title="">退号</a></li>
                <li><a href="drug_charge.jsp" title="">药品缴费</a></li>
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
            <div class="welcome"><a href="#" title=""><img src="images/userPic.png" alt="" /></a><span>id : 3</span></div>
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
    
    
    <!-- Responsive header -->
    <div class="resp">
        <div class="respHead">
            <a href="index.html" title=""><img src="images/loginLogo.png" alt="" /></a>
        </div>
        
        <div class="cLine"></div>
        <div class="smalldd">
            <span class="goTo"><img src="images/icons/light/frames.png" alt="" />Content widgets</span>
            <ul class="smallDropdown">
                <li><a href="index.html" title=""><img src="images/icons/light/home.png" alt="" />Dashboard</a></li>
                <li><a href="charts.html" title=""><img src="images/icons/light/stats.png" alt="" />Statistics and charts</a></li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/pencil.png" alt="" />Forms stuff<strong>4</strong></a>
                    <ul>
                        <li><a href="forms.html" title="">Form elements</a></li>
                        <li><a href="form_validation.html" title="">Validation</a></li>
                        <li><a href="form_editor.html" title="">WYSIWYG and file uploader</a></li>
                        <li class="last"><a href="form_wizards.html" title="">Wizards</a></li>
                    </ul>
                </li>
                <li><a href="ui_elements.html" title=""><img src="images/icons/light/users.png" alt="" />Interface elements</a></li>
                <li><a href="tables.html" title="" class="exp"><img src="images/icons/light/frames.png" alt="" />Tables<strong>3</strong></a>
                    <ul>
                        <li><a href="table_static.html" title="">Static tables</a></li>
                        <li><a href="table_dynamic.html" title="">Dynamic table</a></li>
                        <li class="last"><a href="table_sortable_resizable.html" title="">Sortable &amp; resizable tables</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/fullscreen.png" alt="" />Widgets and grid<strong>2</strong></a>
                    <ul>
                        <li><a href="widgets.html" title="">Widgets</a></li>
                        <li class="last"><a href="grid.html" title="">Grid</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/alert.png" alt="" />Error pages<strong>6</strong></a>
                    <ul class="sub">
                        <li><a href="403.html" title="">403 page</a></li>
                        <li><a href="404.html" title="">404 page</a></li>
                        <li><a href="405.html" title="">405 page</a></li>
                        <li><a href="500.html" title="">500 page</a></li>
                        <li><a href="503.html" title="">503 page</a></li>
                        <li class="last"><a href="offline.html" title="">Website is offline</a></li>
                    </ul>
                </li>
                <li><a href="file_manager.html" title=""><img src="images/icons/light/files.png" alt="" />File manager</a></li>
                <li><a href="#" title="" class="exp"><img src="images/icons/light/create.png" alt="" />Other pages<strong>3</strong></a>
                    <ul>
                        <li><a href="typography.html" title="">Typography</a></li>
                        <li><a href="calendar.html" title="">Calendar</a></li>
                        <li class="last"><a href="gallery.html" title="">Gallery</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="cLine"></div>
    </div>
    
    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>您当前处理的病历id为： ${medical_record_id} </h5>
                <span>为其开出处方：</span>
            </div>
            <div class="middleNav">
                <ul>
                    <li class="mUser"><a href="#" title=""><span class="users"></span></a>
                        <ul class="mSub1">
                            <li><a href="#" title="">Add user</a></li>
                            <li><a href="#" title="">Statistics</a></li>
                            <li><a href="#" title="">Orders</a></li>
                        </ul>
                    </li>
                    <li class="mMessages"><a href="#" title=""><span class="messages"></span></a>
                        <ul class="mSub2">
                            <li><a href="#" title="">New tickets<span class="numberRight">8</span></a></li>
                            <li><a href="#" title="">Pending tickets<span class="numberRight">12</span></a></li>
                            <li><a href="#" title="">Closed tickets</a></li>
                        </ul>
                    </li>
                    <li class="mFiles"><a href="#" title="Or you can use a tooltip" class="tipN"><span class="files"></span></a></li>
                    <li class="mOrders"><a href="#" title=""><span class="orders"></span><span class="numberMiddle">8</span></a>
                        <ul class="mSub4">
                            <li><a href="#" title="">Pending uploads</a></li>
                            <li><a href="#" title="">Statistics</a></li>
                            <li><a href="#" title="">Trash</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
<!-- Page statistics area -->
    <div class="statsRow">
        <div class="wrapper"> </div>
    </div>
    
    <div class="line"></div>
    
    <!-- Main content wrapper -->
    <div class="wrapper">
    
        <!-- Note -->
        <div class="nNote nInformation hideit">
            <p><strong>NOTE: </strong>可以使用模版处方再加以修改</p>
        </div>
        
        <!-- Widgets -->
        <div class="widgets">
            <div class="oneTwo">
            
				
              		<div class="widget">
                    <div class="title"><img src="images/icons/dark/docs.png" alt="" class="titleIcon" /><h6>请为该病人填写处方：</h6>  <button id="submit_drugs">提交</button> </div>
                    <ul class="partners">
                        <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>病历号</strong></a>
                                <i><input id="medical_record_id" type="text" name="medical_record_id"></input></i>	
                            </div>
							<script>
									document.getElementById("medical_record_id").value = ${medical_record_id};
							</script>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>处方名称</strong></a>
                                <i><input id="prescription_name" type="text" name="prescription_name"></input></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo"><a href="#"><strong>创建时间</strong></a> <em>
                              <input id="prescription_time" type="date" name="prescription_time">
                            </em><script>
							var date = new Date();
							var year = date.getFullYear();
							var month = date.getMonth()+1;
							var day = date.getDate();		
							document.getElementById("prescription_time").value = year +','+ month+','+day;
			
							</script>
			
                            </div>
                            <div class="clear"></div>
                        </li>
						   
                    </ul>
                    
                   	
             
            	 </form>
            
             </div>
               
                
            
                <!-- Website stats widget -->
                <div class="widget">
                    <div class="title"><img src="images/icons/dark/stats.png" alt="" class="titleIcon" /><h6>当前药品明细：</h6>
					<h6 hidden="hidden" id="all_drug_amount">0</h6>
					</div>
                    <table cellpadding="0" cellspacing="0" width="100%" class="sTable">
                        <thead>
                            <tr>
                             	<td>药品id</td>
                                <td>药品名称</td>
								<td>药品数量</td>
								<td>药品价格</td>
                                <td width="80">删除药品</td>
                            </tr>
                        </thead>
                        <tbody id="now_drugs">
                            
                        </tbody>
                    </table>    
                </div>
                
            	
            	
              
           
              
                              
            </div>
        
        	<!-- 2 columns widgets -->
            <div class="oneTwo">
            
            	<!-- Big buttons as widgets -->
            	
                <div class="oneTwo"></div>
                <div class="clear"></div>
            
                <!-- Search -->
                <div class="searchWidget">
                    <form action="">
                        <input type="text" name="search" placeholder="输入药品信息..." />
                        <input type="submit" name="find" value="" />
                    </form>
                </div>
            
                <!-- Purchase info widget -->
                <!-- Toggles group -->
                <div class="toggle">
                    <div class="title closed" id="toggleOpened"><img src="images/icons/dark/link2.png" alt="" class="titleIcon"/><h6>常用药品</h6><div class="clear"></div></div>
                    <div class="body">
						<table cellpadding="0" cellspacing="0" width="100%" class="sTable taskWidget">
              		 	 <thead>
                   		 <tr>
                 			  <td>药品id</td>
                      		  <td>药品名称</td>
							  <td>包装单位</td>
							  <td>价格</td>
							  <td>操作</td>
                      
                    	</tr>
                		</thead>
               			  <tbody>
                        
                       			 <c:forEach items="${common_drugs}" var="common_drugs" varStatus="vs">  
        				 			<tr>
										<td>${common_drugs.drug_id}</td>
        				 	  			<td>${common_drugs.drug_name}</td>
        				 	  			<td>${common_drugs.paking_unit}</td>
										<td>${common_drugs.drug_price}</td>
        				 	  			<td><button type = "button" class="use_this_drug"  id= ${common_drugs.drug_id } onclick="use_drug(this)" >添加</button></td>
                    				</tr>
                    			</c:forEach>
                        
                       		 </tbody>
							<tfoot>
                    		<tr>
                      
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
                        		
                    		</tr>
               			 </tfoot>
              				
            		</table>
									
					
					
					
					
					</div>
                    
                   
                    <div class="title closed"><img src="images/icons/dark/key.png" alt="" class="titleIcon" /><h6>处方模版</h6></div>
                    <div class="body">
						
					<table cellpadding="0" cellspacing="0" width="100%" class="sTable taskWidget">
                        <thead>
                            <tr>
                                <td>处方名称</td>
                                <td width="100">处方id</td>
                                <td width="60">操作</td>
                            </tr>
                        </thead>
                        <tbody>
                        
                        <c:forEach items="${prescription_templates}" var="prescription_templates" varStatus="vs">  
        				 <tr>
        				 	  <td class="taskPr"><a href="#" title="">${prescription_templates.prescription_name}</a></td>
        				 	  <td><span class="green f11">${prescription_templates.prescription_id}</span></td>
        				 	  <td class="actBtns"><button type = "button" class="look_this_template"  id=${ prescription_templates.prescription_id } onclick="look_template(this)">查看该模版</button></td>
                    	</tr>
                    	</c:forEach>
                        
                        </tbody>
                    </table>      
					
					</div>
                </div>

                
            	<!-- My tasks table widget -->
                <div class="widget">
                    <div class="title"><img src="images/icons/dark/timer.png" alt="" class="titleIcon" /><h6>模版名称：</h6><div class="num"><button type = "button" class="use_this_template" id="use_this_template" onclick="use_template(this)">使用该模版</button></div></div>
					<table cellpadding="0" cellspacing="0" width="100%" class="sTable taskWidget">
                        <thead>
                            <tr>
                                <td>药品名称</td>
                                <td width="100">药品数量</td>
                                <td width="60">药品价格</td>
                            </tr>
                        </thead>
                        <tbody id="target_prescription_drugs">
                   
                            
                        </tbody>
                    </table>      
					
                          
                </div>
        		
            
                
              
               
               
            </div>
            <div class="clear"></div>
        </div>
    	
    </div>
    
    <!-- Footer line -->
    <div id="footer">
        <div class="wrapper">东软HIS系统--have right by 杜昱奇</div>
    </div>

</div>

<div class="clear"></div>

</body>
</html>