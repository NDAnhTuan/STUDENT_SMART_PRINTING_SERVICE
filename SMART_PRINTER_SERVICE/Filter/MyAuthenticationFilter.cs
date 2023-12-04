//////using System.Web.Mvc.Filters;
//////using System.Web.Mvc;

//////public class MyAuthenticationFilter : ActionFilterAttribute, IAuthenticationFilter
//////{
//////    public void OnAuthentication(AuthenticationContext filterContext)
//////    {
//////        if (string.IsNullOrEmpty(Convert.ToString(filterContext.HttpContext.Session["UserName"])))
//////        {
//////            filterContext.Result = new HttpUnauthorizedResult();
//////        }
//////        else
//////        {
//////            return;
//////        }
//////    }

//////    public void OnAuthenticationChallenge(AuthenticationChallengeContext filterContext)
//////    {
//////    }
//////}


////public class MyAuthenticationFilter : System.Web.Mvc.ActionFilterAttribute, IAuthenticationFilter
////{
////    private readonly IHttpContextAccessor _httpContextAccessor;

////    public MyAuthenticationFilter(IHttpContextAccessor httpContextAccessor)
////    {
////        _httpContextAccessor = httpContextAccessor;
////    }

////    public void OnAuthentication(AuthenticationContext filterContext)
////    {
////        public void OnAuthentication(AuthenticationContext filterContext)
////        {
////            if (filterContext.Result == null || filterContext.Result is HttpUnauthorizedResult)
////            {
////                // Redirecting the user to the Login action of the Account controller
////                filterContext.Result = new RedirectToActionResult("Login", "Account");
////            }
////        }

////    }

////    public void OnAuthenticationChallenge(AuthenticationChallengeContext filterContext)
////    {
////        // Logic for authentication challenge, if needed
////    }
////}
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.Mvc;
//using System.Web.Mvc.Filters;
//using Microsoft.AspNetCore.Http;

//namespace SMART_PRINTER_SERVICE.Filter
//{
//    public class MyAuthenticationFilter : FilterAttribute, IAuthenticationFilter
//    {
//        public void OnAuthentication(AuthenticationContext filterContext)
//        {
//            if (filterContext.HttpContext.User.Identity.IsAuthenticated == false)
//            {
//                filterContext.Result = new HttpUnauthorizedResult();
//            }
//        }
//        public void OnAuthenticationChallenge(AuthenticationChallengeContext filterContext)
//        {
            
//        }
//    }
//}
