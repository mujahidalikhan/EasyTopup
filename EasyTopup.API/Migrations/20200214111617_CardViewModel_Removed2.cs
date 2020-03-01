using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class CardViewModel_Removed2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            //migrationBuilder.DropForeignKey(
            //    name: "FK_Card_CardViewModel_CardViewModelCardId",
            //    table: "Card");

            migrationBuilder.DropTable(
                name: "CardViewModel");

            //migrationBuilder.DropIndex(
            //    name: "IX_Card_CardViewModelCardId",
            //    table: "Card");

            migrationBuilder.DropColumn(
                name: "CardViewModelCardId",
                table: "Card");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "CardViewModelCardId",
                table: "Card",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "CardViewModel",
                columns: table => new
                {
                    CardViewModelCardId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Amount = table.Column<decimal>(nullable: false),
                    CompanyId = table.Column<int>(nullable: false),
                    Description = table.Column<string>(nullable: true),
                    IsDelete = table.Column<bool>(nullable: false),
                    Name = table.Column<string>(nullable: true),
                    Photo = table.Column<string>(nullable: true),
                    Timestamp = table.Column<DateTime>(nullable: false),
                    UserId = table.Column<string>(nullable: true),
                    base64Picture = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardViewModel", x => x.CardViewModelCardId);
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
                principalColumn: "CardViewModelCardId",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
