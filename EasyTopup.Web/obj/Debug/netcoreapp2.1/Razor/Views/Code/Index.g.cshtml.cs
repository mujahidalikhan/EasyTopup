#pragma checksum "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "7d5cf3fb802c9d8256b049fb860f3e5fdfe03e22"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Code_Index), @"mvc.1.0.view", @"/Views/Code/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Code/Index.cshtml", typeof(AspNetCore.Views_Code_Index))]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7d5cf3fb802c9d8256b049fb860f3e5fdfe03e22", @"/Views/Code/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"fc317dccc55e23c190e88e05e2e3c0cdcad472ac", @"/Views/_ViewImports.cshtml")]
    public class Views_Code_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<EasyTopup.Data.ViewModels.CodeViewModel>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
  
    ViewData["Title"] = "Codes";

#line default
#line hidden
            DefineSection("Styles", async() => {
                BeginContext(105, 4, true);
                WriteLiteral("\r\n\r\n");
                EndContext();
            }
            );
            DefineSection("Scripts", async() => {
                BeginContext(129, 523, true);
                WriteLiteral(@"
    <script>
        $(""#colorRadio3"").attr(""checked"", ""checked"");
        $('input[type=radio][name=AddType]').change(function () {
            if (this.id == 'colorRadio3') {
                $(""#rangeTo"").show();
                $(""#rangeFrom"").show();
                $(""#bulk"").hide();
            }
            else if (this.id == 'colorRadio4') {
                $(""#rangeTo"").hide();
                $(""#rangeFrom"").hide();
                $(""#bulk"").show();
            }
        });
    </script>
");
                EndContext();
            }
            );
            BeginContext(655, 317, true);
            WriteLiteral(@"
<div class=""content-wrapper"">
    <div class=""content-header row"">
        <div class=""content-header-left col-12 mb-2 mt-1"">
            <div class=""row breadcrumbs-top"">
                <div class=""col-6"">
                    <h5 class=""content-header-title float-left pr-1 mb-0"" style=""border-right: none;"">");
            EndContext();
            BeginContext(973, 17, false);
#line 31 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                                                                                 Write(ViewData["Title"]);

#line default
#line hidden
            EndContext();
            BeginContext(990, 604, true);
            WriteLiteral(@"</h5>
                </div>
            </div>
        </div>
    </div>
    <div class=""content-body"">
        <!-- Basic Vertical form layout section start -->
        <section id=""basic-vertical-layouts"">
            <div class=""row match-height"">
                <div class=""col-md-12 col-12"">
                    <div class=""card"">
                        <div class=""card-header"">
                            <h4 class=""card-title"">Add Codes</h4>
                        </div>
                        <div class=""card-content"">
                            <div class=""card-body"">
");
            EndContext();
#line 47 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                 using (Html.BeginForm("Create", "Code", FormMethod.Post, new { @id = "form-code" }))
                                {

#line default
#line hidden
            BeginContext(1748, 120, true);
            WriteLiteral("                                    <div class=\"form-body\">\r\n                                        <div class=\"row\">\r\n");
            EndContext();
#line 51 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                             if (Model.listCards != null && Model.listCards.Count > 0)
                                            {

#line default
#line hidden
            BeginContext(2019, 282, true);
            WriteLiteral(@"                                                <div class=""col-12"">
                                                    <div class=""form-group"">
                                                        <label>Cards</label>
                                                        ");
            EndContext();
            BeginContext(2302, 138, false);
#line 56 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                                   Write(Html.DropDownListFor(m => m.CardId, new MultiSelectList(Model.listCards, "CardId", "Name"), new { @class = "form-control", @id = "card" }));

#line default
#line hidden
            EndContext();
            BeginContext(2440, 118, true);
            WriteLiteral("\r\n                                                    </div>\r\n                                                </div>\r\n");
            EndContext();
#line 59 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                            }

#line default
#line hidden
            BeginContext(2605, 559, true);
            WriteLiteral(@"                                            <div class=""col-12"">
                                                <div class=""form-group"">
                                                    <ul class=""list-unstyled mb-0"">
                                                        <li class=""d-inline-block mr-2 mb-1"">
                                                            <fieldset>
                                                                <div class=""radio radio-success"">
                                                                    ");
            EndContext();
            BeginContext(3165, 92, false);
#line 66 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                                               Write(Html.RadioButtonFor(m => m.AddType, "Range", new { @name = "AddType", @id = "colorRadio3" }));

#line default
#line hidden
            EndContext();
            BeginContext(3257, 655, true);
            WriteLiteral(@"
                                                                    <label for=""colorRadio3"">Add Range</label>
                                                                </div>
                                                            </fieldset>
                                                        </li>
                                                        <li class=""d-inline-block mr-2 mb-1"">
                                                            <fieldset>
                                                                <div class=""radio radio-danger"">
                                                                    ");
            EndContext();
            BeginContext(3913, 91, false);
#line 74 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                                               Write(Html.RadioButtonFor(m => m.AddType, "Bulk", new { @name = "AddType", @id = "colorRadio4" }));

#line default
#line hidden
            EndContext();
            BeginContext(4004, 766, true);
            WriteLiteral(@"
                                                                    <label for=""colorRadio4"">Add Bulk</label>
                                                                </div>
                                                            </fieldset>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class=""col-12"" id=""rangeTo"">
                                                <div class=""form-group"">
                                                    <label>From</label>
                                                    ");
            EndContext();
            BeginContext(4771, 84, false);
#line 85 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                               Write(Html.TextBoxFor(m => m.CodesFrom, new { @class = "form-control", id = "codesFrom" }));

#line default
#line hidden
            EndContext();
            BeginContext(4855, 388, true);
            WriteLiteral(@"
                                                </div>
                                            </div>
                                            <div class=""col-12"" id=""rangeFrom"">
                                                <div class=""form-group"">
                                                    <label>To</label>
                                                    ");
            EndContext();
            BeginContext(5244, 80, false);
#line 91 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                               Write(Html.TextBoxFor(m => m.CodesTo, new { @class = "form-control", id = "codesTo" }));

#line default
#line hidden
            EndContext();
            BeginContext(5324, 438, true);
            WriteLiteral(@"
                                                </div>
                                            </div>
                                            <div class=""col-12"" id=""bulk"" style=""display: none;"">
                                                <div class=""form-group"">
                                                    <label for=""first-name-vertical"">Add Bulk</label>
                                                    ");
            EndContext();
            BeginContext(5763, 83, false);
#line 97 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                               Write(Html.TextArea("Codes", Model.Codes, new { @class = "form-control", @id = "codes" }));

#line default
#line hidden
            EndContext();
            BeginContext(5846, 466, true);
            WriteLiteral(@"
                                                </div>
                                            </div>
                                            <div class=""col-12 d-flex justify-content-end"">
                                                <button type=""submit"" class=""btn btn-primary mr-1 mb-1"">Save</button>
                                            </div>
                                        </div>
                                    </div>
");
            EndContext();
#line 105 "D:\UtviklingMujahid\Sample Projects\EasyTopup\Source\EasyTopup.Web\Views\Code\Index.cshtml"
                                }

#line default
#line hidden
            BeginContext(6347, 238, true);
            WriteLiteral("                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>\r\n        <!-- // Basic Vertical form layout section end -->\r\n    </div>\r\n</div>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<EasyTopup.Data.ViewModels.CodeViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
