using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Pournaseri_5.Startup))]
namespace Pournaseri_5
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
