<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="pms1.register" %>

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
        <li><a href="login.aspx">LOGIN</a></li>
        <li class="active"><a href="#">REGISTER<span class="sr-only">(current)</span></a></li>
      </ul>
    </div>
  </div>
</nav>

  <div style="text-align:center">    
      <br/>
      <b><h3>REGISTRATION</h3></b>
      <br/>
      <form runat="server" class="form-horizontal">
           
    <div class="form-group">
      <label class="col-lg-5 control-label">USER ID</label>
      <div class="col-lg-7">
        <asp:textbox type="text" runat="server" style="width:300px;height:30px;" class="form-control" id="inputUserName" placeholder="USER NAME" name="user_name" />
              </div>
    </div>
    <div class="form-group">
      <label class="col-lg-5 control-label">PASSWORD</label>
      <div class="col-lg-7">
          
        <asp:textbox type="password" runat="server" style="width:300px;height:30px;" class="form-control" name="password1" id="inputPassword" placeholder="PASSWORD"/>
              </div>
        </div>
   
    
       <div class="form-group">
        <label for="inputPassword" class="col-lg-5 control-label">RE-TYPE PASSWORD</label>
      <div class="col-lg-7">
        <asp:textbox type="password" runat="server" style="width:300px;height:30px;" class="form-control" id="inputPassword_1" placeholder="RE-TYPE PASSWORD" />
        <asp:CompareValidator ID="compare" runat="server" ControlToCompare="inputPassword" ControlToValidate="inputPassword_1" ErrorMessage="PASSWORD AND RETYPE PASSWORD MUST BE SAME"></asp:CompareValidator>  
      </div>
        </div>
         
        <br/>
        <div class="form-group">
            <div class="col-lg-15">
                 <asp:Button class="btn btn-primary" ID="button1" runat="server" Text="REGISTER" OnClick="button1_Click" />
               <br /><br />
                If you want to login, <a href="login.aspx">login here</a>
            </div>
       
      </div>
      </form>
      <div class="form-group">
          <asp:label runat="server" id="label1"></asp:label>
      </div>
      </div>

</body>
</html>
