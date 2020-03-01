using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class UserCompanyShopViewModel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "UserCompanyShopViewModel",
                columns: table => new
                {
                    UserId = table.Column<string>(nullable: false),
                    UserName = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    CompanyId = table.Column<int>(nullable: false),
                    ShopId = table.Column<int>(nullable: false),
                    CompanyName = table.Column<string>(nullable: true),
                    ShopName = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserCompanyShopViewModel", x => x.UserId);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "UserCompanyShopViewModel");
        }
    }
}
