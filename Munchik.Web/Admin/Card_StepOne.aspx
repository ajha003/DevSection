<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Card_StepOne.aspx.cs" Inherits="Munchki.Web.Admin.Card_StepOne" MasterPageFile="~/Admin/Admin.Master" %>

 
<asp:Content ContentPlaceHolderID="cphMaster" ID="CardStepOne" runat="server">


    <div class="col-md-12 col-lg-12">
        <div class="card">
            <div class="stat-widget-five">
                <div class="stat-icon">
                    <asp:Image ID="img" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/cards-address.png" />
                </div>
                <div class="stat-content">
                    <div class="stat-heading ">
                        <asp:HyperLink ID="hypInHome" runat="server" Text="Manage Cards" NavigateUrl="CardMaster.aspx" />


                    </div>
                    <div class="stat-text">
                    </div>
                </div>
            </div>
        </div>


    </div>
    <br />



    <div class="container-fluid">


        <!-- Start Page Content -->
        <div class="row ">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="form-validation">
                            <div class="form-group row justify-content-center">
                                <asp:Panel ID="pnlDelete" runat="server" Style="display: none;">
                                    <div class="card">

                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>

                                                            <td style="text-align: center;">
                                                                <p>You have selected to delete the following record</p>
                                                                <b><i>
                                                                    <asp:Label ID="lbl_Delete" runat="server" /></i></b>Are you sure?<br />
                                                                <br />
                                                                <asp:Button ID="btnDelCancel" ToolTip="Cancel delete" Text="Cancel delete" runat="server" CssClass="btn btn-info btn-mini" />&nbsp;&nbsp;
                        <asp:Button ID="btnDelConfirm" ToolTip="Confirm delete" Text="Confirm delete" runat="server" CssClass="btn btn-info btn-mini" />

                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </asp:Panel>
                            </div>


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
                                        <asp:Label ID="lblType" runat="server" CssClass="control-label m-b-10">Type <span class="text-danger">*</span></asp:Label>

                                        <div class="dropdown">
                                            <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="true" Width="100%" MaxLength="40" class="form-control">
                                                <asp:ListItem Text="Select" Enabled="true" />
                                                <asp:ListItem Text="Select 2" />

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
                                        <asp:Label ID="lblProvider" runat="server" CssClass="control-label m-b-10">Provider: <span class="text-danger">*</span></asp:Label>

                                        <div class="dropdown">
                                            <asp:DropDownList ID="ddProvider" runat="server" AutoPostBack="true" Width="100%" MaxLength="40" class="form-control">
                                                <asp:ListItem Text="Select" Enabled="true" />

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddProvider" ForeColor="#ef5350" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <asp:Label CssClass="control-label m-b-10" runat="server" ID="lblBalance">Balance: <span class="text-danger">*</span></asp:Label>

                                        <asp:TextBox ID="txtBalance" runat="server" MaxLength="40" TextMode="Number" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBalance" ForeColor="#ef5350" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                    </div>

                                </div>
                            </div>

                            <div class="row p-t-20">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label CssClass="control-label m-b-10" runat="server" ID="lblInterest">0% interest: </asp:Label>

                                        <asp:CheckBox ID="chkInterest" runat="server" AutoPostBack="true" /><asp:Label CssClass="css-label lite-blue-check" runat="server" ID="lbl_chkInterest"> </asp:Label>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <asp:Label CssClass="control-label m-b-10" runat="server" ID="lblExpiryDate">0% interest expiry date:
                                        <span class="text-danger">*</span></asp:Label>
                                       <%--<telerik:RadDatePicker ID="radExpirydate" Width="100%" runat="server" CssClass="form-control" />--%>
                                    </div>

                                </div>
                            </div>

                            <div class="row p-t-20">
                                <div class="col-md-6">
                                    <div class="form-group">
                                         <asp:Label CssClass="control-label m-b-10" runat="server" ID="lblStartdate">Start date: </asp:Label>
                               
                                     <%--<telerik:RadDatePicker ID="radStartdate" Width="100%" runat="server" CssClass="form-control" />--%>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                                    <asp:Label CssClass="control-label m-b-10" runat="server" ID="Label1">End date: </asp:Label>
                              
                                      <%--<telerik:RadDatePicker ID="radEnddate" Width="100%" runat="server" CssClass="form-control" />--%>
                                    </div>

                                </div>
                            </div>

                           <div class="row p-t-20">
                               <div class="col-md-6">
                                    <div class="form-group has-danger">
                                      <asp:Label CssClass="control-label m-b-10" runat="server" ID="lblNotes">Notes: </asp:Label>
                                        <br />
                                      <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="10" Columns="50" CssClass="textarea" />
                                    </div>

                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                       
                                <asp:Label CssClass="control-label m-b-10" runat="server" ID="lblEnabled">Enabled: </asp:Label>
                                    <asp:CheckBox ID="chkEnabled" runat="server" />
                                    <asp:Label CssClass="css-label lite-blue-check" runat="server" ID="lbl_chkEnabled" />
                                    </div>
                                </div>

                                
                            </div>


                            <div class="form-group row">
                                <div class="col-lg-8 ml-auto">
                                    <asp:Button ID="btnSave" ToolTip="Save And Continue" Text="Save And Continue" runat="server" CssClass="btn btn-success" ValidationGroup="valCard" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnDelete" ToolTip="Delete record" Text="Delete Record" runat="server" CssClass="btn btn-danger" />


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
