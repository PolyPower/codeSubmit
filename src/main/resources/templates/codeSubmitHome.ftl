<html>

<head>

<style>
	#header
	{
		background-color:black;
		color:red;
		text-align:center;
		padding:5px;
	}
	#footer
	{
		background-color:black;
		color:red;
		text-align:center;
		padding:5px;
	}
	
	table
	{ 
		 align="center";
		 border: 1px solid black; 
	}	
	th
	{
		padding: 5px;
    	text-align: left;
    	color: white;
       	border: 1px solid black;
       	background-color: DimGray;       				 
	}
	td
	{
		padding: 5px;
    	text-align: left;
       	border: 1px solid black;	
       	color: DimGray;	
    }
    nav
    {
      border:1px solid red;
      border-width:1px 0;
      list-style:none;
      margin:0;
      padding:0;
      text-align:right;
    
    }

    <title><h2> CodeSubmit </h2></title>    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>    
    <script src="/js/home-control.js"></script>
	
</style>
</head>


<body background= url("background.png")>

    <div id="header">
    	<h2><h2>CodeSubmit<span style="color:while;font-weight:bold"><sub>.com</sub></span></h2>              
    </div><br>
    <div>
   		<nav>
   			
			<a href="/about" target="_self">About</a> |
			<a href="/cs480/codeSubmitHome" target="_self">Archives</a> |
			<a href="/cs480/news">News</a> |
			<a href="/cs480/AdminHome"  target="_self">AdminHome</a> |
			<a href="/cs480/codeSubmit/login" target="_self">Register</a> |
			<a href="/cs480/codeSubmit" target="_self">Code Submit</a> |
		</nav>	
  	   		
	</div><br><br>
		</div><br>
        <div>
       <table border = "1" align = "center" >
          <tr> 
             <td>UserName : </td>
             <td>
			        <form method = "POST" enctype = "multipart/form-data" action = "/cs480/codeSubmit/login">
		     		<input type ="text" id = "userId" name = "userId" required>
		     		<input type = "submit" value = "Submit" >
		     		</form>
		     </td>
       </table>
    </div>
    
    
   	<fieldset>
	  <legend>  <h2 style="color:red">Problems Archives</h2></legend>
	 	The problems archives table shows problems you would like to tackle.
		Click the description/title of the problem to view details.
	 </fieldset>    
    <br><br>
    
     <div> 
  
           <table align="center" width="50%">
            <tr>
                <th> Term </th>
                <th> Week </th>	
                <th> ProblemID </th>
				<th> Decription/Title </th>					
			</tr>	
	</div>		
			
			<#list problems as problem>
				<tr>
					<td>${problem.term}</td>
					<td>${problem.week}</td>						
					<td>${problem.problemId}</td>
					<td><a href="http://localhost:8080/problem/${problem.problemId}/download" target="_blank">${problem.fileName}</td> 
		        
				</tr>
			</#list>
		</table>
      </div>
      
<br><br><br><br><br><br><br><br><br>
   <div id="footer">
    	<a href="/cs480/contactUs" target="_self">Contact us</a> 
    	<br>
    	Copypright © PolyPower
    	<a href="http://codesubmit.com" target="_self"></a> 
    </div>	   
       
 
    
</body>

</html>