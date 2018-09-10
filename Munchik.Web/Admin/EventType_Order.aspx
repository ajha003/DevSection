<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventType_Order.aspx.cs" Inherits="Munchki.Web.Admin.EventType_Order" MasterPageFile="~/Admin/Admin.Master" %>


<asp:Content ContentPlaceHolderID="cphMaster" ID="cphEventTypeOrder" runat="server">
   

    <div class="container-fluid">
        
        <div class="row">
            <div class="col-md-6 col-lg-6">
                <div class="card">
                    <div class="stat-widget-five">
                        <div class="stat-icon">
                            <asp:Image ID="Image1" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/toolbox.png" />
                        </div>
                        <div class="stat-content">
                            <div class="stat-heading ">
                                <asp:HyperLink ID="HyperLink1" runat="server" Text="Manage Event Types" NavigateUrl="EventType_Manage.aspx" />                               
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
                            <asp:Image ID="Image2" runat="server" Width="32" Height="32" ImageUrl="images/icons/color-16/address-book-open.png" />
                        </div>
                        <div class="stat-content">
                            <div class="stat-heading ">                              
                                Re-Order Event Type
                            </div>
                            <div class="stat-text">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     

         <!-- Start Page Content -->

        

        <div class="row">
            <div class="col-12">

                <%--<asp:CollapsiblePanelExtender ID="cpExt_DisplayOrder" CollapsedText="Display Order (Click To Expand)" 
                            ExpandedText="Display Order (Click To Hide)" runat="server" TargetControlID="pnlDisplayOrder" 
                            ExpandControlID="lblDisplayOrder" CollapseControlID="lblDisplayOrder" TextLabelID="lblDisplayOrder" />--%>
                        
                        <div class="table-responsive m-t-40">
                            <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                

                                <asp:Repeater ID="rptDisplay" runat="server">
                                    <HeaderTemplate>
                                        <thead>
                                            <tr>
                                                <th>Action</th>                                               
                                                <th>
                                                    <asp:LinkButton ID="lnkName" CssClass="header" runat="server"><b>Name</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="lnkOwner" CssClass="header" runat="server"><b>Status</b></asp:LinkButton>
                                                </th>                                                
                                                <th>
                                                    <asp:LinkButton ID="lnkEnabled" CssClass="header" runat="server"><b>Current Position</b></asp:LinkButton>
                                                </th>
                                            </tr>
                                        </thead>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <asp:ImageButton CommandName="btnEdit" ID="btnEdit" runat="server" ImageUrl="images/icons/color-16/hammer.png"
                                                        ToolTip="Edit" />
                                                    <asp:HiddenField ID="hdnCompanyID" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "CompanyID")%>' />
                                                </td>
                                               
                                                <td><%#DataBinder.Eval(Container.DataItem, "Name")%></td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "Status")%></td>                                                
                                                <td><%#DataBinder.Eval(Container.DataItem, "Current Position")%></td>

                                            </tr>

                                        </tbody>


                                        <tfoot>
                                            <tr>
                                               <th>Action</th>                                               
                                                <th>
                                                    <asp:LinkButton ID="lnkName" CssClass="header" runat="server"><b>Name</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="lnkOwner" CssClass="header" runat="server"><b>Status</b></asp:LinkButton>
                                                </th>                                                
                                                <th>
                                                    <asp:LinkButton ID="lnkEnabled" CssClass="header" runat="server"><b>Current Position</b></asp:LinkButton>
                                                </th>
                                            </tr>
                                        </tfoot>



                                    </ItemTemplate>
                                   
                                </asp:Repeater>



                            </table>
                        </div>

                  

                <div class="form-group row" style="text-align: right;display:none;">
                                <div class="col-lg-12 ml-auto">
                                          <asp:Button ID="btnPrevious" runat="server" Text="Previous Page" ToolTip="Previous Page" CssClass="btn btn-info btn-mini" />
                                    &nbsp;&nbsp;<asp:Label runat="server" ID="lblPaging" />&nbsp;&nbsp;
                                    <asp:Button ID="btnNext" runat="server" Text="Next Page" ToolTip="Next Page" CssClass="btn btn-info btn-mini" />
                                    <asp:HiddenField ID="hidCurPage" runat="server" />
                 
                                </div>
                            </div>

            </div>
        </div>
        <!-- End PAge Content -->



    </div>


</asp:Content>