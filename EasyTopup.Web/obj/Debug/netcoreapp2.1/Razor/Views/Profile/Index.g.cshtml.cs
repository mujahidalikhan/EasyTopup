#pragma checksum "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "2c0481755ac4ebe23b710ab0b2d7cc743e7a223b"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Profile_Index), @"mvc.1.0.view", @"/Views/Profile/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Profile/Index.cshtml", typeof(AspNetCore.Views_Profile_Index))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#line 2 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\_ViewImports.cshtml"
using EasyTopup.Web;

#line default
#line hidden
#line 3 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\_ViewImports.cshtml"
using EasyTopup.Data.Models;

#line default
#line hidden
#line 4 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\_ViewImports.cshtml"
using EasyTopup.Data.Models.AccountViewModels;

#line default
#line hidden
#line 5 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\_ViewImports.cshtml"
using EasyTopup.Data.Models.ManageViewModels;

#line default
#line hidden
#line 2 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
using EasyTopup.Web.Extensions;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2c0481755ac4ebe23b710ab0b2d7cc743e7a223b", @"/Views/Profile/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"fc317dccc55e23c190e88e05e2e3c0cdcad472ac", @"/Views/_ViewImports.cshtml")]
    public class Views_Profile_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<EasyTopup.Data.ViewModels.ProfileViewModel>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/app-assets/vendors/js/forms/select/select2.full.min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/app-assets/vendors/js/pickers/pickadate/picker.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/app-assets/vendors/js/pickers/pickadate/picker.date.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/app-assets/vendors/js/extensions/dropzone.min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 3 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
  
    ViewData["Title"] = "Profile";

#line default
#line hidden
            DefineSection("Styles", async() => {
                BeginContext(143, 4, true);
                WriteLiteral("\r\n\r\n");
                EndContext();
            }
            );
            DefineSection("Scripts", async() => {
                BeginContext(167, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
                BeginContext(173, 80, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "a289428d3edb4cff86acb6e7f5954b3b", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(253, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
                BeginContext(259, 89, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "693cf0c9fd204baf83cbc3db9595b962", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(348, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
                BeginContext(354, 75, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "3b805fc7f26b45aba82009db7d212a1d", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(429, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
                BeginContext(435, 80, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "a4b193d9531f41d2b08732d7127bfca1", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(515, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
                BeginContext(521, 74, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1b337b31a83b41c0b067c2c577404133", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(595, 921, true);
                WriteLiteral(@"
    <script>
        $(""#btnSelectPhoto"").click(function (e) {
            $(""#imageUpload"").click();
        });
        $(""#btnResetPhoto"").click(function (e) {
            $('#profileImage').attr('src', ""/app-assets/images/user.png"");
            $('#base64Picture').val("""");
        });

        function readFile() {
            if (this.files && this.files[0]) {
                $('#profileImage').attr('src', window.URL.createObjectURL(this.files[0]));
                var FR = new FileReader();
                FR.addEventListener(""load"", function (e) {
                    document.getElementById(""b64"").innerHTML = e.target.result;
                    $('#base64Picture').val($('#b64').text());
                });
                FR.readAsDataURL(this.files[0]);
            }
        }
        document.getElementById(""imageUpload"").addEventListener(""change"", readFile);
    </script>
");
                EndContext();
            }
            );
            BeginContext(1519, 315, true);
            WriteLiteral(@"<div class=""content-wrapper"">
    <div class=""content-header row"">
        <div class=""content-header-left col-12 mb-2 mt-1"">
            <div class=""row breadcrumbs-top"">
                <div class=""col-6"">
                    <h5 class=""content-header-title float-left pr-1 mb-0"" style=""border-right: none;"">");
            EndContext();
            BeginContext(1835, 17, false);
#line 43 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                                                                 Write(ViewData["Title"]);

#line default
#line hidden
            EndContext();
            BeginContext(1852, 1963, true);
            WriteLiteral(@"</h5>
                </div>
            </div>
        </div>
    </div>
    <div class=""content-body"">
        <section id=""page-account-settings"">
            <div class=""row"">
                <div class=""col-12"">
                    <div class=""row"">
                        <!-- left menu section -->
                        <div class=""col-md-3 mb-2 mb-md-0 pills-stacked"">
                            <ul class=""nav nav-pills flex-column"">
                                <li class=""nav-item"">
                                    <a class=""nav-link d-flex align-items-center active"" id=""account-pill-general"" data-toggle=""pill"" href=""#account-vertical-general"" aria-expanded=""true"">
                                        <i class=""bx bx-cog""></i>
                                        <span>General</span>
                                    </a>
                                </li>
                                <li class=""nav-item"">
                                    <a class=""nav-link");
            WriteLiteral(@" d-flex align-items-center"" id=""account-pill-password"" data-toggle=""pill"" href=""#account-vertical-password"" aria-expanded=""false"">
                                        <i class=""bx bx-lock""></i>
                                        <span>Change Password</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- right content section -->
                        <div class=""col-md-9"">
                            <div class=""card"">
                                <div class=""card-content"">
                                    <div class=""card-body"">
                                        <div class=""tab-content"">
                                            <div role=""tabpanel"" class=""tab-pane active"" id=""account-vertical-general"" aria-labelledby=""account-pill-general"" aria-expanded=""true"">
");
            EndContext();
#line 77 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                 using (Html.BeginForm("Update", "Profile", FormMethod.Post, new { @id = "form-profile" }))
                                                {
                                                    

#line default
#line hidden
            BeginContext(4060, 29, false);
#line 79 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                               Write(Html.HiddenFor(m => m.UserId));

#line default
#line hidden
            EndContext();
            BeginContext(4144, 32, false);
#line 80 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                               Write(Html.HiddenFor(m => m.CompanyId));

#line default
#line hidden
            EndContext();
            BeginContext(4231, 29, false);
#line 81 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                               Write(Html.HiddenFor(m => m.ShopId));

#line default
#line hidden
            EndContext();
            BeginContext(4262, 151, true);
            WriteLiteral("                                                    <div class=\"media\">\r\n                                                        <img id=\"profileImage\"");
            EndContext();
            BeginWriteAttribute("src", " src=\"", 4413, "\"", 4433, 1);
#line 83 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
WriteAttributeValue("", 4419, Model.Picture, 4419, 14, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(4434, 2004, true);
            WriteLiteral(@" class=""rounded mr-75"" alt=""profile image"" height=""64"" width=""64"">
                                                        <p id=""b64"" style=""display:none;""></p>
                                                        <input type=""hidden"" id=""base64Picture"" name=""base64Picture"" />
                                                        <div class=""media-body mt-25"">
                                                            <div class=""col-12 px-0 d-flex flex-sm-row flex-column justify-content-start"">
                                                                <input type=""file"" id=""imageUpload"" style=""display: none;"">
                                                                <button type=""button"" id=""btnSelectPhoto"" class=""btn btn-sm btn-light-primary ml-50 mb-50 mb-sm-0 dz-clickable"">Select new photo</button>
                                                                <button type=""button"" id=""btnResetPhoto"" class=""btn btn-sm btn-light-secondary ml-50"">Reset</button>
                 ");
            WriteLiteral(@"                                           </div>
                                                            <p class=""text-muted ml-1 mt-50"">
                                                                <small>Allowed JPG, GIF or PNG.</small>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class=""row"">
                                                        <div class=""col-12"">
                                                            <div class=""form-group"">
                                                                <div class=""controls"">
                                                                    <label>Email</label>
                                                                    ");
            EndContext();
            BeginContext(6439, 100, false);
#line 103 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                               Write(Html.TextBoxFor(m => m.Email, new { @class = "form-control", id = "email", @readonly = "readonly" }));

#line default
#line hidden
            EndContext();
            BeginContext(6539, 621, true);
            WriteLiteral(@"
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=""col-12"">
                                                            <div class=""form-group"">
                                                                <div class=""controls"">
                                                                    <label>First Name</label>
                                                                    ");
            EndContext();
            BeginContext(7161, 85, false);
#line 111 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                               Write(Html.TextBoxFor(m => m.FirstName, new { @class = "form-control", @id = "firstName" }));

#line default
#line hidden
            EndContext();
            BeginContext(7246, 620, true);
            WriteLiteral(@"
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=""col-12"">
                                                            <div class=""form-group"">
                                                                <div class=""controls"">
                                                                    <label>Last Name</label>
                                                                    ");
            EndContext();
            BeginContext(7867, 83, false);
#line 119 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                               Write(Html.TextBoxFor(m => m.LastName, new { @class = "form-control", @id = "lastName" }));

#line default
#line hidden
            EndContext();
            BeginContext(7950, 616, true);
            WriteLiteral(@"
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=""col-12"">
                                                            <div class=""form-group"">
                                                                <div class=""controls"">
                                                                    <label>Phone</label>
                                                                    ");
            EndContext();
            BeginContext(8567, 77, false);
#line 127 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                               Write(Html.TextBoxFor(m => m.Phone, new { @class = "form-control", @id = "phone" }));

#line default
#line hidden
            EndContext();
            BeginContext(8644, 622, true);
            WriteLiteral(@"
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=""col-12"">
                                                            <div class=""form-group"">
                                                                <div class=""controls"">
                                                                    <label>Description</label>
                                                                    ");
            EndContext();
            BeginContext(9267, 101, false);
#line 135 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                               Write(Html.TextArea("Description", Model.Description, new { @class = "form-control", @id = "description" }));

#line default
#line hidden
            EndContext();
            BeginContext(9368, 206, true);
            WriteLiteral("\r\n                                                                </div>\r\n                                                            </div>\r\n                                                        </div>\r\n");
            EndContext();
#line 139 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                         if (LocalStorageExtensions.Exists(StorageType.Token) &&
                                                    (LocalStorageExtensions.Get(StorageType.Role) == "Company" || LocalStorageExtensions.Get(StorageType.Role) == "Shop") &&
                                                    LocalStorageExtensions.Get(StorageType.Role) != "Admin")
                                                        {
                                                            

#line default
#line hidden
#line 143 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                             if (Model.listCompanies != null && Model.listCompanies.Count > 0)
                                                            {

#line default
#line hidden
            BeginContext(10222, 348, true);
            WriteLiteral(@"                                                                <div class=""col-12"">
                                                                    <div class=""form-group"">
                                                                        <label>Company</label>
                                                                        ");
            EndContext();
            BeginContext(10571, 175, false);
#line 148 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                                   Write(Html.DropDownListFor(m => m.CompanyId, new MultiSelectList(Model.listCompanies, "CompanyId", "Name"), new { @class = "form-control", @id = "company", @disabled = "disabled" }));

#line default
#line hidden
            EndContext();
            BeginContext(10746, 150, true);
            WriteLiteral("\r\n                                                                    </div>\r\n                                                                </div>\r\n");
            EndContext();
#line 151 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                            }

#line default
#line hidden
#line 151 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                             
                                                        }

#line default
#line hidden
            BeginContext(11018, 56, true);
            WriteLiteral("                                                        ");
            EndContext();
#line 153 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                         if (LocalStorageExtensions.Exists(StorageType.Token) &&
                                                    LocalStorageExtensions.Get(StorageType.Role) == "Shop" &&
                                                    LocalStorageExtensions.Get(StorageType.Role) != "Admin")
                                                        {
                                                            

#line default
#line hidden
#line 157 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                             if (Model.listShops != null && Model.listShops.Count > 0)
                                                            {

#line default
#line hidden
            BeginContext(11595, 345, true);
            WriteLiteral(@"                                                                <div class=""col-12"">
                                                                    <div class=""form-group"">
                                                                        <label>Shop</label>
                                                                        ");
            EndContext();
            BeginContext(11941, 162, false);
#line 162 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                                   Write(Html.DropDownListFor(m => m.ShopId, new MultiSelectList(Model.listShops, "ShopId", "Name"), new { @class = "form-control", @id = "shop", @disabled = "disabled" }));

#line default
#line hidden
            EndContext();
            BeginContext(12103, 150, true);
            WriteLiteral("\r\n                                                                    </div>\r\n                                                                </div>\r\n");
            EndContext();
#line 165 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                            }

#line default
#line hidden
#line 165 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                             
                                                        }

#line default
#line hidden
            BeginContext(12375, 593, true);
            WriteLiteral(@"                                                        <div class=""col-12 d-flex flex-sm-row flex-column justify-content-end"">
                                                            <button type=""submit"" class=""btn btn-primary glow mr-sm-1 mb-1"">
                                                                Save
                                                                changes
                                                            </button>
                                                        </div>
                                                    </div>
");
            EndContext();
#line 174 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                }

#line default
#line hidden
            BeginContext(13019, 235, true);
            WriteLiteral("                                            </div>\r\n                                            <div class=\"tab-pane fade \" id=\"account-vertical-password\" role=\"tabpanel\" aria-labelledby=\"account-pill-password\" aria-expanded=\"false\">\r\n");
            EndContext();
#line 177 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                 using (Html.BeginForm("ChangePassword", "Profile", FormMethod.Post, new { @id = "form-password" }))
                                                {
                                                    

#line default
#line hidden
            BeginContext(13508, 29, false);
#line 179 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                               Write(Html.HiddenFor(m => m.UserId));

#line default
#line hidden
            EndContext();
            BeginContext(13539, 424, true);
            WriteLiteral(@"                                                    <div class=""row"">
                                                        <div class=""col-12"">
                                                            <div class=""form-group"">
                                                                <div class=""controls"">
                                                                    <label>Current Password</label>
");
            EndContext();
            BeginContext(14192, 68, true);
            WriteLiteral("                                                                    ");
            EndContext();
            BeginContext(14261, 98, false);
#line 186 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                               Write(Html.PasswordFor(m => m.CurrentPassword, new { @class = "form-control", @id = "currentPassword" }));

#line default
#line hidden
            EndContext();
            BeginContext(14359, 555, true);
            WriteLiteral(@"
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=""col-12"">
                                                            <div class=""form-group"">
                                                                <div class=""controls"">
                                                                    <label>New Password</label>
");
            EndContext();
            BeginContext(15168, 68, true);
            WriteLiteral("                                                                    ");
            EndContext();
            BeginContext(15237, 90, false);
#line 195 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                               Write(Html.PasswordFor(m => m.NewPassword, new { @class = "form-control", @id = "newPassword" }));

#line default
#line hidden
            EndContext();
            BeginContext(15327, 562, true);
            WriteLiteral(@"
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=""col-12"">
                                                            <div class=""form-group"">
                                                                <div class=""controls"">
                                                                    <label>Retype new Password</label>
");
            EndContext();
            BeginContext(16194, 68, true);
            WriteLiteral("                                                                    ");
            EndContext();
            BeginContext(16263, 94, false);
#line 204 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                               Write(Html.PasswordFor(m => m.NewPassword, new { @class = "form-control", @id = "confirmPassword" }));

#line default
#line hidden
            EndContext();
            BeginContext(16357, 799, true);
            WriteLiteral(@"
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=""col-12 d-flex flex-sm-row flex-column justify-content-end"">
                                                            <button type=""submit"" class=""btn btn-primary glow mr-sm-1 mb-1"">
                                                                Save
                                                                changes
                                                            </button>
                                                        </div>
                                                    </div>
");
            EndContext();
#line 215 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Profile\Index.cshtml"
                                                }

#line default
#line hidden
            BeginContext(17207, 362, true);
            WriteLiteral(@"                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<EasyTopup.Data.ViewModels.ProfileViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
