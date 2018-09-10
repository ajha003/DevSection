<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CardMaster.aspx.cs" Inherits="Munchki.Web.Admin.CardMaster" MasterPageFile="~/Admin/Admin.Master" %>

<asp:Content ID="contentheader" runat="server" ContentPlaceHolderID="CphMessage">
     
    <%--<script src="js/Module.js"></script>--%>
    <%--<script src="Js/jquery.dataTables.min.js" type="text/javascript"></script>--%>

    <%--<script type="text/javascript">
        var iViewData = -1;
        var _url = 'http://localhost:64140/api/Munchki';

        function LoaddataTable() {
            var filterValues = {};
            $("#dtCardMaster").dataTable({
                serverSide: true,
                bFilter: false,
                "oLanguage": {
                    "sZeroRecords": "No records to display",
                    "sSearch": "Search from all Records"
                },

                "bPaginate": true,
                "bProcessing": true,
                "bFilter": false,
                "bInfo": true,
                "bsearching": true,
                "bLengthChange": true,

                "sAjaxSource": url + '/GetCard/' + iViewData,
                aoColumns: [


                    {
                        "sName": "CardProviderId",
                        "bSearchable": false,
                        "bSortable": false,
                        "fnRender": function (oObj) {
                            return '<a href=\"Home/Details/?CardProviderId=' + oObj.aData[0] + '\">View</a>' + ' | ' + '<a href=\"Home/Edit/?CardProviderId=' + oObj.aData[0] + '\">Edit</a>' + ' | ' + '<a href=\"/Home/Delete?CardProviderId=' + oObj.aData[0] + '\">Delete</a>';
                        }
                    },

                    { "sName": "DisplayName", "bSearchable": true },
                    { "sName": "IsPublic", "bSearchable": true },
                    { "sName": "IsDeleted", "bSearchable": true },


                ],





            });

        }


        $(document).ready(function () {
            //LoaddataTable();

        });

        function ShowAdd() {
            $("#divAddEdit").show();
            return false;
        }

        function RefreshList() {

            $.ajax({
                type: "GET",
                url: _url + '/GetCard/' + iViewData,
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {

                    alert(response.d);
                },
                error: function (response) {
                    alert(response.d);
                }
            });
        }



        $(function () {
            RefreshList();
        });

        function OnSuccess(response) {

            var table = $("#divRepeator table").eq(0).clone(true);
            var customers = response;//.d;
            $("#divRepeator table").eq(0).remove();
            $(customers).each(function () {


                $(".name", table).html(this.DisplayName);
                $(".city", table).html(this.IsPublic);
                $(".postal", table).html(this.IsDeleted);
                $(".deleted", table).html(this.CreatedBy);
                $(".phone", table).html(this.CreatedOnDate);
                $("#divRepeator").append(table).append("<br />");

            });
            table = $("#divRepeator table").eq(0).clone(true);
        }

        function AddRecord() {
            debugger;
            var cardname = $("#" + '<%=txtCardName.ClientID%>').val();
            var chk = $('#<%=chkIsPublish.ClientID%>').is(':checked');




            $.ajax({
                type: "GET",
                cache: false,
                url: _url + '/AddCard',

                data: {
                    'CardName='+ cardname + '&IsActive=' + chk
                }
            }).done(function (members) {

                RefreshList();
            }).fail(function (xhr, status) {
                alert('Error');
            });
        }
    </script>--%>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#table-1').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });

            $('#table-2').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });


        });
        function ShowAdd() {
            $("#divAddEdit").modal('show');
            $("#divCardType").modal('hide');
            $('#<%=txtCardName.ClientID%>').focus();
            return false;
        }
        function ShowAdd2() {
            $("#divCardType").modal('show');
            $("#divAddEdit").modal('hide');
            $('#<%=txtCardType.ClientID%>').focus();
            $("#modalShareDigitalEvent").modal('show');
            // swal("Hey, Here's a message !!");
            return false;
        }
        function HideCancel() {
            alert('hello');
            $("#divAddEdit").modal('hide');
            $("#divCardType").modal('hide');
            $('#<%=txtCardType.ClientID%>').val('');
            $('#<%=txtCardName.ClientID%>').val('');

            return false;
        }



        function OnHelp(header, message) {

            swal(header, message);
            return false;
        }
        function DoPostBack() {


            return true;

        }
    </script>

</asp:Content>


<asp:Content ContentPlaceHolderID="cphMaster" ID="defaultLogin" runat="server">

    <asp:UpdatePanel ID="uppanle" runat="server">
        <ContentTemplate>

                <div id="ex1" class="modal">
        <p>Thanks for clicking. That felt good.</p>
        <a href="#" rel="modal:close">Close</a>
    </div>

    <!-- Link to open the modal -->
    <p><a href="#ex1" rel="modal:open">Open Modal</a></p>
    <div id="divAddEdit" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <!-- Modal content-->

            <div class="modal-body">
                <div class="card">
                    <div class="card-body">
                        <div class="form-validation">


                            <div class="form-group row">
                                <label class="col-lg-4 col-form-label" style="cursor: help" for="val-username">Provider Name <span class="text-danger">*</span></label>
                                <div class="col-lg-6">

                                    <asp:TextBox ID="txtCardName" runat="server" MaxLength="40" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqField" CssClass="color-danger" runat="server" ControlToValidate="txtCardName" ValidationGroup="valCard" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-4 col-form-label" for="val-email">Is Publish <span class="text-danger">*</span></label>
                                <div class="col-lg-6">
                                    <asp:CheckBox ID="chkIsPublish" runat="server" />
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-lg-8 ml-auto">

                                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" ValidationGroup="valCard" OnClientClick="DoPostBack()" />
                                    <button type="button" class="btn btn-inverse" onclick="HideCancel()">Cancel</button>
                                </div>
                            </div>

                        </div>


                    </div>
                </div>
            </div>


        </div>
    </div>

            <div class="row">

                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-title">
                            <div style="float: left">
                                <h4 class="card-title " onclick="OnHelp('Card Provider','Card Provider application going to support.')" style="cursor: help">Card Provider (<asp:Label ID="lblCount" CssClass="tip" data-tip="List of card provider company" runat="server"></asp:Label>) </h4>
                            </div>
                            <div style="float: right">
                                <button type="button" class="btn btn-primary btn-flat btn-addon m-b-10 m-l-5" onclick="ShowAdd()"><i class="ti-plus"></i>New Card Provider</button>
                            </div>
                        </div>
                        <div class="card-body">

                            <asp:Literal ID="ltrlControl" runat="server"></asp:Literal>
                        </div>
                    </div>
                    <div class="row">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-title">
                            <div style="float: left">
                                <h4 class="card-title"><span onclick="OnHelp('Card Type','Card type application going to support.')" style="cursor: help">Card Type</span> (<asp:Label ID="lblCardType" runat="server"></asp:Label>) </h4>
                            </div>
                            <div style="float: right">
                                <button type="button" class="btn btn-primary btn-flat btn-addon m-b-10 m-l-5" onclick="ShowAdd2()"><i class="ti-plus"></i>New Card Type</button>
                            </div>
                        </div>
                        <div class="card-body">

                            <asp:Literal ID="ltrlCardType" runat="server"></asp:Literal>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12" id="divCardType" style="display: none">
                            <div class="card">
                                <div class="card-body">
                                    <div class="form-validation">
                                        <asp:Literal ID="ltrlMessageCardType" runat="server"></asp:Literal>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Card Type <span class="text-danger">*</span></label>
                                            <div class="col-lg-6">

                                                <asp:TextBox ID="txtCardType" runat="server" MaxLength="40" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator CssClass="color-danger" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCardType" ValidationGroup="valCardType" ErrorMessage="*Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Is Publish<span class="text-danger">*</span></label>
                                            <div class="col-lg-6">
                                                <asp:CheckBox ID="chkIsActive" runat="server" />
                                            </div>
                                        </div>


                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">

                                                <asp:Button ID="btnCardType" CssClass="btn btn-success" runat="server" Text="Save" ValidationGroup="valCardType" OnClick="btnCardType_Click" />
                                                <button type="button" class="btn btn-inverse" onclick="HideCancel()">Cancel</button>
                                            </div>
                                        </div>

                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
