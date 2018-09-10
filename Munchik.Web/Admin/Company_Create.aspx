<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_Create.aspx.cs" Inherits="Munchki.Web.Admin.Company_Create" MasterPageFile="~/Admin/Admin.Master" %>

<asp:Content ContentPlaceHolderID="cphMaster" ID="defaultLogin" runat="server">

    <div class="container-fluid">
        <div class="col-md-12 col-lg-12">
            <div class="card">
                <div class="stat-widget-five">
                     <div class="stat-icon">
                        <asp:Image ID="imgHeaderIcon" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/address-book.png"  />
                    </div>
                    <div class="stat-content">
                        <div class="stat-heading ">

                            <asp:HyperLink ID="hyperManageCompanies" runat="server" Text="Manage Companies " NavigateUrl="Company_Manage.aspx" />
                            &nbsp;| Create Company                         
                        </div>
                        <div class="stat-text">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <!-- Start Page Content -->

        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="form-validation">


                            <div class="form-group row justify-content-center">
                                <asp:Label ID="lblType" runat="server" CssClass="col-lg-4 col-form-label">Type :</asp:Label>

                            </div>
                            <div class="form-group row justify-content-center">

                                <div class="card">
                                    
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td class="color-primary">
                                                            <b><i>Unselected Types</i></b>
                                                           <br />
                                                            <br />
                                                            <br />
                                                            <asp:ListBox ID="lbMissing" runat="server" Rows="10" CssClass="selectmulti" Width="250" SelectionMode="Multiple" />
                                                        </td>
                                                        <td style="text-align:center;">
                                                            
                                                            <br />
                                                            <br />

                                                            <asp:Button ID="btnAddAll" runat="server" Text="Add All" ToolTip="Add All" CssClass="btn btn-info m-b-10 m-l-5" /><br />
                                                            <br />
                                                            <asp:Button ID="btnAddSel" runat="server" Text="Add Selected" ToolTip="Add Selected" CssClass="btn btn-info m-b-10 m-l-5" /><br />
                                                            <br />
                                                            <asp:Button ID="btnRemSel" runat="server" Text="Remove Selected" ToolTip="Remove Selected" CssClass="btn btn-info m-b-10 m-l-5" /><br />
                                                            <br />
                                                            <asp:Button ID="btnRemAll" runat="server" Text="Remove All" ToolTip="Remove All" CssClass="btn btn-info m-b-10 m-l-5" /></td>

                                                        
                                                        <td class="color-primary">
                                                            <b><i>Selected Types</i></b>                                                            
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <asp:ListBox ID="lbAdded" runat="server" Rows="10" CssClass="selectmulti" Width="250" SelectionMode="Multiple" />

                                                        </td>

                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <br />
                            <div class="form-group row justify-content-center">
                                <asp:Label ID="lblName" runat="server" CssClass="col-lg-4 col-form-label">Name: <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                                         <asp:RequiredFieldValidator ID="reqchk" runat="server" ControlToValidate="txtName" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            
                                </div>
                            </div>
                            <div class="form-group row justify-content-center">
                                <asp:Label ID="lblEnabled" runat="server" CssClass="col-lg-4 col-form-label">Enable Marketing?: </asp:Label>
                                <div class="col-lg-6">
                                    <asp:CheckBox ID="chkEnableMarketing" runat="server" />                                         
                            
                                </div>
                            </div>
                            <div class="form-group row justify-content-center">
                                <asp:Label ID="Label1" runat="server" CssClass="col-lg-4 col-form-label">Enabled </asp:Label>
                                <div class="col-lg-6">
                                    <asp:CheckBox ID="chkEnabled" runat="server" />   <asp:Label runat="server" ID="lbl_chkEnabled" />                                     
                                </div>
                            </div>

                            <br />
                            <div class="form-group row">
                                <div class="col-lg-8 ml-auto">
                                    <asp:Button ID="btnSave" runat="server" Text="Save Record" CssClass="btn btn-success" ValidationGroup="valCard" />
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
