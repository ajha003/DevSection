<%@ Page Title="Account Confirmation" Language="C#" MasterPageFile="~/SiteAuthentication.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="Munchik.Web.Account.Confirm" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    

    <div>
        <asp:PlaceHolder runat="server" ID="successPanel" ViewStateMode="Disabled" Visible="true">
            <p>
                          
            </p>

            <div class="unix-login">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="login-content card">
                        <div class="login-form">
                            <h2><%: Title %>.</h2> 
                         
                                <div class="form-group">
                                     Thank you for confirming your account. Click <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Account/Login">here</asp:HyperLink>  to login  
                                </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="errorPanel" ViewStateMode="Disabled" Visible="false">
            <p class="text-danger">
                An error has occurred.
            </p>
        </asp:PlaceHolder>
    </div>
</asp:Content>
