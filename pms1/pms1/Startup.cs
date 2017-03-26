using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(pms1.Startup))]
namespace pms1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
