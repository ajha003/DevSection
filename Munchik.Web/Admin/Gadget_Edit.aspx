<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gadget_Edit.aspx.cs" Inherits="Munchki.Web.Admin.Gadget_Edit" MasterPageFile="~/Admin/Admin.Master" %>


<asp:Content ContentPlaceHolderID="cphMaster" ID="cphGadgetCreate" runat="server">

    <div class="container-fluid">
        <div class="col-md-6 col-lg-6">
            <div class="card">
                <div class="stat-widget-five">
                    <div class="stat-icon">
                        <asp:Image ID="imgHeaderIcon" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/toolbox.png"  />
                    </div>
                    <div class="stat-content">
                        <div class="stat-heading ">                           
                          <asp:HyperLink ID="HyperLink1" runat="server" Text="Manage Gadgets" NavigateUrl="Gadget_Manage.aspx" />   
                            
                          &nbsp; | Edit Gadget
                        </div>
                        <div class="stat-text">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />

        <div class="row ">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="form-validation">
                            


                            <div class="row p-t-20">
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <asp:Label CssClass="control-label" runat="server" ID="lblName">Name: <span class="text-danger">*</span></asp:Label>

                                        <asp:TextBox ID="txtName" runat="server" MaxLength="40" class="form-control" placeholder="Enter Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqField" runat="server" ControlToValidate="txtName" ForeColor="#ef5350" ValidationGroup="valCard"
                                            ErrorMessage="Enter Name" SetFocusOnError="true" >

                                        </asp:RequiredFieldValidator>

                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <asp:Label ID="lblType" runat="server" CssClass="control-label m-b-10">Type :<span class="text-danger">*</span></asp:Label>

                                        <div class="dropdown">
                                            <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="true" Width="100%" MaxLength="40" class="form-control">
                                                <asp:ListItem Text="Select" Enabled="true" />
                                                

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlType" ForeColor="#ef5350" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                            </div>


                            <div class="row p-t-20">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="lblMake" runat="server" CssClass="control-label m-b-10">Make: <span class="text-danger">*</span></asp:Label>

                                        <div class="dropdown">
                                            <asp:DropDownList ID="ddMake" runat="server" AutoPostBack="true" Width="100%" MaxLength="40" class="form-control">
                                                <asp:ListItem Text="Select" Enabled="true" />

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddMake" ForeColor="#ef5350" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <asp:Label CssClass="control-label m-b-10" runat="server" ID="lblModel">Model: <span class="text-danger">*</span></asp:Label>

                                       <div class="dropdown">
                                            <asp:DropDownList ID="ddlModel" runat="server" AutoPostBack="true" Width="100%" MaxLength="40" class="form-control">
                                                <asp:ListItem Text="Select" Enabled="true" />

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlModel" ForeColor="#ef5350" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="row p-t-20">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label CssClass="control-label m-b-10" runat="server" ID="lblStart">Start: </asp:Label>

                                         <asp:RequiredFieldValidator ID="rvfradStart" runat="server" ControlToValidate="radStart" ForeColor="#ef5350" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>


                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <asp:Label CssClass="control-label m-b-10" runat="server" ID="lblEnabled">Enabled:
                                        </asp:Label>
                                       <asp:CheckBox ID="chkEnabled" runat="server" />
                                    </div>

                                </div>
                            </div>

                            
                            <div class="form-group row">
                                <div class="col-lg-8 ml-auto">
                                    <asp:Button ID="btnSave" ToolTip="Save record" Text="Save record" runat="server" CssClass="btn btn-success" ValidationGroup="valCard" />
                                    

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
