<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<title>为指定病人开病历</title>
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
    
    <!-- Left navigation -->
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
        <li class="tables"><a href="tables.html" title="" class="exp"><span>Tables</span><strong>3</strong></a>
            <ul class="sub">
                <li><a href="table_static.html" title="">Static tables</a></li>
                <li><a href="table_dynamic.html" title="">Dynamic table</a></li>
                <li class="last"><a href="table_sortable_resizable.html" title="">Sortable &amp; resizable tables</a></li>
            </ul>
        </li>
        <li class="widgets"><a href="#" title="" class="exp"><span>药房管理</span><strong>3</strong></a>
            <ul class="sub">
                <li><a href="widgets.html" title="">药房发药</a></li>
				<li><a href="widgets.html" title="">药房退药</a></li>
	            <li><a href="widgets.html" title="">药房管理</a></li>
        
            </ul>
        </li>
        <li class="errors"><a href="#" title="" class="exp"><span>Error pages</span><strong>6</strong></a>
            <ul class="sub">
                <li><a href="403.html" title="">403 page</a></li>
                <li><a href="404.html" title="">404 page</a></li>
                <li><a href="405.html" title="">405 page</a></li>
                <li><a href="500.html" title="">500 page</a></li>
                <li><a href="503.html" title="">503 page</a></li>
                <li class="last"><a href="offline.html" title="">Website is offline</a></li>
            </ul>
        </li>
        <li class="files"><a href="file_manager.html" title=""><span>File manager</span></a></li>
        <li class="typo"><a href="#" title="" class="exp"><span>Other pages</span><strong>3</strong></a>
            <ul class="sub">
                <li><a href="typography.html" title="">Typography</a></li>
                <li><a href="calendar.html" title="">Calendar</a></li>
                <li class="last"><a href="gallery.html" title="">Gallery</a></li>
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
    
    <!-- Responsive header -->
    <div class="resp">
        <div class="respHead">
            <a href="index.html" title=""><img src="images/loginLogo.png" alt="" /></a>
        </div>
        
        <div class="cLine"></div>
        <div class="smalldd">
            <span class="goTo"><img src="images/icons/light/home.png" alt="" />Dashboard</span>
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
                <h5>病历号:</h5>
				<h5>${m_r_id}</h5>
            </div>
		</div>
    </div>
    
        <!-- Widgets -->
    <div class="widgets">
    		<form action="diagnose_for_patient">
            <div class="oneTwo">
            
                <!-- Partners list widget -->
				
              		<div class="widget">
                    <div class="title"><img src="images/icons/dark/docs.png" alt="" class="titleIcon" /><h6>病历：</h6>  <input type="submit" value="提交">  </div>
                    <ul class="partners">
                        <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>病历号</strong></a>
                                <i><input id="medical_record_id" type="text" name="medical_record_id" value=${m_r_id }></input></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>主诉</strong></a>
                                <i><input id="patient_description" type="text" name="patient_description"></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>现病史</strong></a>
                                <i><input id="now_disease" type="text" name="now_disease"></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>现病治疗情况</strong></a>
                                <i><input id="now_disease_situation" type="text" name="now_disease_situation"></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>既往史</strong></a>
                                <i><input id="past_disease" type="text" name="past_disease"></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>过敏史</strong></a>
                                <i><input id="allergy" type="text" name="allergy"></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>体格检查</strong></a>
                                <i><input id="examination" type="text" name="examination"></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>中西医</strong></a>
                                <i><select id = "china_west" name= "china_west">
 									<option>中医</option>
 									<option>西医</option>
									</select>
								</i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>初步诊断</strong></a>
                                <i><input id="initial_diagnose" type="text" name="initial_diagnose"></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>检查建议</strong></a>
                                <i><input id="examination_suggestion" type="text" name="examination_suggestion"></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
						   <li>
                            <a href="#" title="" class="floatL"><img src="images/icons/dark/doc.png" alt="" /></a>
                            <div class="pInfo">
                                <a href="#" title=""><strong>注意事项</strong></a>
                                <i><input id="note" type="text" name="note"></i>	
                            </div>
                            <div class="clear"></div>
                        </li>
                    </ul>
                    
                   	
             
            	 </form>
            
             </div>
           <div class="clear"></div>
    </div>
    

    

    <!-- Footer line -->
        <div id="footer">
        <center><h3>东软云医院HIS系统--have right on DYQ</h3></center>
    </div>

	

<div class="clear"></div>

</body>
</html>