<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event_StepOne.aspx.cs" Inherits="Munchki.Web.Admin.Event_StepOne" MasterPageFile="~/Admin/Admin.Master" %>

<asp:Content ContentPlaceHolderID="cphMaster" ID="cphEventStepOne" runat="server">

    <div class="container-fluid">
      <div class="col-md-12 col-lg-12">
        <div class="card">
            <div class="stat-widget-five">  
                <div class="stat-icon">
                        <asp:Image ID="img" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/book-open.png" />
                    </div>
                <div class="stat-content">
                    <div class="stat-heading ">
                       
                             Event - Step One
                        
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
                                <asp:Label ID="lblName" runat="server" CssClass="col-lg-4 col-form-label" >Name :<span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                   
                                    <asp:TextBox ID="txtName" runat="server" MaxLength="40" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="#ef5350" runat="server" ControlToValidate="txtName" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <asp:Label ID="lblType" runat="server" CssClass="col-lg-4 col-form-label" >Event Type : <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                    <div class="dropdown">
                                        <asp:DropDownList ID="ddlEventType" runat="server" Width="100%" MaxLength="40" class="form-control">
                                        <asp:ListItem Text="Select" Enabled="true" /> 
                                        <asp:ListItem Text="Select 2" />                                        
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="reqField" runat="server" ForeColor="#ef5350" ControlToValidate="ddlEventType" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                
                                    </div>
                                   
                                </div>
                            </div>
                            

                            <div class="form-group row">
                                <asp:Label ID="lblEnabled" runat="server" CssClass="col-lg-4 col-form-label">Enabled : <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                    <asp:CheckBox ID="chkEnabled" runat="server" />
                                      
                                </div>
                            </div>

                            <div class="form-group row">
                                <asp:Label ID="lblDateofpurchase" runat="server" CssClass="col-lg-4 col-form-label" >Date of Event : <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">                                   
                                    
                                   
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="#ef5350" runat="server" ControlToValidate="radDateofEvent" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                            </div>



                            <asp:Panel ID="pnlRecurring" runat="server">
                                <div class="form-group row">
                                <asp:Label ID="Label1" runat="server" CssClass="col-lg-4 col-form-label" >Frequency : <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                    <div class="dropdown">
                                      This event occurrs  <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" MaxLength="40" class="form-control">
                                        <asp:ListItem Text="Select" Enabled="true" /> 
                                        <asp:ListItem Text="Select 2" />                                        
                                    </asp:DropDownList>until

                          
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#ef5350" ControlToValidate="radFrequency" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                
                                    </div>
                                   
                                </div>
                            </div>
                            </asp:Panel>
                    
                            <asp:Panel ID="pnlRecurringTriggers" runat="server">

                                <div class="table-responsive m-t-40">
                            <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                
                    


                                <asp:Repeater ID="rptSearch" runat="server">
                                    <HeaderTemplate>
                                        <thead>
                                            <tr>
                                                <th>Remove Trigger</th>
                                                <th>
                                                    <asp:LinkButton ID="lnkDate" CssClass="header" runat="server"><b>Date</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="lnkDetails" CssClass="header" runat="server"><b>Details</b></asp:LinkButton>
                                                </th>
                                               

                                            </tr>
                                        </thead>


                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <asp:ImageButton CommandName="btnEdit" ID="btnEdit" runat="server" ImageUrl="images/icons/color-16/cross.png"
                                                        ToolTip="Remove Trigger" />
                                                    <asp:HiddenField ID="hdnCompanyID" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "EventID")%>' />


                                                </td>
                                                <td>
                                                   <%-- <%#FormatDateTime(DataBinder.Eval(Container.DataItem, "EM_Trigger"), DateFormat.ShortDate)%>--%>
                                                    Date
                                                </td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "Details")%></td>
                                                

                                            </tr>

                                        </tbody>

                                        <tfoot>
                                            <tr>
                                                <th>Remove Trigger</th>
                                                <th>
                                                    <asp:LinkButton ID="lnkDate" CssClass="header" runat="server"><b>Date</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="lnkDetails" CssClass="header" runat="server"><b>Details</b></asp:LinkButton>
                                                </th>
                                                

                                            </tr>
                                        </tfoot>



                                    </ItemTemplate>
                                    
                                </asp:Repeater>



                            </table>
                        </div>

                            </asp:Panel>
                
                            
                             

                            <div class="form-group row">
                                <div class="col-lg-8 ml-auto">
                                    <asp:Button ID="btnSave" runat="server" Text="Save Record" CssClass="btn btn-success"  ValidationGroup="valCard"/>
                                </div>
                            </div>

                        </div>


                    </div>
                </div>
            </div>
            </div>


        <!-- End PAge Content -->
        

        </div>

    </asp:Content>
