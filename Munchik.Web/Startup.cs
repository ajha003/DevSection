using Microsoft.Owin;
using Owin;
using Munchki.Web.Code.Controller;
using Munchki.Web.Code.Utils;
[assembly: OwinStartupAttribute(typeof(Munchik.Web.Startup))]
namespace Munchik.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            var roleController = new RoleController();
            roleController.CreateRole(PrefixHelper.ROLENAME_ADMIN);
            roleController.CreateRole(PrefixHelper.ROLENAME_USER);
        }
    }
}
