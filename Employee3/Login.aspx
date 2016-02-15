<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Employee3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log in |PIS </title>
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="frmLogin" runat="server">
        <div class="container">
        <div class="row">
        <div class="col-md-2 col-md-offset-3">
         <img src="img/logo2.jpg" alt="PIS" class="img-responsive img-circle pull-right"></img>
        </div>
            <div class="col-md-6">
                <h2 class="text-left">धुलिखेल नगरपालिका कार्यालय</h2>
            </div>
            </div>
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        
                        <h3 class="panel-title text-center">
                        <strong><ins>Personal Information System</strong></ins></h3>
                    </div>
                    <div class="panel-body">
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtUser" name="email" placeholder="Username" autofocus>

                                    </asp:TextBox>
                                   
                                </div>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtPassword" type="password" name="password" placeholder="password" value="">

                                    </asp:TextBox>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="cbRemember" name="remember" type="checkbox" value="Remember Me" Text="Remember Me" runat="server" />
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Login" />
                               
                            </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </form>
    
     <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>
</html>
