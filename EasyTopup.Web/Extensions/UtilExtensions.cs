using EasyTopup.Data.Response;
using EasyTopup.Data.ViewModels;
using Microsoft.AspNetCore.Html;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Routing;
using Newtonsoft.Json;
using System;
using System.Threading.Tasks;

namespace EasyTopup.Web.Extensions
{
    public static class UtilExtensions
    {
        //public static string DefaultPicture = "data:image/png;base64,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";
        public static IHtmlContent LiActive(this IHtmlHelper htmlHelper, string controllerName, string activeClass)
        {
            string currentController = htmlHelper.ViewContext.RouteData.GetRequiredString("controller");

            if (string.Compare(controllerName, currentController, StringComparison.OrdinalIgnoreCase) == 0)
            {
                return new HtmlString(activeClass);
            }

            return new HtmlString(string.Empty);
        }

        public static string GetRequiredString(this RouteData routeData, string keyName)
        {
            object value;
            if (!routeData.Values.TryGetValue(keyName, out value))
            {
                throw new InvalidOperationException($"Could not find key with name '{keyName}'");
            }

            return value?.ToString();
        }

        //public async static Task<string> GetCompaniesShops()
        //{
        //    string response = await APICallerExtensions.APICallAsync("User/GetCompaniesShops", null, false, null);
        //    if (response.ToLower().Contains("exception:"))
        //    {
        //    }
        //    var content = JsonConvert.DeserializeObject<SingleResponse<LayoutViewModel>>(response);
        //    if (!content.DidError)
        //    {
        //    }
        //    else
        //    {
        //    }

        //    return "";
        //}

        //public static byte[] ConvertBase64ToByteArray(string base64String)
        //{
        //    return Convert.FromBase64String(base64String);
        //}

        //public static string ConvertByteArrayToBase64(byte[] byteArray)
        //{
        //    return BitConverter.ToString(byteArray);
        //}

    }
}