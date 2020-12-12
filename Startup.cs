using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(carshop.Startup))]
namespace carshop
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
