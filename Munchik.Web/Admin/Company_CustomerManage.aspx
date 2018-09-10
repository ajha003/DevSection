<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Company_CustomerManage.aspx.cs" Inherits="Munchki.Web.Admin.Company_CustomerManage" MasterPageFile="~/Admin/Admin.Master"  %>

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
                            Manage Companies (Customer) &nbsp;&nbsp;
                        <asp:Button runat="server" Text="Create" ID="btnCreate" CssClass="btn btn-info m-b-10 m-l-5" />


                        </div>
                        <div class="stat-text">
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="stat-widget-five">

                    <div class="stat-content">
                        <div class="stat-heading ">
                            <div>
                                <p>
                                    Use the search function below to filter and find the records that you are specifically looking for. 
     Enter your criteria into the search field, and pick as many of the options as you want, then hit "Search Existing Records",
     any results that are found will then be displayed on the screen.
                                </p>
                                <br />
                                <b>Return All</b><br />
                                <p>
                                    If you want to view all the results, click "Return All" and all filters will be ignored, this
     may take some time to return depending on the number of entries stored in the database.
                                </p>
                                <br />
                                <br />
                            </div>



                        </div>
                        <div class="stat-text">
                        </div>
                    </div>
                </div>
            </div>
        </div>
   <br />
        <br />
    
        <!-- Start Page Content -->
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <div class="card">
                    <div class="card-body">
                        <div class="form-validation">

                            <div class="form-group row">
                                <asp:Label CssClass="col-lg-4 col-form-label" runat="server" ID="lblSearch">Search <span class="text-danger">*</span></asp:Label>
                                <div class="col-lg-6">

                                    <asp:TextBox ID="txtSearch" runat="server" MaxLength="40" placeholder="search criteria" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqField" runat="server" ControlToValidate="txtSearch" ForeColor="#ef5350" 
                                        ValidationGroup="ValManage" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <asp:Label CssClass="col-lg-4 col-form-label" runat="server" ID="lblFilters">Filters: </asp:Label>

                                <div class="col-lg-6">
                                    <asp:CheckBox ID="chkIsPublish" runat="server" />
                                    <asp:Label CssClass="col-lg-4 col-form-label" runat="server" ID="lblName">Name </asp:Label>
                                </div>


                            </div>


                            <div class="form-group row">
                                <div class="col-lg-8 ml-auto">
                                    <asp:Button ID="btnSearch" ToolTip="Search" Text="Search" runat="server" CssClass="btn btn-info m-b-10 m-l-5" ValidationGroup="ValManage" />
                                    &nbsp;&nbsp;
                            <asp:Button ID="btnReturnAll" ToolTip="Return All" Text="Return All" runat="server"
                                CssClass="btn btn-info m-b-10 m-l-5" /><asp:HiddenField ID="hidSearchReturnAll" runat="server" />
                                </div>
                            </div>

                        </div>


                    </div>
                </div>
            </div>
            <!-- End PAge Content -->
        </div>
        <!-- End PAge Content -->

    </div>

    <div class="container-fluid">
        <!-- Start Page Content -->
        <div class="row">
            <div class="col-12">
                
                        
                        <div class="table-responsive m-t-40">
                            <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                
                    


                                <asp:Repeater ID="rptSearch1" runat="server">
                                    <HeaderTemplate>
                                        <thead>
                                            <tr>
                                                <th>Action</th>
                                                <th>
                                                    <asp:LinkButton ID="lnlkIdentifier" CssClass="header" runat="server"><b>Identifier</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="lnkType" CssClass="header" runat="server"><b>Type</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="lnkName" CssClass="header" runat="server"><b>Name</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="lnkEnabled" CssClass="header" runat="server"><b>Enabled</b></asp:LinkButton>
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
                                                    <asp:HiddenField ID="hidCO_COID" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "CO_COID")%>' />
                                                </td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "lnlkIdentifier")%></td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "lnkType")%></td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "lnkName")%></td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "lnkEnabled")%></td>

                                            </tr>

                                        </tbody>


                                        <tfoot>
                                            <tr>
                                                <th>Action</th>
                                                <th>
                                                    <asp:LinkButton ID="LinkButton1" CssClass="header" runat="server"><b>Identifier</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="LinkButton2" CssClass="header" runat="server"><b>Type</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="LinkButton3" CssClass="header" runat="server"><b>Name</b></asp:LinkButton>
                                                </th>
                                                <th>
                                                    <asp:LinkButton ID="LinkButton4" CssClass="header" runat="server"><b>Enabled</b></asp:LinkButton>
                                                </th>
                                            </tr>
                                        </tfoot>



                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <asp:ImageButton CommandName="btnEdit" ID="ImageButton1" runat="server" ImageUrl="images/icons/color-16/hammer.png"
                                                        ToolTip="Edit" />
                                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "CO_COID")%>' />
                                                </td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "lnlkIdentifier")%></td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "lnkType")%></td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "lnkName")%></td>
                                                <td><%#DataBinder.Eval(Container.DataItem, "lnkEnabled")%></td>

                                            </tr>

                                        </tbody>
                                    </AlternatingItemTemplate>
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