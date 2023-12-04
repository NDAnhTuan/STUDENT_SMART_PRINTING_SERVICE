//using Microsoft.Owin;
//using Owin;
//using System;
//using System.Threading.Tasks;
//using Microsoft.AspNet.Identity;
//using Microsoft.Owin.Security.Cookies;
//using Microsoft.AspNet.Identity.EntityFramework;
//using Microsoft.AspNetCore.Http;
//using PathString = Microsoft.Owin.PathString;

//[assembly: OwinStartup(typeof(SMART_PRINTER_SERVICE.Startup))]

//namespace SMART_PRINTER_SERVICE
//{
//    public class Startup
//    {
//        public void Configuration(IAppBuilder app)
//        {
//            app.UseCookieAuthentication(new CookieAuthenticationOptions()
//            {
//                AuthenticationType = 
//                DefaultAuthenticationTypes.ApplicationCookie,
//                LoginPath = new PathString("/LoginTo/Login")
//            }) ;
//        }
//    }
//}