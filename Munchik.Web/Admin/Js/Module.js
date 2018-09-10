 

var CA_CatID = -1;
var CA_CurrOption = 'All';
var CA_SearchTerm = '';
var CA_IsAllContent = false;
$(document).ready(function () {
    // Load Global Categories
    MU_BindCard(-1);
    // Load list of Solve Space
    // Attach event to OnChange of SortBy Dropdown
    //$("#CA_SS_ddlSortBy").on("change", function () {
    //    // CA_LoadSolveSpacesList();
    //});
    //$("#CA_SS_txtSearch").on("keydown", function (event) {
    //    if (event.which == 13) {
    //        event.preventDefault();

    //    }
    //});
});

function MU_BindCard(val) {
    var _URL = url + "GetCard/" + val;
   
    CA_MakeRequestG(_URL, "", MU_OnBindCard);
}
function MU_OnBindCard(d) {
    
  //  $('#CA_SS_dvCatContainer').setTemplateURL('/Admin/templates/tmpCard.htm');
    //$('#CA_SS_dvCatContainer').show().processTemplate(d);
    var xml = $(XMLDocument);
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var cards = xml.find("Table");

    var table = $("#divRepeator table").eq(0).clone(true);
    $("#divRepeator table").eq(0).remove();



    cards.each(function () {
        var customer = $(this);
        $(".DisplayName", table).html(cards.find("DisplayName").text());
        $(".DisplayName", table).html(cards.find("DisplayName").text());
        $(".DisplayName", table).html(cards.find("DisplayName").text());
       
        table = $("#divRepeator table").eq(0).clone(true);
    });

}