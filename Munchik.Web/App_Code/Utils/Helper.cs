using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Munchki.Web.Utils
{
    public static class UIHelper
    {
        public static string GetWarningUI(string Title, string Message)
        {
            return "";
        }

        public static string GetDisplayLabel(bool IsYes, string Defaultvalue)
        {
            if (!IsYes)
                return string.Format("<span class='badge badge-success'>{0}</span>", string.IsNullOrEmpty(Defaultvalue) ? "YES" : Defaultvalue);

            return string.Format("<span class='badge badge-warning'>{0}</span>", string.IsNullOrEmpty(Defaultvalue) ? "No" : Defaultvalue);
        }
        public static string GetDisplayLabel(bool IsYes)
        {
            return GetDisplayLabel(IsYes, IsYes == false ? "YES" : "NO");
        }
    }

     

}