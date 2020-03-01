using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class ProfileViewModel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "ProfileViewModelUserId",
                table: "Shop",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ProfileViewModelUserId",
                table: "Company",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "ProfileViewModel",
                columns: table => new
                {
                    UserId = table.Column<string>(nullable: false),
                    Email = table.Column<string>(nullable: true),
                    Name = table.Column<string>(nullable: true),
                    Picture = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    Phone = table.Column<string>(nullable: true),
                    base64Picture = table.Column<string>(nullable: true),
                    CompanyId = table.Column<int>(nullable: false),
                    ShopId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProfileViewModel", x => x.UserId);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Shop_ProfileViewModelUserId",
                table: "Shop",
                column: "ProfileViewModelUserId");

            migrationBuilder.CreateIndex(
                name: "IX_Company_ProfileViewModelUserId",
                table: "Company",
                column: "ProfileViewModelUserId");

            migrationBuilder.AddForeignKey(
                name: "FK_Company_ProfileViewModel_ProfileViewModelUserId",
                table: "Company",
                column: "ProfileViewModelUserId",
                principalTable: "ProfileViewModel",
                principalColumn: "UserId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Shop_ProfileViewModel_ProfileViewModelUserId",
                table: "Shop",
                column: "ProfileViewModelUserId",
                principalTable: "ProfileViewModel",
                principalColumn: "UserId",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Company_ProfileViewModel_ProfileViewModelUserId",
                table: "Company");

            migrationBuilder.DropForeignKey(
                name: "FK_Shop_ProfileViewModel_ProfileViewModelUserId",
                table: "Shop");

            migrationBuilder.DropTable(
                name: "ProfileViewModel");

            migrationBuilder.DropIndex(
                name: "IX_Shop_ProfileViewModelUserId",
                table: "Shop");

            migrationBuilder.DropIndex(
                name: "IX_Company_ProfileViewModelUserId",
                table: "Company");

            migrationBuilder.DropColumn(
                name: "ProfileViewModelUserId",
                table: "Shop");

            migrationBuilder.DropColumn(
                name: "ProfileViewModelUserId",
                table: "Company");
        }
    }
}
