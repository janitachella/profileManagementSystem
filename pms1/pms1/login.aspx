<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="pms1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>

        
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">PROFILE MANAGEMENT SYSTEM</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="#">LOGIN<span class="sr-only">(current)</span></a></li>
        <li><a href="register.aspx">REGISTER</a></li>
      </ul>
    </div>
  </div>
</nav>
        <div style="text-align:center">    

        </div>
    <br/><br />
     <form class="form-horizontal" runat="server">
    <fieldset style="width:400px;text-align:center;margin:auto">
        <br />
         <legend>Login</legend>
    <div class="form-group">
     
        <label for="inputUname" class="col-lg-5 control-label">Username</label>
      <div class="col-lg-5">
        <asp:textbox runat="server" type="text" class="form-control" id="inputUserName" name="user_name" style="width:200px"  placeholder="Username"></asp:textbox>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPasswordLabel" class="col-lg-5 control-label">Password</label>
      <div class="col-lg-7">
        <asp:textbox type="password" runat="server" class="form-control" style="width:200px" id="inputPassword" placeholder="Password"></asp:textbox>
        </div>
              </div>
            <div class="col-lg-9 col-lg-offset-2">
       
       <br /><asp:Button runat="server" class="btn btn-primary" id="login_button" name="login_button" Text="LOGIN" OnClick="login_button_Click"></asp:Button>
      </div>  
           <asp:Label ID="label1" runat="server"></asp:Label>    
    </fieldset>
    </form>
</body>
</html>
