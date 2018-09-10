using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
 
using Munchik.Web.Models;

namespace Munchki.Web.Code.Controller
{
    public class RoleController
    {

        private bool isAdmin;
        public RoleController()
        {
            isAdmin = true;
        }

        public void CreateRole(string roleName)
        {
            if (!isAdmin) return;

            ApplicationDbContext context = new ApplicationDbContext();

            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));


            // In Startup iam creating first Admin Role and creating a default Admin User     
            if (!roleManager.RoleExists(roleName))
            {

                // first we create Admin rool    
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = roleName;
                roleManager.Create(role);


            }

            
        }

        public void AssignUserToRole(string roleName, ApplicationUser user)
        {


            ApplicationDbContext context = new ApplicationDbContext();

           // var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));


            // In Startup iam creating first Admin Role and creating a default Admin User     

            
            UserManager.AddToRole(user.Id, roleName);


        }
    }
}