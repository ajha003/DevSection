using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Munchik.Web.Models;
using System;
using System.Collections.Generic;
using System.Security.Principal;
using System.Web;

//using Munchki.Infrastructure;

namespace Munchki.Web.Code.Controller
{
    public class UsersController
    {
        // GET: Users 
        public static Boolean isAdminUser()
        {

            if (IsAuthenticated())
            {



                if (HttpContext.Current.User.IsInRole(Munchki.Web.Code.Utils.PrefixHelper.ROLENAME_ADMIN))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            return false;
        }


        public static Boolean IsInRole(string RoleName)
        {

            if (IsAuthenticated())
            {

                if (HttpContext.Current.User.IsInRole(RoleName))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            return false;
        }


        public static Boolean IsAuthenticated()
        {
            var ouser = HttpContext.Current.User.Identity;
            if (ouser != null)
                return true;
            return false;
        }


    }



    interface MyIPrincipal : IPrincipal
    {
        string Id { get; set; }
        string UserName { get; set; }
    }
    public class MyCustomPrincipal : MyIPrincipal
    {
        public IIdentity Identity { get; private set; }
        public bool IsInRole(string role)
        {

            if (GetRoles == null) return false;
            return GetRoles.Contains(role);
        }
        public MyCustomPrincipal(string email)
        {
            this.Identity = new GenericIdentity(email);
        }
        public string Id { get; set; }
        public string UserName { get; set; }
        public int IsAdmin { get; set; }
        public List<string> GetRoles { get; set; }
    }
    public class CustomPrincipalSerializer
    {

        public string Id { get; set; }
        public string UserName { get; set; }
        public int IsAdmin { get; set; }
        public List<string> GetRoles { get; set; }
    }
}