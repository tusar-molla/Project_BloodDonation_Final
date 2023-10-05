using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class iddsasd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BldrfrenceandPatientdtlsViewModels");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "BldrfrenceandPatientdtlsViewModels",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BldReferenceId = table.Column<int>(type: "int", nullable: true),
                    Address = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Contact = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    FirstName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LastName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Role = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BldrfrenceandPatientdtlsViewModels", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BldrfrenceandPatientdtlsViewModels_BldReferences_BldReferenceId",
                        column: x => x.BldReferenceId,
                        principalTable: "BldReferences",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_BldrfrenceandPatientdtlsViewModels_BldReferenceId",
                table: "BldrfrenceandPatientdtlsViewModels",
                column: "BldReferenceId");
        }
    }
}
