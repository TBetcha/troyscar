using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(troyscar.Startup))]
namespace troyscar
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
