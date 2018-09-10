<%@ Page Title="Register" Language="C#" MasterPageFile="~/SiteAuthentication.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Munchik.Web.Account.Register" %>

<asp:Content ContentPlaceHolderID="contentTitle" runat="server" ID="Title">
    <title>Munich: Register your account</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />

</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script type="text/javascript">
        $(function () {
            $("[id*=txtDob]").datepicker({
                showOn: 'button',
                buttonImageOnly: true,
                showButtonPanel: true,
                buttonImage: '../assets/images/calender.png',
                dateFormat: 'yy-mm-dd',
                yearRange: '<%=MinYear%>:<%=MaxYear%>',
                minDate: new Date(<%=MinYear%>, 10 - 1, 25),
                maxDate: new Date(<%=MaxYear%>, <%=System.DateTime.Now.Month%> - 1, <%=System.DateTime.Now.Day%>),

                inline: true
            });
        });

        
    </script>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="unix-login">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="login-content card">
                        <div class="login-form">
                            <h4>Register</h4>

                            <div class="form-group">
                                <label>First Name</label>
                                <%--<input type="email" class="form-control" placeholder="First Name" id="txtFirstName" runat="server">--%>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" MaxLength="50" Text='<%#System.DateTime.Now.AddYears(-18).Date.ToShortDateString() %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqField" runat="server" ControlToValidate="txtFirstName" CssClass="Error" Text="*Required" ValidationGroup="valSignup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" CssClass="Error" Text="*Required" ValidationGroup="valSignup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Phohe:#</label>
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" CssClass="Error" Text="*Required" ValidationGroup="valSignup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Date of Birth</label>

                                <asp:TextBox ID="txtDob" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Email address</label>
                                <input type="email" class="form-control" placeholder="Email" id="txtEmail" runat="server">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" placeholder="Password" id="txtPassword" runat="server">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">
                                    Agree the terms and policy
                                </label>
                            </div>
                            <asp:Button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30" runat="server" OnClick="CreateUser_Click" Text="Register" CausesValidation="false"></asp:Button>
                            <div class="register-link m-t-15 text-center">
                                <p>Already have account ? <a href="/Account/login">Sign in</a></p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
