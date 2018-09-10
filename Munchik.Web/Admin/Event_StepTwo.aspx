<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event_StepTwo.aspx.cs" Inherits="Munchki.Web.Admin.Event_StepTwo" MasterPageFile="~/Admin/Admin.Master" %>


<asp:Content ContentPlaceHolderID="cphMaster" ID="cphEventStepTwo" runat="server">

    <div class="container-fluid">
      <div class="col-md-12 col-lg-12">
        <div class="card">
            <div class="stat-widget-five">  
                <div class="stat-icon">
                        <asp:Image ID="img" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/book-open.png" />
                    </div>
                <div class="stat-content">
                    <div class="stat-heading ">
                        <asp:hyperlink ID="hyperEventStepOne" runat="server" Text="Event - Step One" NavigateUrl="Event_StepOne.aspx" />
                            &nbsp; | Event - Step Two
                        
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
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="#ef5350" ControlToValidate="txtName" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <asp:Label ID="lblType" runat="server" CssClass="col-lg-4 col-form-label" >Type : <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                    <div class="dropdown">
                                        <asp:DropDownList ID="ddlType" runat="server" Width="100%" MaxLength="40" class="btn btn-primary dropdown-toggle">
                                        <asp:ListItem Text="Select" Enabled="true" /> 
                                        <asp:ListItem Text="Select 2" />                                        
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="reqField" runat="server" ForeColor="#ef5350" ControlToValidate="ddlType" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                
                                    </div>
                                   
                                </div>
                            </div>
                            

                            <div class="form-group row">
                                <asp:Label ID="lblStartDate" runat="server" CssClass="col-lg-4 col-form-label">Start Date : <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                               
                                </div>
                            </div>

                            <div class="form-group row">
                                <asp:Label ID="lblEnd" runat="server" CssClass="col-lg-4 col-form-label">End Date : <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">
                                
                                </div>
                            </div>




                            <div class="form-group row">
                                <asp:Label ID="lblMasterReminder" runat="server" CssClass="col-lg-4 col-form-label" > </asp:Label>
                                <div class="col-lg-6">                                   
                                    
<%--                                   <asp:CollapsiblePanelExtender ID="cpExt_MasterReminder" CollapsedText="Setup Reminders (Click To Expand)" 
                            ExpandedText="Setup Reminders (Click To Hide)" runat="server" TargetControlID="pnlMasterReminder" 
                            ExpandControlID="lblMasterReminder" CollapseControlID="lblMasterReminder" TextLabelID="lblMasterReminder" />--%>
                                    </div>
                            </div>



                            <asp:Panel ID="pnlMasterReminder" runat="server">
                                <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="card">
                    <div class="card-body">
                        <div class="form-validation">

                            <div class="form-group row">
                                <asp:Label ID="lblReminder" runat="server" CssClass="col-lg-4 col-form-label" >Type:</asp:Label>
                                <div class="col-lg-6">
                                    <div class="dropdown">
                                       <asp:DropDownList ID="ddlReminderType" runat="server" Width="100%" MaxLength="40" class="btn btn-primary dropdown-toggle">
                                        <asp:ListItem Text="Select" Enabled="true" />                                                                                 
                                      </asp:DropDownList>
                                    </div>                                   
                                </div>
                            </div>


                             <div class="form-group row">
                                <asp:Label ID="lblReminderDetails" runat="server" CssClass="col-lg-4 col-form-label" >Details:</asp:Label>
                                <div class="col-lg-6">
                                    <div class="dropdown">
                                      <asp:TextBox TextMode="MultiLine" Rows="10" columns="50" ID="txtReminderDetails" runat="server" class="form-control" />
                                    </div>                                   
                                </div>
                             </div>

                            <div class="form-group row">
                                <asp:Label ID="lblSelectedTrigger" runat="server" CssClass="col-lg-4 col-form-label" >Selected Trigger:</asp:Label>
                                <div class="col-lg-6">                                    
                                      <asp:Label ID="lblTriggerID" runat="server" CssClass="col-lg-4 col-form-label" />                                                                   
                                </div>
                            </div>
                             <div class="form-group row">
                                <asp:Label ID="Label1" runat="server" CssClass="col-lg-4 col-form-label" >Selected Trigger Date:</asp:Label>
                                <div class="col-lg-6">                                    
                                      <asp:Label ID="lblTriggerDate" runat="server" CssClass="col-lg-4 col-form-label" />                                                                   
                                </div>
                            </div>
                             <div class="form-group row">
                                <asp:Label ID="Label3" runat="server" CssClass="col-lg-4 col-form-label" >Selected Trigger Time:</asp:Label>
                                <div class="col-lg-6">                                    
                                      <asp:Label ID="lblTriggerTime" runat="server" CssClass="col-lg-4 col-form-label" />                                                                   
                                </div>
                            </div>

                            <div class="form-group row">
                                <asp:Label ID="lblDateofReminder" runat="server" CssClass="col-lg-4 col-form-label" >Date of Reminder :</asp:Label>
                                <div class="col-lg-6">                                    
                                                                                         
                                </div>
                            </div>

                            <div class="form-group row">
                                <asp:Label ID="lblTimeofReminder" runat="server" CssClass="col-lg-4 col-form-label" >Time of Reminder:</asp:Label>
                                <div class="col-lg-6">                                    
                                     <asp:DropDownList ID="ddlTimeofReminder" runat="server" Width="100%" MaxLength="40" class="btn btn-primary dropdown-toggle">
                                        <asp:ListItem Text="Select" Enabled="true" />                                                                                 
                                      </asp:DropDownList>
                                    &nbsp;&nbsp;
                                        Please enter the start time you would like the reminder to be sent
                                </div>
                            </div>
                            <div class="form-group row">
                                <asp:Label ID="lblRecipients" runat="server" CssClass="col-lg-4 col-form-label" >Recipients:</asp:Label>
                                <div class="col-lg-6">                                    
                                     <asp:DropDownList id="ddlRecipientsID" runat="server" CssClass="select" />
                                        &nbsp;&nbsp;<asp:Button ID="btnAdd" Tooltip="Add selected user" Text="Add selected user" runat="server"
                                            CssClass="btn btn-info btn-mini" />
                                        <asp:Label ID="lblSpacer" runat="server" />
                                </div>
                            </div>
                            <asp:Panel ID="pnlRecipient" runat="server">

                               <div class="form-group row">

                                   <div class="table-responsive m-t-40">
                            <table id="tblRecipient" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                               
                                <asp:Repeater ID="rptSearch" runat="server">
                                    <HeaderTemplate>
                                        <thead>
                                            <tr>
                                                <th>Action</th>
                                                <th>
                                                    <asp:LinkButton ID="lnkDate" CssClass="header" runat="server"><b>Name</b></asp:LinkButton>
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
                                                    <asp:HiddenField ID="hdnRecipientID" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "RecipientID")%>' />


                                                </td>
                                                <td>
                                                   <%#DataBinder.Eval(Container.DataItem, "Name")%>
                                                </td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "Details")%></td>
                                                

                                            </tr>

                                        </tbody>

                                        <tfoot>
                                            <tr>
                                                <th>Action</th>
                                                <th>
                                                    <asp:LinkButton ID="lnkDate" CssClass="header" runat="server"><b>Name</b></asp:LinkButton>
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
                                
                               </div>

                            </asp:Panel>


                            </div>
                        </div>
                    </div>
                </div>
                                    </div>


                                
                            </asp:Panel>
                    
                            

                            <div class="form-group row">
                                <div class="col-lg-8 ml-auto">
                                    <asp:Button ID="btnSave" runat="server" Text="Save Record" CssClass="btn btn-success"  ValidationGroup="valCard"/>
                               
                                    <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-inverse" />
                               
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