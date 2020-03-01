using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class CardViewModel_Removed : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CardId",
                table: "CardViewModel");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "CardId",
                table: "CardViewModel",
                nullable: false,
                defaultValue: 0);
        }
    }
}
