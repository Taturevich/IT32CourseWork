using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NewCourseWork.Startup))]
namespace NewCourseWork
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
