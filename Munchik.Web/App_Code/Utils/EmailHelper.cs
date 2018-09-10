using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net;
using System.Configuration;
using System.Diagnostics;
using System.Net.Mail;
using Munchki.Infrastructure.Utils;
namespace Munchki.Web.Code.Utils
{
    public static class EmailHelper
    {

        public static bool SendEmail(string ToEmail, string Subject, string Body)
        {

            MailMessage message = new MailMessage();

            message.From = new MailAddress(Config.GetAppSetting(PrefixHelper.SMTP_ACCOUNT));

            message.To.Add(ToEmail);

            message.Subject = Subject;

            message.Body = Body;
            //message.ReplyTo.= new MailAddress(Config.GetAppSetting(PrefixHelper.SMTP_REPLYTO));
            message.IsBodyHtml = true;

            message.Priority = MailPriority.High;

            SmtpClient smtp = new SmtpClient(Config.GetAppSetting(PrefixHelper.SMTP_SERVER));

            smtp.Port = 587;

            smtp.Credentials = new NetworkCredential(Config.GetAppSetting(PrefixHelper.SMTP_ACCOUNT), Config.GetAppSetting(PrefixHelper.SMTP_PASSWORD));


            smtp.EnableSsl = true;

            smtp.Send(message);

            return true;

        }
    }

 
}