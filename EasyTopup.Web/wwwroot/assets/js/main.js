var environment = 1; //1 for Dev, 2 for Prod
var AppUrl = '';
if (environment == 1) {

} else if (environment == 2) {
    AppUrl = '/easytopup';
}

//if ((UserRole == "Company" && IsCompanySelected == "False") ||
//    (UserRole == "Shop" && (IsCompanySelected == "False" || IsShopSelected == "False"))) {
//    $("#btnModalCompany").trigger('click');
//}

function pad(str, max) {
    str = str.toString();
    return str.length < max ? pad("0" + str, max) : str;
}

$("#btnSaveSettings").click(function () {
    var dataContract = {
        userId: UserId,
        userRole: UserRole,
        companyId: $("#company").val(),
        shopId: $("#shop").val(),
    };
    $.ajax({
        type: "POST",
        url: AppUrl + "/User/SaveSettings/",
        async: true,
        dataType: "json",
        data: dataContract,
        success: function (resp) {
            console.log(resp);
        },
        failure: function (resp) {
            console.log("failure");
        },
        error: function (resp) {
            console.log("error");
        }
    });
});