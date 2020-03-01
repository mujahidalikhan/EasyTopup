using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using Microsoft.Extensions.Configuration;

namespace EasyTopup.API.Helpers
{
    public static class EmailHelper
    {
        public static bool SendEmail(EmailInfo emailInfo)
        {
            if (!string.IsNullOrWhiteSpace(emailInfo.SenderEmail) && !string.IsNullOrWhiteSpace(emailInfo.SenderEmailPassword))
            {
                var fromAddress = new MailAddress(emailInfo.SenderEmail, "no reply");
                var toAddress = new MailAddress(emailInfo.RecipientEmail, emailInfo.RecipientName);
                var smtp = new SmtpClient
                {
                    Host = emailInfo.EmailServer,
                    Port = emailInfo.Port,
                    EnableSsl = emailInfo.EnableSSL,
                    UseDefaultCredentials = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new NetworkCredential(emailInfo.SenderEmail, emailInfo.SenderEmailPassword),
                    Timeout = 20000
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = emailInfo.Subject,
                    Body = emailInfo.Body,
                    IsBodyHtml = true
                })
                {
                    smtp.Send(message);
                }
                return true;
            }
            else
            {
                return false;
            }
        }

        public static async Task EmailExecute(string apiKey, string toEmail, string name, string content)
        {
            try
            {
                var client = new SendGridClient(apiKey);
                var from = new EmailAddress("easytopup20@gmail.com", "Easy Topup");
                var subject = "Welcome to Easy Topup";
                var to = new EmailAddress(toEmail, name);
                var plainTextContent = string.Empty;
                var htmlContent = content;
                var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
                var response = await client.SendEmailAsync(msg);
            }
            catch (Exception ex)
            {
            }
        }

        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }

        public static string Base64Decode(string base64EncodedData)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
            return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
        }
    }

    public class EmailInfo
    {
        public string EmailServer { get; set; }
        public string SenderEmail { get; set; }
        public string RecipientEmail { get; set; }
        public string SenderEmailPassword { get; set; }
        public string To { get; set; }
        public string RecipientName { get; set; }
        public string Cc { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
        public int Port { get; set; }
        public bool EnableSSL { get; set; }
    }
}
