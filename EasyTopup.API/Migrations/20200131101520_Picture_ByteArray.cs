using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class Picture_ByteArray : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Name",
                table: "ProfileViewModel",
                newName: "LastName");

            migrationBuilder.AddColumn<string>(
                name: "FirstName",
                table: "ProfileViewModel",
                nullable: true);

            //migrationBuilder.AlterColumn<byte[]>(
            //    name: "Picture",
            //    table: "AspNetUsers",
            //    nullable: true,
            //    oldClrType: typeof(string),
            //    oldNullable: true);

        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "FirstName",
                table: "ProfileViewModel");

            migrationBuilder.RenameColumn(
                name: "LastName",
                table: "ProfileViewModel",
                newName: "Name");

            //migrationBuilder.AlterColumn<string>(
            //    name: "Picture",
            //    table: "AspNetUsers",
            //    nullable: true,
            //    oldClrType: typeof(byte[]),
            //    oldNullable: true);
        }
    }
}
