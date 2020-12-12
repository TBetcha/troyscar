using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using carshop.Models;

namespace carshop.Account
{
    public partial class ManagePhone : System.Web.UI.Page
    {
        protected string SuccessMessage
        {
            get;
            private set;
        }

        private bool HasPhone(ApplicationUserManager manager)
        {
            var userNum = HttpContext.Current.GetOwinContext().Get<ApplicationUserManager>().FindById(User.Identity.GetUserId()); 
            if(userNum != null)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        protected string getCurrentNum()
        {
            var userNum = HttpContext.Current.GetOwinContext().Get<ApplicationUserManager>().FindById(User.Identity.GetUserId());
            Response.Write(userNum.Phone);

            return userNum.Phone ;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

                if (!IsPostBack)
                {
                                   // Render success message
                    var message = Request.QueryString["m"];
                    if (message != null)
                    {
                        // Strip the query string from action
                        Form.Action = ResolveUrl("~/Account/Manage");
                    }
                }

            }
    }

        protected void SetPhone_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
                //   IdentityResult result = manager.ChangePassword(User.Identity.GetUserId(), CurrentPassword.Text, NewPassword.Text);
                var userNum = HttpContext.Current.GetOwinContext().Get<ApplicationUserManager>().FindById(User.Identity.GetUserId());
                userNum.Phone = newPhone.Text;
               if (userNum.Phone == newPhone.Text)
                {
                    manager.Update(userNum);
                    var user = manager.FindById(User.Identity.GetUserId());
                    signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                    Response.Redirect("~/Account/Manage?m=AddPhoneNumberSuccess");
                }
                else
                {
                    Response.Redirect("Account/ManagePhone.aspx");
                }
            }
        }


        /*
        protected void SetPassword_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Create the local login info and link the local account to the user
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                IdentityResult result = manager.AddPassword(User.Identity.GetUserId(), password.Text);
                if (result.Succeeded)
                {
                    Response.Redirect("~/Account/Manage?m=SetPwdSuccess");
                }
                else
                {
                    AddErrors(result);
                }
            }
        }
        */
        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }
    }
}