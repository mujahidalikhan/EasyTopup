using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class Sale_Table : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ShopId",
                table: "Sale");

            migrationBuilder.AddColumn<DateTime>(
                name: "SaleTimestamp",
                table: "Sale",
                type: "datetime",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "SaleTimestamp",
                table: "Sale");

            migrationBuilder.AddColumn<int>(
                name: "ShopId",
                table: "Sale",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }
    }
}
