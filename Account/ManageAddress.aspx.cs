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
    public partial class ManageAddress : System.Web.UI.Page
    {

        protected string SuccessMessage
        {
            get;
            private set;
        }
        private bool HasAddress(ApplicationUserManager manager)
        {
            var user= HttpContext.Current.GetOwinContext().Get<ApplicationUserManager>().FindById(User.Identity.GetUserId());
            if (user!= null)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        protected string getCurrentAddress()
        {
            var user = HttpContext.Current.GetOwinContext().Get<ApplicationUserManager>().FindById(User.Identity.GetUserId());
            Response.Write(user.Address);

            return user.Address;
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
        protected void SetAddress_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
                //   IdentityResult result = manager.ChangePassword(User.Identity.GetUserId(), CurrentPassword.Text, NewPassword.Text);
                var userAddress = HttpContext.Current.GetOwinContext().Get<ApplicationUserManager>().FindById(User.Identity.GetUserId());
                userAddress.Address = newAddress.Text;
                if (userAddress.Address == newAddress.Text)
                {
                    manager.Update(userAddress);
                    var user = manager.FindById(User.Identity.GetUserId());
                    signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                    Response.Redirect("~/Account/Manage?m=AddAddressSuccess");
                }
                else
                {
                    Response.Redirect("Account/ManageAddress.aspx");
                }
            }
        }
    }
}