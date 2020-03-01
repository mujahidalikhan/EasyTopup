using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class Card_CompanyId : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Phone",
                table: "Card");

            migrationBuilder.AddColumn<int>(
                name: "CompanyId",
                table: "Card",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CompanyId",
                table: "Card");

            migrationBuilder.AddColumn<string>(
                name: "Phone",
                table: "Card",
                type: "varchar(100)",
                nullable: true);
        }
    }
}
