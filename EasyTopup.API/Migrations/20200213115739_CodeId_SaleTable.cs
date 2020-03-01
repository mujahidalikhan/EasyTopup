using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class CodeId_SaleTable : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "SaleTimestamp",
                table: "Code");

            migrationBuilder.AddColumn<int>(
                name: "CodeId",
                table: "Sale",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CodeId",
                table: "Sale");

            migrationBuilder.AddColumn<DateTime>(
                name: "SaleTimestamp",
                table: "Code",
                type: "datetime",
                nullable: true);
        }
    }
}
