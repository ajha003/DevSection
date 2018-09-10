<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CardType.aspx.cs" Inherits="Munchki.Web.Admin.CardType" MasterPageFile="~/Admin/Admin.Master" %>

<asp:Content ID="contentheader" runat="server" ContentPlaceHolderID="CphMessage">

    <script type="text/javascript">
        $(document).ready(function () {

            $('#table-1').DataTable({
                dom: 'Bfrtip',
                pageLength: 5,
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });

            $('#table-2').DataTable({
                dom: 'Bfrtip',
                pageLength: 5,
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });


        });
        function ShowAdd() {

            $("#divCardType").hide();

            return false;
        }

        function DeleteRecord(id) {

        }
        function ShowAdd2(id, txt, publish, isdeleted) {
            $("#divCardType").show();
            $('#<%=txtCardType.ClientID%>').val('');
            $('#<%=chkIsActive.ClientID%>').prop('checked', false);
            $('#<%=btnDeleted.ClientID%>').hide();
            $('#<%=txtCardType.ClientID%>').focus();
             $('#<%=hdnIsRestore.ClientID%>').val('');
            // swal("Hey, Here's a message !!");
            $("#divMainCard").hide();
            if (id != undefined) {
                debugger;
                $('#<%=hdnValue.ClientID%>').val(id);
                $('#<%=txtCardType.ClientID%>').val(txt);
                $('#<%=btnDeleted.ClientID%>').show();

                if (publish == 'True') {
                    $('#<%=chkIsActive.ClientID%>').prop('checked', true);
                }
                else {
                    $('#<%=chkIsActive.ClientID%>').prop('checked', false);
                }

                if (isdeleted == 'True') {
                    $('#<%=btnDeleted.ClientID%>').val('Restore');

                      $('#<%=hdnIsRestore.ClientID%>').val(id);
                    
                }

                return false;
            }
            return false;
        }
        function HideCancel() {

            $("#divAddEdit").hide();
            $("#divCardType").hide();
            $('#<%=txtCardType.ClientID%>').val('');
              $("#divMainCard").show();

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
    <asp:HiddenField ID="hdnValue" runat="server" />
       <asp:HiddenField ID="hdnIsRestore" runat="server" />
    <div class="row" style="width: 100%">
        <div class="col-12" id="divMainCard">
            <div class="card">
                <div class="card-title">
                    <div style="float: left">
                        <h4 class="card-title"><span onclick="OnHelp('Card Type','Card type application going to support.')" style="cursor: help">Card Type</span> (<asp:Label ID="lblCardType" runat="server"></asp:Label>) </h4>
                    </div>
                    <div style="float: right">
                        <button type="button" class="btn btn-primary btn-flat btn-addon m-b-10 m-l-5" onclick="ShowAdd2()"><i class="ti-plus"></i>New Card Type</button>
                        <asp:CheckBox ID="chkShowDeleted" runat="server" CssClass="alert" AutoPostBack="true" OnCheckedChanged="chkShowDeleted_CheckedChanged"
                            Text="Show Deleted" />
                    </div>
                </div>
                <div class="card-body">

                    <asp:Literal ID="ltrlCardType" runat="server"></asp:Literal>
                </div>
            </div>
        </div>


    </div>
    <div class="row" style="width: 100%">
        <div class="col-12" id="divCardType" style="display: none">
            <div class="card">
                 <div class="card-title">
                  <h4 class="card-title">Add / Edit Card</h4>
                </div>
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

                                <asp:Button ID="btnDeleted" CssClass="btn btn-danger" runat="server" Text="Delete" OnClick="btnDeleted_Click" OnClientClick="return javascript:confirm('Are you sure want to delete record?')" />
                                <button type="button" class="btn btn-inverse" onclick="HideCancel()">Cancel</button>
                            </div>
                        </div>

                    </div>


                </div>
            </div>
        </div>
    </div>



</asp:Content>
