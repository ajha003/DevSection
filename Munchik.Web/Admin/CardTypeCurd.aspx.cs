using Munchki.Core.Entity;
using Munchki.Web.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Munchik.Web.Admin
{
    public partial class CardTypeCurd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                GetCardType(false);
                //  ShowRecord(false, -1);
            }
        }








        public void GetCardType(bool isDeleted)
        {

            var oController = new DBController();
            var list = oController.GetCardTypes().Where(x => x.IsDeleted == isDeleted).ToList();
            lblCardType.Text = list.Count.ToString();
            string strlng = @"<table class=""table table-bordered datatable"" id=""table-2"" role=""grid"">";
            System.Text.StringBuilder strBuilder = new StringBuilder();
            strBuilder.Append(strlng);
            strBuilder.Append(@"<thead>");
            strBuilder.Append(string.Format(@"<tr><th data-hide=""Rank"">{0}</th><th data-hide=""Rank"">{1}</th><th>{2}</th><th>{3}</th><th>{4}</th></tr>", "Type", "Public", "Is Active", "Created On Date", "Action"));
            strBuilder.Append("</thead>");
            strBuilder.Append("<tbody>");



            bool Isodd = false;

            string url = string.Empty;

            foreach (CardMasterTypes reg in list)
            {
                string Username = string.Empty;


                string temprow = string.Format(@"<tr class=""[CSS] gradeA""><td>{0}</td><td>{1}</td><td>{2}</td><td class=""center"">{3}</td><td class=""center"">{4}</td></tr>", reg.DisplayName.ToString(), Munchki.Web.Utils.UIHelper.GetDisplayLabel(!reg.IsPublic), Munchki.Web.Utils.UIHelper.GetDisplayLabel(reg.IsDeleted), reg.CreatedOnDate.ToShortDateString(), string.Format(@"<button id='btnEdit' type='button' class='btn btn-danger btn-flat btn-addon btn-xs m-b-10' onClick=""ShowAdd2('{0}','{1}','{2}','{3}')"">Edit</button>", reg.CardTypeId.ToString(), reg.DisplayName, reg.IsPublic.ToString(), reg.IsDeleted.ToString()));//'//);

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

                var cardMasterTypes = GetCardMaster(false, chkIsActive.Checked);

                var oController = new DBController();
                if (cardMasterTypes.CardTypeId < 0)
                    oController.InsertCardType(cardMasterTypes);
                else
                    oController.UpdateCardType(cardMasterTypes);

                GetCardType(chkShowDeleted.Checked);


                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "SuccessNotification('Success','Record has been added successfully')", true);
            }
        }

        private CardMasterTypes GetCardMaster(bool IsDeleted, bool IsPublished)
        {
            int iCardTypeid = -1;
            if (!string.IsNullOrEmpty(hdnValue.Value))
                iCardTypeid = Convert.ToInt32(hdnValue.Value);
            var cardMasterTypes = new CardMasterTypes()
            {
                CardTypeId = iCardTypeid,

                DisplayName = txtCardType.Text,
                IsDeleted = IsDeleted,
                IsPublic = IsPublished,
                ModifiedBy = 1,
                ModifiedOnDate = System.DateTime.Now


            };
            if (iCardTypeid == -1)
            {

                cardMasterTypes.CreatedBy = 1;
                cardMasterTypes.CreatedOnDate = System.DateTime.Now;
            }
            return cardMasterTypes;

        }




        protected void btnDeleted_Click(object sender, EventArgs e)
        {
            var cardMasterTypes = GetCardMaster(true, true);
            if (!string.IsNullOrEmpty(hdnIsRestore.Value))
            {
                cardMasterTypes = GetCardMaster(false, chkIsActive.Checked);
            }


            var oController = new DBController();
            if (cardMasterTypes.CardTypeId > 0)
                oController.UpdateCardType(cardMasterTypes);

            GetCardType(chkShowDeleted.Checked);
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "SuccessNotification('Success','Record has been added deleted successfully')", true);

        }

        protected void chkShowDeleted_CheckedChanged(object sender, EventArgs e)
        {
            // chkShowDeleted.Text = chkShowDeleted.Checked ? "Show Active" : "Show Deleted";
            chkShowDeleted.Text = chkShowDeleted.Text.Contains("Show Active") == true ? "Show Deleted" : "Show Active";
            //chkShowDeleted.Checked = !chkShowDeleted.Checked;
            GetCardType(chkShowDeleted.Checked);
        }
    }
}