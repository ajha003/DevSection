using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Munchik.Web.Models;
using Munchki.Web.Code.Utils;
using Munchki.Web.Code.Controller;
using Munchki.Core.Entity;
using Munchki.Web.Code;

namespace Munchik.Web.Account
{
    public partial class Register : Page
    {
        public string MinYear
        {
            get
            {
                return System.DateTime.Now.AddYears(-100).Year.ToString();
            }
        }

        public string MaxYear
        {
            get
            { return System.DateTime.Now.Year.ToString(); }
        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = txtEmail.Value, Email = txtEmail.Value };
            IdentityResult result = manager.Create(user, txtPassword.Value);
            if (result.Succeeded)
            {

                string code = manager.GenerateEmailConfirmationToken(user.Id);
                string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);


                EmailHelper.SendEmail(user.Email, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);


                ///Add User to own table
                var oUser = new Munchki.Core.Entity.Users()
                {
                    AltEmail = "",
                    AspNetUser = user.Id,
                    AuthenticatedDateTime = System.DateTime.Now,
                    CreatedDateTime = System.DateTime.Now,
                    DeletedBy = -1,
                    DeletedDateTime = System.DateTime.Now,
                    Email = txtEmail.Value,
                    FirstName = txtFirstName.Text,
                    LastName = txtLastName.Text,
                    IsAdmin = false,
                    IsAuthenticated = false,
                    IsDeleted = false,
                    IsVerified = false,
                    UserId = -1,
                    UserName = txtEmail.Value
                       ,
                    VerfiiedDateTime = System.DateTime.Now



                };
                var users = new DBController().AddUser(oUser);


                ///Assign role to user

                new RoleController().AssignUserToRole(Munchki.Web.Code.Utils.PrefixHelper.ROLENAME_USER, user);




                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}