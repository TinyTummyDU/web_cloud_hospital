<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery.js"></script>


<script type="text/javascript">
$(document).ready(function(){
   $("#ll").click(function() {
	  var aha = document.getElementById("aha").innerHTML;
	  document.getElementById("lplp").innerHTML = aha;
	  
   });
});
</script>
	
</head>
<body>

<button id = "ll">haha</button>
  <table>
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
                            <tr>
                            	<td id="aha">ahasas</td>
                            	<td id="lplp">lololo</td>
                            	<td>kkaka</td>
                            </tr>
                        </tbody>
         </table>    

</body>




</html>