<%@ page  import="java.sql.*" import="databaseconnection.*"%>

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
.big:hover
{
color:red;

font-weight:bold;
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
    <!--<li><a href="index.html" >Back</a></li>-->
    <li><a href="tpa_home.jsp">Tpa Home</a></li>
    <li><a href="tpa_all_files.jsp" >All Files</a></li>
    <li><a href="#" class="active" >File Alert</a></li>
    <li><a href="tpa_all_alerts.jsp" >All File Alert</a></li>
    <li><a href="index.html">Logout</a></li>
    <!--  <li><a href="#">Tpa</a></li>
      <li><a href="#">Admin</a></li>
      <li><a href="#">Contact</a></li>-->
  </ul>
</div>
  <div id="menubottom"></div>
  <div id="content"> 
    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->
    <p> <img src="images/alert1.png" width="25" height="30">&nbsp;&nbsp;&nbsp;&nbsp;<strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:underline">File 
      Alert</font></em></strong> <br/>
      <br/>
    </p>
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
     
        <!-- Primary content area start -->
        
    <div class="box"> 
      <form>
        <%
String aid=null,uid=null,uname=null,mby=null,mb=null,fid=null,fname=null,fsize=null,sta=null;

try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
	String a="new";
    String qry="select * from tpa_alert where status = '"+a+"'";
	ResultSet rs =st.executeQuery(qry);
	while(rs.next())
	{
	aid=rs.getString("aid");
	fid=rs.getString("fid");
	uid=rs.getString("uid");
	
	uname=rs.getString("name");
	fname=rs.getString("fname");
	fsize=rs.getString("fsize");
     mb=rs.getString("mblock");
	mby=rs.getString("mby");
	 

%>
        <tr> 
          <td><img src="images/alert1.png" width="25" height="25"></td>
          <td><font color="#333300" size="+1" face="Times New Roman, Times, serif"><strong>The&nbsp;</strong></font> 
            <font face="Courier New, Courier, mono" size="+1" color="#FF6633"><em><strong><%=mby%>&nbsp;</strong></em></font> 
            <font color="#333300" size="+1" face="Times New Roman, Times, serif"><strong>is&nbsp;trying&nbsp;to&nbsp;modify&nbsp;the</strong></font> 
            <font face="Courier New, Courier, mono" size="+1" color="#FF6633"><em><strong>&nbsp;<%=mb%>&nbsp;</strong></em></font> 
            <font color="#333300" size="+1" face="Times New Roman, Times, serif"><strong>of&nbsp;the&nbsp;</strong></font> 
            <font face="Courier New, Courier, mono" size="+1" color="#FF6633"><em><strong><%=fname%></strong></em></font></td>
          <td>&nbsp;&nbsp;<a href="tpa_alert1.jsp?<%=aid%>"><strong><font color="#990000" size="+2" face="Times New Roman, Times, serif">Ok</font></strong></a></td>
        </tr>
        <br>
        <br>
        <%
	   }
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %></table>
        
      </form>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <!-- Primary content area end -->
    </div>
    </div>
    <!-- Secondary content: Stuff that goes in the secondary content column (by default, the narrower right column) -->
    
  
  <div id="footer"> 
    <div class="left"><strong><font color="#990033" face="Geneva, Arial, Helvetica, sans-serif">Copyrights-2012
      .</font></strong></div>
    <!--  <div class="right">Design by <a href="http://www.nodethirtythree.com/">NodeThirtyThree 
      Design</a></div>-->
  </div>
</div>

</body>
</html>
