using System.Web.Http;
using System.Web;
using System.Net.Http.Headers;
using System.Threading;
using System.Web.Http.Controllers;
using System;
using System.Text;
using System.Security.Principal;
using System.Linq;
using System.Configuration;
using Munchki.Infrastructure.Context;
using System.Net.Http;
using System.Net;

namespace Munchki.Web.Code.Controller
{
    public class AccountController// : AuthorizeAttribute
    {
        //private const string BasicAuthResponseHeader = "WWW-Authenticate";
        //private const string BasicAuthResponseHeaderValue = "Basic";
        ////   var Context = new DBContextController();
        //AccountContext Context = new AccountContext();


        //public string UsersConfigKey { get; set; }
        //public string RolesConfigKey { get; set; }

        //protected CustomPrincipal CurrentUser
        //{
        //    get { return Thread.CurrentPrincipal as CustomPrincipal; }
        //    set { Thread.CurrentPrincipal = value as CustomPrincipal; }
        //}

        //public override void OnAuthorization(HttpActionContext actionContext)
        //{
        //    try
        //    {
        //        AuthenticationHeaderValue authValue = actionContext.Request.Headers.Authorization;

        //        if (authValue != null && !String.IsNullOrWhiteSpace(authValue.Parameter) && authValue.Scheme == BasicAuthResponseHeaderValue)
        //        {
        //            Credentials parsedCredentials = ParseAuthorizationHeader(authValue.Parameter);

        //            if (parsedCredentials != null)
        //            {
        //                var user = Context.Users.Where(u => u.Username == parsedCredentials.Username && u.Password == parsedCredentials.Password).FirstOrDefault();
        //                if (user != null)
        //                {
        //                    var roles = user.Roles.Select(m => m.RoleName).ToArray();
        //                    var authorizedUsers = ConfigurationManager.AppSettings[UsersConfigKey];
        //                    var authorizedRoles = ConfigurationManager.AppSettings[RolesConfigKey];

        //                    Users = String.IsNullOrEmpty(Users) ? authorizedUsers : Users;
        //                    Roles = String.IsNullOrEmpty(Roles) ? authorizedRoles : Roles;

        //                    CurrentUser = new CustomPrincipal(parsedCredentials.Username, roles);

        //                    if (!String.IsNullOrEmpty(Roles))
        //                    {
        //                        if (!CurrentUser.IsInRole(Roles))
        //                        {
        //                            actionContext.Response = actionContext.Request.CreateResponse(HttpStatusCode.Forbidden);
        //                            actionContext.Response.Headers.Add(BasicAuthResponseHeader, BasicAuthResponseHeaderValue);
        //                            return;
        //                        }
        //                    }

        //                    if (!String.IsNullOrEmpty(Users))
        //                    {
        //                        if (!Users.Contains(CurrentUser.UserId.ToString()))
        //                        {
        //                            actionContext.Response = actionContext.Request.CreateResponse(HttpStatusCode.Forbidden);
        //                            actionContext.Response.Headers.Add(BasicAuthResponseHeader, BasicAuthResponseHeaderValue);
        //                            return;
        //                        }
        //                    }

        //                }
        //            }
        //        }
        //    }
        //    catch (Exception)
        //    {
        //        actionContext.Response = actionContext.Request.CreateResponse(HttpStatusCode.Unauthorized);
        //        actionContext.Response.Headers.Add(BasicAuthResponseHeader, BasicAuthResponseHeaderValue);
        //        return;

        //    }
        //}

        //private Credentials ParseAuthorizationHeader(string authHeader)
        //{
        //    string[] credentials = Encoding.ASCII.GetString(Convert.FromBase64String(authHeader)).Split(new[] { ':' });

        //    if (credentials.Length != 2 || string.IsNullOrEmpty(credentials[0]) || string.IsNullOrEmpty(credentials[1]))
        //        return null;

        //    return new Credentials() { Username = credentials[0], Password = credentials[1], };
        //}


      
    }

    //public class Credentials
    //{
    //    public string Username { get; set; }
    //    public string Password { get; set; }
    //}
    //public class CustomPrincipal : IPrincipal
    //{
    //    public IIdentity Identity { get; private set; }
    //    public bool IsInRole(string role)
    //    {
    //        if (roles.Any(r => role.Contains(r)))
    //        {
    //            return true;
    //        }
    //        else
    //        {
    //            return false;
    //        }
    //    }

    //    public CustomPrincipal(string Username)
    //    {
    //        this.Identity = new GenericIdentity(Username);
    //    }
    //    public CustomPrincipal(string Username,string[] r)
    //    {
    //        this.Identity = new GenericIdentity(Username);
    //        this.roles = r;
    //    }
    //    public int UserId { get; set; }
    //    public string FirstName { get; set; }
    //    public string LastName { get; set; }
    //    public string[] roles { get; set; }
    //}
}