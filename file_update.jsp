<%@ page  import="java.sql.*" import="databaseconnection.*,databaseconnection1.*,databaseconnection2.*,databaseconnection3.*"%>

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
.big:hover
{
color:red;

font-weight:bold;
font-size:16px;
}

</style>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="default.css" />
</head>
<body>
<%
String name=(String)session.getAttribute("name");
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
      <li><a href="user_home.jsp"  >User Home</a></li>
      <li><a href="file_upload.jsp" >File Upload</a></li>
      <li><a href="file_update.jsp"  class="active">File Update</a></li>
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
    <p><img src="images/upload.png" height="50" width="50">&nbsp;&nbsp; <strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:underline">File 
      Update</font></em></strong> <br/>
      <br/>
    </p>
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
      <!-- Primary content area start -->
      <div class="box"> 
        <form>
          <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
            <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
              <td align="center"><font color="#110022"><strong>User ID</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Name</strong></font></td>
              <td align="center"><font color="#110022"><strong>Date</strong></font></td>
              <td align="center"><font color="#110022"><strong>File ID</strong></font></td>
              <td align="center"> <font color="#110022"><strong>File Name</strong></font></td>
              <td align="center"> <font color="#110022"><strong>File Size</strong></font></td>
              <td align="center"> <font color="#110022"><strong>File Update</strong></font></td>
            </tr>
            <%
			String u=(String)session.getAttribute("u");
			
			String uname=(String)session.getAttribute("name");
			String date=null,fid=null,fname=null,fsize=null,uid=null;
ResultSet rs=null;
String all="allowed";
try
{
	Connection con = databasecon1.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from filestore where uid='"+u+"' && name='"+uname+"' && status='"+all+"'";
		rs =st.executeQuery(qry);
	while(rs.next())
	{
	fid=rs.getString("fid");
	uid=rs.getString("uid");
	
	uname=rs.getString("name");
	fname=rs.getString("fname");
	fsize=rs.getString("fsize");
	date=rs.getString("date");
	
	 
%>
            <tr bgcolor="#FFFFCC"> 
              <td align="center"> <strong><font color="#6300C6"> <%=uid%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=uname%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=date%> </font></strong></td>
              <td align="center"><strong><font color="#FF3300"> <%=fid%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=fname%> </font></strong></td>
              <td align="center"> <strong><font color="#6300C6"> <%=fsize%>&nbsp;&nbsp;</font><font color="#333333">KB</font></strong> 
              </td>
              <td align="center"><a href="file_update1.jsp?<%=fid%>"><strong><font color="#6300C6" class="big"> 
                Update</font></strong></a></td>
            </tr>
            <%
	   }
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
          </table>
        </form>
      </div>
      <table align="center">
        <tr> 
          <td colspan="4" align="center"><font size="2"><b> 
            <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red'><blink>File Updated Successfully !</blink></font>");
                                                       }
                                               %>
            </b></font></td>
        </tr>
      </table>
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
