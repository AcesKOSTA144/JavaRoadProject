<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Poll Result</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	// add button style 
	$("[name='poll_bar'").addClass("btn btn-default");
	// Add button style with alignment to left with margin.
	$("[name='poll_bar'").css({"text-align":"left","margin":"5px"});		
	
	//loop 
	$("[name='poll_bar'").each(
			function(i){			
			  //get poll value 	
				var bar_width = (parseFloat($("[name='poll_val'").eq(i).text())/2).toString();					
				bar_width = bar_width + "%"; //add percentage sign.										
				//set bar button width as per poll value mention in span.
				$("[name='poll_bar'").eq(i).width(bar_width);					
				
				//Define rules.
				var bar_width_rule = parseFloat($("[name='poll_val'").eq(i).text());					 
				if(bar_width_rule >= 50){$("[name='poll_bar'").eq(i).addClass("btn btn-sm btn-success")}
				if(bar_width_rule <  50){$("[name='poll_bar'").eq(i).addClass("btn btn-sm btn-warning")}
				if(bar_width_rule <= 10){$("[name='poll_bar'").eq(i).addClass("btn btn-sm btn-danger")}					
  });
});


</script>


</head>
<body>
<div class="panel panel-primary" style="width:80%; margin:20px" >
    <div class="panel-heading">
  	<h3 class="panel-title">
  		투표 결과
    </h3>    
  </div>     
	<div class="panel-body"  style="margin:0px; width:115%;">
	  
	  <div id="Main">
	   <a name="poll_bar">Original </a> <span name="poll_val">60%</span><br/>
       <a name="poll_bar">Copy </a> <span name="poll_val">40%</span><br/>
    </div>
    </div>
    <div class="panel-footer">
      		<button type="button" class="btn btn-success btn-sm" onClick="closePopUp();">
          	<span class="glyphicon glyphicon-ok"></span>Close</button>
  	</div>
    </div>
    		<script>
			    function closePopUp(){
			    	window.close();
			    }
			</script>
</body>
</html>