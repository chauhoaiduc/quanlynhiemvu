﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using sb_admin.web.Helper;

namespace sb_admin.web.Filters
{
    public class CheckLoginAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (CurrentContext.IsLogged() == false)
            {
                filterContext.Result = new RedirectResult("~/Account/Login");
            }
            base.OnActionExecuting(filterContext);
        }
    }
}