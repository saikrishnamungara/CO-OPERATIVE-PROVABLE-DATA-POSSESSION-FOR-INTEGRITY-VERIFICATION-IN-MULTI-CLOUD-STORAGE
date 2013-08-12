<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,databaseconnection1.*,databaseconnection2.*,databaseconnection3.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

	zenlike1.0 by nodethirtythree design
	http://www.nodethirtythree.com

-->
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>Multi Cloud</title>

<script type="text/javascript">

function valid()
{
if(document.s.decrypt.checked==false)
{
alert("File Not Decrypt");
return false;
}
}
</script>
<style type="text/css">
textarea
   {
	border: 3px solid green;
	padding: 5px;
	background-color:#F4FFF4;
	}
.b:hover
{
border-size:3px;
border-color:red;
}
.b1
{
background-color: #color;
border-bottom:solid;
border-left: #FFEEEE;
border-right:solid;
border-top: #EEEEEE;
color: brown;
font-family: Verdana, Arial
}
</style>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="default.css" />
</head>
<body>
<%
/*String u=(String)session.getAttribute("u");
String name=(String)session.getAttribute("name");
String f=(String)session.getAttribute("f");
String kbs=(String)session.getAttribute("kbs");
*/
	String fid =request.getQueryString();
	session.setAttribute("fid",fid);
	String name=(String)session.getAttribute("name");
	//System.out.println(fid);
	Blob file1= null,file2=null,file3=null;
	String data1=null,data2=null,data3=null,fn=null,fs=null;
	Connection con = null,con1 = null,con2 = null;
	PreparedStatement ps = null,ps1 = null,ps2 = null;
	ResultSet rs = null,rs1 = null,rs2 = null;
		

	
	try
	{
		 con=databasecon1.getconnection();

		ps = con.prepareStatement("select * from filestore where fid ='"+fid+"'");
		rs = ps.executeQuery();
		while(rs.next())
		{
		fn=rs.getString(4);
		fs=rs.getString(5);
		
		file1=rs.getBlob(6);
		}
		
		session.setAttribute("resumeBlob1",file1);
		
		
		byte[] bdata = file1.getBytes(1, (int)file1.length());
        data1 = new String(bdata);
        
	
	}
		catch(Exception e)
	{
	System.out.println("Exception :"+e);
	}
	
	try
	{
		con1=databasecon2.getconnection();
		ps1 = con1.prepareStatement("select * from filestore where fid ='"+fid+"'");
		rs1 = ps1.executeQuery();
		while(rs1.next())
		{
		
		file2=rs1.getBlob(6);
		}
		
	session.setAttribute("resumeBlob2",file2);
		
		byte[] bdata1 = file2.getBytes(1, (int)file2.length());
        data2 = new String(bdata1);
        
	
	}
		catch(Exception e1)
	{
	out.println("Exception :"+e1);
	}
	
	try
	{
		con2=databasecon3.getconnection();
		ps2 = con2.prepareStatement("select * from filestore where fid ='"+fid+"'");
		rs2 = ps2.executeQuery();
		while(rs2.next())
		{
		
		file3=rs2.getBlob(6);
		}
		
		session.setAttribute("resumeBlob3",file3);
		
		byte[] bdata2 = file3.getBytes(1, (int)file3.length());
        data3 = new String(bdata2);
        
	
	}
		catch(Exception e2)
	{
	out.println("Exception :"+e2);
	}
	
	
	%>
<div id="upbg"></div>

<div id="outer"> 
  <div id="header"> 
    <div id="headercontent"> 
      <h1>Cooperative Provable Data Possession for Integrity Verification in Multi-Cloud 
        Storage</h1>
    </div>
  </div>
  <div id="headerpic"></div>
  <div id="menu"> 
    <!-- HINT: Set the class of any menu link below to "active" to make it appear active -->
    <ul>
      <!-- <li><a href="user_home.jsp">User Home</a></li>-->
      <li><a href="#" class="active" >User Home</a></li>
      <li><a href="file_upload.jsp" >File Upload</a></li>
      <li><a href="file_update.jsp" >File Update</a></li>
      <li><a href="index.html">Logout</a></li>
      <!-- <li><a href="signup.jsp" >Sign up</a></li>
      <li><a href="#">Tpa</a></li>
      <li><a href="#">Admin</a></li>
      <li><a href="#">Contact</a></li>-->
    </ul>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FFFFFF"><strong><em>Welcome:</em></strong></font>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#99FFFF" size="+2" face="Courier New"><strong><em><%=name%></em></strong></font> 
  </div>
  <div id="menubottom"></div>
  <div id="content"> 
    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->
    <p><img src="images/upload.png" width="40" height="40">&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:underline">File 
      Download</font></em></strong> <br/>
      <br/>
    </p>
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
      <!-- Primary content area start -->
      <div class="box"> 
        <form name="s" action="file_download1.jsp" method="post" onsubmit="return valid()">
          <table width="799" height="720" align="center" cellpadding="20" cellspacing="20">
            <tr> 
              <td width="345" align="right"><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;File 
                Name&nbsp;&nbsp;&nbsp;:</strong></font></td>
              <td width="312">&nbsp;&nbsp;&nbsp;&nbsp; <em><strong><font color="#FF3333" size="+1"><%=fn%></font></strong></em></td>
            </tr>
            <tr> 
              <td height="75" align="right"><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;File 
                Size&nbsp;&nbsp;&nbsp;:</strong></font></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp; <strong><font color="#333300" size="+1" face="Arial, Helvetica, sans-serif"><%=fs%></font></strong><em><strong><font face="Times New Roman, Times, serif" color="#000000" size="+1">&nbsp;&nbsp;</font></strong></em><strong><font color="#EF4B5B" face="Times New Roman, Times, serif" size="+1"><em>KB</em></font></strong></td>
            </tr>
            <tr> 
              <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;File 
                Block1 From</strong></font>&nbsp;:<font color="#990066" size="+1"><strong>Cloud 
                Server 1</strong></font></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="b1" cols="30" rows="4" class="b"><%=data1%></textarea></td>
            </tr>
            <tr> 
              <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;File 
                Block2 From</strong></font>&nbsp;:<font color="#990066" size="+1"><strong>Cloud 
                Server 2</strong></font></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="b2" cols="30" rows="4" class="b"><%=data2%></textarea></td>
            </tr>
            <tr> 
              <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;File 
                Block3 From</strong></font>&nbsp;:<font color="#990066" size="+1"><strong>Cloud 
                Server 3</strong></font></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="b3" cols="30" rows="4" class="b"><%=data3%></textarea></td>
            </tr>
            <tr> 
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input type="checkbox" name="decrypt"> &nbsp;&nbsp;&nbsp;&nbsp;<font color="#336633" size="+1" face="Courier New, Courier, mono"><strong><em>DECRYPT</em></strong></font></td>
              <td align="center"><input type="submit" name="s" value=" Finish Download" class="b1" ></td>
            </tr>
          </table>
        </form>
      </div>
      <!-- Primary content area end -->
    </div>
    <!-- Secondary content: Stuff that goes in the secondary content column (by default, the narrower right column) -->
  </div>
  <div id="footer"> 
    <div class="left"><strong><font color="#990033" face="Geneva, Arial, Helvetica, sans-serif">Copyrights-2012
      .</font></strong></div>
    <!--  <div class="right">Design by <a href="http://www.nodethirtythree.com/">NodeThirtyThree 
      Design</a></div>-->
  </div>
</div>

</body>
</html>

