using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Munchik.Web.Models;
using Munchki.Web.Code.Controller;
using Munchki.Web.Utils;
using System.Web.Security;
using System.Web.Script.Serialization;
using System.Linq;
using System.Collections.Generic;
namespace Munchik.Web.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            if(!IsPostBack)
            {
                if (HttpContext.Current.User != null)
                    RedirectPostLogin();
            }


            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }
        private void SaveSession(ApplicationUser user)
        {
            CustomPrincipalSerializer objSerializer = new CustomPrincipalSerializer();
            var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
            var rolemanager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

         
            bool IsAdmin = rolemanager.IsInRole(user.Id, Munchki.Web.Code.Utils.PrefixHelper.ROLENAME_ADMIN);
            var roles = rolemanager.GetRoles(user.Id);
           
            objSerializer.Id = user.Id;
            objSerializer.UserName = user.UserName;
            objSerializer.IsAdmin = IsAdmin == true ? 1 : 0;
            objSerializer.GetRoles = roles.ToList();
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            string userData = serializer.Serialize(objSerializer);
            FormsAuthenticationTicket formAuthTicket = null;
            formAuthTicket = new FormsAuthenticationTicket(1, user.Email, DateTime.Now, DateTime.Now.AddMinutes(15), false, userData);
            string encformAuthTicket = FormsAuthentication.Encrypt(formAuthTicket);
            HttpCookie formAuthCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encformAuthTicket);
            System.Web.HttpContext.Current.Response.Cookies.Add(formAuthCookie);
        }

        private void RedirectPostLogin()
        {
            if (UsersController.isAdminUser())
                IdentityHelper.RedirectToReturnUrl("~/Admin/default.aspx", Response);

            else
    if (UsersController.IsInRole(Munchki.Web.Code.Utils.PrefixHelper.ROLENAME_USER))
                IdentityHelper.RedirectToReturnUrl("~/default.aspx", Response);


        }
        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();



                // This doen't count login failures towards account lockout
                // To enable password failures to trigger lockout, change to shouldLockout: true
                var result = signinManager.PasswordSignIn(txtemail.Text, txtpwd.Text, chkRemberme.Checked, shouldLockout: false);

                switch (result)
                {
                    case SignInStatus.Success:
                        var user = signinManager.UserManager.FindByEmail(txtemail.Text);
                        SaveSession(user);
                        HttpCookie formAuthCookie = Request.Cookies[FormsAuthentication.FormsCookieName];
                        if (formAuthCookie != null)
                        {
                            //Decrypt the cookie value.  
                            FormsAuthenticationTicket formAuthTicket = FormsAuthentication.Decrypt(formAuthCookie.Value);
                            JavaScriptSerializer objSerializer = new JavaScriptSerializer();
                            //Deserialize the cookie value  
                            CustomPrincipalSerializer serializeModel = objSerializer.Deserialize<CustomPrincipalSerializer>(formAuthTicket.UserData);
                            MyCustomPrincipal newUser = new MyCustomPrincipal(formAuthTicket.Name);
                            newUser.Id = serializeModel.Id;
                            newUser.UserName = serializeModel.UserName;
                            newUser.IsAdmin = serializeModel.IsAdmin;
                            newUser.GetRoles = serializeModel.GetRoles;
                            //Save details in the httpcontext  
                            HttpContext.Current.User = newUser;
                        }
                        RedirectPostLogin();


                      //  IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                        break;
                    case SignInStatus.LockedOut:
                        Response.Redirect("/Account/Lockout");
                        break;
                    case SignInStatus.RequiresVerification:
                        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                        Request.QueryString["ReturnUrl"],
                                                        chkRemberme.Checked),
                                          true);
                        break;
                    case SignInStatus.Failure:
                    default:
                        ltrlLogin.Text = "Invalid login attempt";
                        ltrlLogin.Visible = true;
                        break;
                }
            }
        }
    }
}