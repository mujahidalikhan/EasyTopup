using Microsoft.EntityFrameworkCore.Migrations;

namespace EasyTopup.API.Migrations
{
    public partial class SaleViewModel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "SaleViewModelUserId",
                table: "Card",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "CreateSaleViewModel",
                columns: table => new
                {
                    Code = table.Column<string>(nullable: false),
                    CardName = table.Column<string>(nullable: true),
                    Amount = table.Column<string>(nullable: true),
                    CompanyName = table.Column<string>(nullable: true),
                    CompanyDescription = table.Column<string>(nullable: true),
                    CompanyPhoto = table.Column<string>(nullable: true),
                    ShopName = table.Column<string>(nullable: true),
                    ShopDescription = table.Column<string>(nullable: true),
                    ShopPhoto = table.Column<string>(nullable: true),
                    SaleTime = table.Column<string>(nullable: true),
                    SoldByEmail = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CreateSaleViewModel", x => x.Code);
                });

            migrationBuilder.CreateTable(
                name: "SaleViewModel",
                columns: table => new
                {
                    UserId = table.Column<string>(nullable: false),
                    CardId = table.Column<int>(nullable: false),
                    pageId = table.Column<int>(nullable: false),
                    pageSize = table.Column<int>(nullable: false),
                    createSaleViewModelCode = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SaleViewModel", x => x.UserId);
                    table.ForeignKey(
                        name: "FK_SaleViewModel_CreateSaleViewModel_createSaleViewModelCode",
                        column: x => x.createSaleViewModelCode,
                        principalTable: "CreateSaleViewModel",
                        principalColumn: "Code",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Card_SaleViewModelUserId",
                table: "Card",
                column: "SaleViewModelUserId");

            migrationBuilder.CreateIndex(
                name: "IX_SaleViewModel_createSaleViewModelCode",
                table: "SaleViewModel",
                column: "createSaleViewModelCode");

            migrationBuilder.AddForeignKey(
                name: "FK_Card_SaleViewModel_SaleViewModelUserId",
                table: "Card",
                column: "SaleViewModelUserId",
                principalTable: "SaleViewModel",
                principalColumn: "UserId",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Card_SaleViewModel_SaleViewModelUserId",
                table: "Card");

            migrationBuilder.DropTable(
                name: "SaleViewModel");

            migrationBuilder.DropTable(
                name: "CreateSaleViewModel");

            migrationBuilder.DropIndex(
                name: "IX_Card_SaleViewModelUserId",
                table: "Card");

            migrationBuilder.DropColumn(
                name: "SaleViewModelUserId",
                table: "Card");
        }
    }
}
