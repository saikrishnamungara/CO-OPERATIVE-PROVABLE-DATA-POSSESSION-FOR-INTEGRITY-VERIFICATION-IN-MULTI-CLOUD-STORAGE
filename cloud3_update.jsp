<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
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

<style type="text/css">
textarea{
	border: 3px solid green;
	padding: 5px;
	background-color:#F4FFF4;
	}
.b:hover{
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
String fid=request.getQueryString();
session.setAttribute("fid",fid);
String name=(String)session.getAttribute("sname");
//System.out.println(fid);
	Blob file1= null;
	String data1=null,uid=null,uname=null,fs=null,fn=null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
	 sql = "select uid,name,fid,fname,fsize,AES_DECRYPT(b3,'key'),date,status from filestore where fid ='"+fid+"'";
	
	try
	{
		con=databasecon3.getconnection();
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next())
		{
		uid=rs.getString(2);
		uname=rs.getString(3);
		fn=rs.getString(4);
		fs=rs.getString(5);
		file1 = rs.getBlob(6);
		
		}
		byte[] bdata = file1.getBytes(1, (int)file1.length());
        data1 = new String(bdata);
        session.setAttribute("fn",fn);
        session.setAttribute("fs",fs);
		session.setAttribute("uid",uid);
		session.setAttribute("uname",uname);
		
	
	}
		catch(Exception e)
	{
	out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
	}
	//session.setAttribute("resumeBlob",file);
    //response.sendRedirect("view_proof.jsp");
	
	%>
<div id="upbg"></div>

<div id="outer"> 
  <div id="header"> 
    <div id="headercontent"> 
      <h1>Cooperative Provable Data Possession for Integrity Verification in Multi-Cloud 
        Storage</h1>
    </div>
  </div>
  <div id="headerpic">
  </div>
  <div id="menu"> 
    <!-- HINT: Set the class of any menu link below to "active" to make it appear active -->
    <ul>
      <li><a href="cloud3_home.jsp" >Cloud server3 Home</a></li>
      <li><a href="#" class="active" >All Files</a></li>
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FFFFFF"><strong><em>Welcome:</em></strong></font>&nbsp;&nbsp;&nbsp;&nbsp; 
    <font color="#99FFFF" size="+2" face="Courier New"><strong><em><%=name%></em></strong></font> 
  </div>
  <div id="menubottom"></div>
  <div id="content"> 
    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->
    <p><img src="images/upload.png" width="40" height="40">&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:underline">File 
      Verification</font></em></strong> <br/>
      <br/>
    </p>
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
      <!-- Primary content area start -->
      <div class="box"> 
        <form name="a" action="cloud3_update3.jsp" method="post">
          <table width="799" height="100" align="center" cellpadding="20" cellspacing="20">
            <tr> 
              <td width="166"><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;File 
                Name&nbsp;&nbsp;&nbsp;:</strong></font></td>
              <td width="351">&nbsp;&nbsp;&nbsp;&nbsp; <em><strong><font color="#FF3333" size="+1"><%=fn%></font></strong></em> 
                <font face="Courier New" size="+1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File 
                size&nbsp;&nbsp;&nbsp;:</strong></font> <em><strong><font face="Times New Roman, Times, serif" color="#000000" size="+1"><%=fs%>&nbsp;&nbsp;KB</font></strong></td>
            </tr>
            <tr> 
              <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp;File 
                Block1&nbsp;:</strong></font></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="b1" cols="45" rows="5" class="b"><%=data1%></textarea></td>
            </tr>
            <tr> 
              <td></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="s" value="Update" class="b1"></td>
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

