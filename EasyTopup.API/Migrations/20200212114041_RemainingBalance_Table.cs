using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class RemainingBalance_Table : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "PreviousAmount",
                table: "RemainingBalance",
                newName: "BalanceAmount");

            migrationBuilder.AddColumn<int>(
                name: "BalanceId",
                table: "RemainingBalance",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<bool>(
                name: "IsAmountAdded",
                table: "RemainingBalance",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "BalanceId",
                table: "RemainingBalance");

            migrationBuilder.DropColumn(
                name: "IsAmountAdded",
                table: "RemainingBalance");

            migrationBuilder.RenameColumn(
                name: "BalanceAmount",
                table: "RemainingBalance",
                newName: "PreviousAmount");
        }
    }
}
