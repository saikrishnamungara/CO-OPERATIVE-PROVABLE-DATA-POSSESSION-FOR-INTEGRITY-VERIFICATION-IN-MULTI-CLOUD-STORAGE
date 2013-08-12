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
var a=document.s.uid.value;
if(a=="")
{
alert("Enter User ID");
document.s.uid.focus();
return false;
}
var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}



}

</script>
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
  <div id="headerpic"> </div>
  <div id="menu"> 
    <!-- HINT: Set the class of any menu link below to "active" to make it appear active -->
    <ul>
      <!--<li><a href="index.html" >Back</a></li>-->
      <li><a href="#" class="active">User</a></li>
      <li><a href="index.html" >Back</a></li>
      <!--  <li><a href="#">Tpa</a></li>
      <li><a href="#">Admin</a></li>
      <li><a href="#">Contact</a></li>-->
    </ul>
  </div>
  <div id="menubottom"></div>
  <div id="content"> 
    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->
    <p> <strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif" style="text-decoration:underline">User 
      Login</font></em></strong> <br/>
      <br/>
    </p>
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
      <div id="primarycontent"> 
        <!-- Primary content area start -->
        <div class="box"> 
          <form name="s" action="user_log1.jsp" method="get" onsubmit="return valid()">
            <table align="center" cellpadding="20" cellspacing="20" width="500">
              <tr> 
                <td><font face="Courier New" size="+1"><strong><img src="images/login1.png">&nbsp;&nbsp;User 
                  ID</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uid" class="b"></td>
              </tr>
              <tr> 
                <td><font face="Courier New" size="+1"><strong><img src="images/login.png">&nbsp;&nbsp;Password</strong></font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass" class="b"></td>
              </tr>
              <tr> 
                <td></td>
                <td><input type="submit" name="s" value="submit" class="b1" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <input type="reset" name="r" value="clear" class="b1"></td>
              </tr>
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>Your username and password is incorrect !</blink></font>");
                                                       }
                                               %>
                  </b></font></td>
              </tr>
            </table>
          </form>
        </div>
        <!-- Primary content area end -->
      </div>
    </div>
    <!-- Secondary content: Stuff that goes in the secondary content column (by default, the narrower right column) -->
    <div id="secondarycontent"> 
      <!-- Secondary content area start -->
      <!-- HINT: Set any div's class to "box" to encapsulate it in (you guessed it) a box -->
      <div class="post"><img src="images/cloud_user1.jpeg"> </div>
      <!-- Secondary content area end -->
    </div>
  </div>
  <div id="footer"> <strong><font color="#990033" face="Geneva, Arial, Helvetica, sans-serif">Copyrights-2012
    .</font></strong></div>
  <!--  <div class="right">Design by <a href="http://www.nodethirtythree.com/">NodeThirtyThree 
      Design</a></div>-->
</div>

</body>
</html>
