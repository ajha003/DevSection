using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Munchki.Core;
using Munchki.Core.Entity;
using Munchki.Infrastructure;
using Munchki.Web.Code;
//using Munchki.Web.Code;
namespace Munchki.Web.Admin
{
    public partial class CardMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCardProvider();
                GetCardType();
                //  ShowRecord(false, -1);
            }
        }


   
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtCardName.Text))
            {

                var oCardProvider = new CardMasterProvider()
                {
                    CardProviderId = -1,
                    CreatedBy = 1,
                    CreatedOnDate = System.DateTime.Now,
                    DisplayName = txtCardName.Text,
                    IsDeleted = false,
                    IsPublic = chkIsPublish.Checked,

                    ModifiedBy = 1,
                    ModifiedOnDate = System.DateTime.Now

                };
                var oController = new DBController();
                oController.InsertCardProvider(oCardProvider);
                GetCardProvider();
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "SuccessNotification('Success','Record has been added successfully')", true);
            }

        }



        public void GetCardProvider()
        {

            var oController = new DBController();
            var list = oController.GetCardProviders();
            lblCount.Text = list.Count.ToString();
            string strlng = @"<table class=""table table-bordered datatable"" id=""table-1"" role=""grid"">";
            System.Text.StringBuilder strBuilder = new StringBuilder();
            strBuilder.Append(strlng);
            strBuilder.Append(@"<thead>");

            strBuilder.Append(string.Format(@"<tr><th data-hide=""Rank"">{0}</th><th data-hide=""Rank"">{1}</th><th>{2}</th><th>{3}</th></tr>", "Provider", "Is Public", "Is Deleted", "Action"));
            strBuilder.Append("</thead>");
            strBuilder.Append("<tbody>");



            bool Isodd = false;

            string url = string.Empty;

            foreach (CardMasterProvider reg in list)
            {
                string Username = string.Empty;


                string temprow = string.Format(@"<tr class=""[CSS] gradeA""><td>{0}</td><td>{1}</td><td>{2}</td><td class=""center"">{3}</td></tr>", reg.DisplayName.ToString(), Utils.UIHelper.GetDisplayLabel(reg.IsPublic), Utils.UIHelper.GetDisplayLabel(reg.IsDeleted), reg.CreatedOnDate.ToShortDateString());//'//);

                if (!Isodd)
                {
                    temprow = temprow.Replace("[CSS]", "odd gradeX");
                    Isodd = true;
                }
                else
                {
                    temprow = temprow.Replace("[CSS]", "even gradeC");
                    Isodd = false;
                }
                strBuilder.Append(temprow);
            }

            ltrlControl.Text = strBuilder.ToString() + "</tbody></table>";

        }


        public void GetCardType()
        {

            var oController = new DBController();
            var list = oController.GetCardTypes();
            lblCardType.Text = list.Count.ToString();
            string strlng = @"<table class=""table table-bordered datatable"" id=""table-2"" role=""grid"">";
            System.Text.StringBuilder strBuilder = new StringBuilder();
            strBuilder.Append(strlng);
            strBuilder.Append(@"<thead>");
            ///   strBuilder.Append(string.Format(@"<tr class=""replace-inputs""><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th><th>{4}</th><th>{5}</th><th>{6}</th><th>{7}</th></tr>", "", "Title", "Sub-Title", "Rank", "Is Active", "Created By", "Created Date", "Edit"));

            strBuilder.Append(string.Format(@"<tr><th data-hide=""Rank"">{0}</th><th data-hide=""Rank"">{1}</th><th>{2}</th><th>{3}</th></tr>", "Type", "Is Public", "Is Deleted", "Action"));
            strBuilder.Append("</thead>");
            strBuilder.Append("<tbody>");



            bool Isodd = false;

            string url = string.Empty;

            foreach (CardMasterTypes reg in list)
            {
                string Username = string.Empty;


                string temprow = string.Format(@"<tr class=""[CSS] gradeA""><td>{0}</td><td>{1}</td><td>{2}</td><td class=""center"">{3}</td></tr>", reg.DisplayName.ToString(), Utils.UIHelper.GetDisplayLabel(reg.IsPublic), Utils.UIHelper.GetDisplayLabel(reg.IsDeleted), reg.CreatedOnDate.ToShortDateString());//'//);

                if (!Isodd)
                {
                    temprow = temprow.Replace("[CSS]", "odd gradeX");
                    Isodd = true;
                }
                else
                {
                    temprow = temprow.Replace("[CSS]", "even gradeC");
                    Isodd = false;
                }
                strBuilder.Append(temprow);
            }

            ltrlCardType.Text = strBuilder.ToString() + "</tbody></table>";

        }

        protected void btnCardType_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtCardType.Text))
            {

                var cardMasterTypes = new CardMasterTypes()
                {
                    CardTypeId = -1,
                    CreatedBy = 1,
                    CreatedOnDate = System.DateTime.Now,
                    DisplayName = txtCardType.Text,
                    IsDeleted = false,
                    IsPublic = chkIsPublish.Checked,

                    ModifiedBy = 1,
                    ModifiedOnDate = System.DateTime.Now

                };
                var oController = new DBController();
                oController.InsertCardType(cardMasterTypes);
                GetCardType();


                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "SuccessNotification('Success','Record has been added successfully')", true);
            }
        }



    }
}