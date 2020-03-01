using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class CardViewModel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "CurrentPassword",
                table: "ProfileViewModel",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "NewPassword",
                table: "ProfileViewModel",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "CardViewModelCardId",
                table: "Card",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "CardViewModel",
                columns: table => new
                {
                    CardId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    CompanyId = table.Column<int>(nullable: false),
                    Name = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    Photo = table.Column<string>(nullable: true),
                    Amount = table.Column<decimal>(nullable: false),
                    IsDelete = table.Column<bool>(nullable: false),
                    Timestamp = table.Column<DateTime>(nullable: false),
                    base64Picture = table.Column<string>(nullable: true),
                    UserId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardViewModel", x => x.CardId);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Card_CardViewModelCardId",
                table: "Card",
                column: "CardViewModelCardId");

            migrationBuilder.AddForeignKey(
                name: "FK_Card_CardViewModel_CardViewModelCardId",
                table: "Card",
                column: "CardViewModelCardId",
                principalTable: "CardViewModel",
                principalColumn: "CardId",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Card_CardViewModel_CardViewModelCardId",
                table: "Card");

            migrationBuilder.DropTable(
                name: "CardViewModel");

            migrationBuilder.DropIndex(
                name: "IX_Card_CardViewModelCardId",
                table: "Card");

            migrationBuilder.DropColumn(
                name: "CurrentPassword",
                table: "ProfileViewModel");

            migrationBuilder.DropColumn(
                name: "NewPassword",
                table: "ProfileViewModel");

            migrationBuilder.DropColumn(
                name: "CardViewModelCardId",
                table: "Card");
        }
    }
}
