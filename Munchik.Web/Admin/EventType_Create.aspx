<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventType_Create.aspx.cs" Inherits="Munchki.Web.Admin.EventType_Create" MasterPageFile="~/Admin/Admin.Master" %>



<asp:Content ContentPlaceHolderID="cphMaster" ID="cphEventTypeCreate" runat="server">

    <div class="container-fluid">

        <div class="row">
            <div class="col-md-6 col-lg-6">
                <div class="card">
                    <div class="stat-widget-five">
                        <div class="stat-icon">
                            <asp:Image ID="imgHeaderIcon" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/address-book.png" />
                        </div>
                        <div class="stat-content">
                            <div class="stat-heading ">

                                <asp:HyperLink ID="hyperManageCompanies" runat="server" Text="Manage Event Types" NavigateUrl="Company_Manage.aspx" />

                            </div>
                            <div class="stat-text">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-6">
                <div class="card">
                    <div class="stat-widget-five">
                        <div class="stat-icon">
                            <asp:Image ID="Image1" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/address-book-open.png" />
                        </div>
                        <div class="stat-content">
                            <div class="stat-heading ">
                                Create Event Types                       
                            </div>
                            <div class="stat-text">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>



        <div class="row justify-content-center">
            <div class="col-lg-7">
                <div class="card">
                    <div class="card-body">
                        <div class="form-validation">

                            <div class="form-group row justify-content-center">
                                <asp:Label ID="lblName" runat="server" CssClass="col-lg-4 col-form-label">Name: <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="reqchk" runat="server" ControlToValidate="txtName" ForeColor="#ef5350" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                </div>
                            </div>

                            <div class="form-group row justify-content-center">
                                <asp:Label ID="Label1" runat="server" CssClass="col-lg-4 col-form-label">Enabled : </asp:Label>
                                <div class="col-lg-6">
                                    <asp:CheckBox ID="chkEnabled" runat="server" />
                                    <asp:Label runat="server" ID="lbl_chkEnabled" />
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
