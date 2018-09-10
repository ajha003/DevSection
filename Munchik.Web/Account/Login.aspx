<%@ Page Title="Log in" Language="C#" MasterPageFile="~/SiteAuthentication.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Munchik.Web.Account.Login" Async="true" %>

 
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

      <asp:Literal ID="ltrlLogin" runat="server"></asp:Literal>
    <div class="unix-login">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="login-content card">
                        <div class="login-form">
                            <h4>Login</h4>

                            <div class="form-group">
                                <label>Email address</label>
                                <asp:TextBox CssClass="form-control" placeholder="Email" ID="txtemail" runat="server" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail"
                                    CssClass="text-danger" ErrorMessage="The email field is required." ValidationGroup="vallogin" />
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox TextMode="Password" CssClass="form-control" placeholder="Password" ID="txtpwd" runat="server" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtpwd" ValidationGroup="vallogin" CssClass="text-danger" ErrorMessage="The password field is required." />
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" id="chkRemberme" runat="server">
                                    Remember Me
                                </label>
                                <label class="pull-right">
                                    <a href="#">Forgotten Password?</a>
                                </label>

                            </div>
                            <asp:Button ID="btnLogin" CssClass="btn btn-primary btn-flat m-b-30 m-t-30" ValidationGroup="vallogin" Text="Sign in" runat="server" OnClick="LogIn"></asp:Button>
                            <div class="register-link m-t-15 text-center">
                                <p>Don't have account ? <asp:HyperLink ID="RegisterHyperLink" runat="server" >Sign Up Here</asp:HyperLink></p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
