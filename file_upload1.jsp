<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String u=(String)session.getAttribute("u");
String name=(String)session.getAttribute("name");
String fn=request.getParameter("fn");
String f=request.getParameter("file");
session.setAttribute("f",fn);

String a="";
String fname=a+f;
String fkey=request.getParameter("fkey");
session.setAttribute("fkey",fkey);

		  
		  FileInputStream fis=null;
		  FileOutputStream fout=null,fout1=null,fout2=null;
          File file = new File(fname);
		 
		 
		  double bytes=file.length();
		  double kb=bytes/1024;
		  String kbs=Double.toString(kb);
		  session.setAttribute("kbs",kbs);
		  
		  byte[] bFile = new byte[(int) file.length()];
 
            //convert file into array of bytes
	     fis = new FileInputStream(file);
		 fout = new FileOutputStream("./temp/file1.txt");
		 fout1 = new FileOutputStream("./temp/file2.txt");
		 fout2 = new FileOutputStream("./temp/file3.txt");
		
		int z=fis.available();
		int z1=z/3;
		int z2=z1+z1;
		
	    fis.read(bFile);
	    fis.close();
     
	     for (int i = 0; i <z1; i++) 
	        {
				  fout.write(bFile[i]);
	        
			}
			
			for (int i = z1; i <z2; i++) 
	        {
	            fout1.write(bFile[i]);
	         
            }
		  			
	
      
			 for (int i = z2; i <z; i++) 
			{
	        fout2.write(bFile[i]);
            }

		
	response.sendRedirect("file_upload2.jsp");
%>
</body>
</html>
