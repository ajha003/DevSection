<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Company_EditCustomer.aspx.cs" Inherits="Munchki.Web.Admin.Company_EditCustomer" MasterPageFile="~/Admin/Admin.Master" %>

<asp:Content ContentPlaceHolderID="cphMaster" ID="defaultLogin" runat="server">

    <div class="container-fluid">
      <div class="col-md-12 col-lg-12">
        <div class="card">
            <div class="stat-widget-five">  
                <div class="stat-icon">
                        <asp:Image ID="img" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/address-book.png" />
                    </div>
                <div class="stat-content">
                    <div class="stat-heading ">
                       
                            <asp:hyperlink ID="hyperManageCompanies" runat="server" Text="Manage Companies (Customer)" NavigateUrl="Company_Manage.aspx" /> &nbsp;| Create Company (Customer)
                        
                    </div>
                    <div class="stat-text">

                    </div>
                </div>
            </div>
        </div>
      </div>
    

        <!-- Start Page Content -->
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <div class="card">
                    <div class="card-body">
                        <div class="form-validation">

                            <div class="form-group row">
                                <asp:Label ID="lblType" runat="server" CssClass="col-lg-4 col-form-label" >Type <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                    <div class="dropdown">
                                        <asp:DropDownList ID="ddlType" runat="server" Width="100%" MaxLength="40" class="form-control">
                                        <asp:ListItem Text="Select" Enabled="true" /> 
                                        <asp:ListItem Text="Select 2" />
                                        
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="reqField" runat="server" ControlToValidate="ddlType" ForeColor="#ef5350" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="form-group row">
                                <asp:Label ID="lblName" runat="server" CssClass="col-lg-4 col-form-label" >Name <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                   
                                    <asp:TextBox ID="txtName" runat="server" MaxLength="40" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#ef5350" ControlToValidate="txtName" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                            </div>


                            <div class="form-group row">
                                <asp:Label ID="lblEnabled" runat="server" CssClass="col-lg-4 col-form-label">Enabled <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                    <asp:CheckBox ID="chkEnabled" runat="server" />
                                      
                                </div>
                            </div>
                             

                            <div class="form-group row">
                                <div class="col-lg-8 ml-auto">
                                    <asp:Button ID="btnSave" runat="server" Text="Save Record" CssClass="btn btn-success"  ValidationGroup="valCard"/>
                                </div>
                            </div>

                        </div>


                    </div>
                </div>
            </div>
            <!-- End PAge Content -->
        </div>

    </div>



    </asp:Content>
