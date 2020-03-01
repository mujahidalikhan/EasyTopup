using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class Shop_Registration_Number : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "RegistrationNumber",
                table: "Shop",
                type: "varchar(100)",
                nullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "SaleTime",
                table: "CreateSaleViewModel",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);

            migrationBuilder.AlterColumn<decimal>(
                name: "Amount",
                table: "CreateSaleViewModel",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "SoldByName",
                table: "CreateSaleViewModel",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "RegistrationNumber",
                table: "Shop");

            migrationBuilder.DropColumn(
                name: "SoldByName",
                table: "CreateSaleViewModel");

            migrationBuilder.AlterColumn<string>(
                name: "SaleTime",
                table: "CreateSaleViewModel",
                nullable: true,
                oldClrType: typeof(DateTime));

            migrationBuilder.AlterColumn<string>(
                name: "Amount",
                table: "CreateSaleViewModel",
                nullable: true,
                oldClrType: typeof(decimal));
        }
    }
}
