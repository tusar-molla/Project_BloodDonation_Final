using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class newtble : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MembersDeseases_Donars_DonarId",
                table: "MembersDeseases");

            migrationBuilder.DropForeignKey(
                name: "FK_MembersDeseases_patients_PatientId",
                table: "MembersDeseases");

            migrationBuilder.DropTable(
                name: "PatientReports");

            migrationBuilder.DropIndex(
                name: "IX_MembersDeseases_DonarId",
                table: "MembersDeseases");

            migrationBuilder.DropColumn(
                name: "DonarId",
                table: "MembersDeseases");

            migrationBuilder.RenameColumn(
                name: "PatientId",
                table: "MembersDeseases",
                newName: "MemberId");

            migrationBuilder.RenameIndex(
                name: "IX_MembersDeseases_PatientId",
                table: "MembersDeseases",
                newName: "IX_MembersDeseases_MemberId");

            migrationBuilder.CreateTable(
                name: "MemberDeseaseReports",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ReportsName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    MemberDeseaseId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MemberDeseaseReports", x => x.Id);
                    table.ForeignKey(
                        name: "FK_MemberDeseaseReports_MembersDeseases_MemberDeseaseId",
                        column: x => x.MemberDeseaseId,
                        principalTable: "MembersDeseases",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_MemberDeseaseReports_MemberDeseaseId",
                table: "MemberDeseaseReports",
                column: "MemberDeseaseId");

            migrationBuilder.AddForeignKey(
                name: "FK_MembersDeseases_Members_MemberId",
                table: "MembersDeseases",
                column: "MemberId",
                principalTable: "Members",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MembersDeseases_Members_MemberId",
                table: "MembersDeseases");

            migrationBuilder.DropTable(
                name: "MemberDeseaseReports");

            migrationBuilder.RenameColumn(
                name: "MemberId",
                table: "MembersDeseases",
                newName: "PatientId");

            migrationBuilder.RenameIndex(
                name: "IX_MembersDeseases_MemberId",
                table: "MembersDeseases",
                newName: "IX_MembersDeseases_PatientId");

            migrationBuilder.AddColumn<int>(
                name: "DonarId",
                table: "MembersDeseases",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "PatientReports",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PatientId = table.Column<int>(type: "int", nullable: false),
                    ReportsName = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PatientReports", x => x.Id);
                    table.ForeignKey(
                        name: "FK_PatientReports_patients_PatientId",
                        column: x => x.PatientId,
                        principalTable: "patients",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_MembersDeseases_DonarId",
                table: "MembersDeseases",
                column: "DonarId");

            migrationBuilder.CreateIndex(
                name: "IX_PatientReports_PatientId",
                table: "PatientReports",
                column: "PatientId");

            migrationBuilder.AddForeignKey(
                name: "FK_MembersDeseases_Donars_DonarId",
                table: "MembersDeseases",
                column: "DonarId",
                principalTable: "Donars",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_MembersDeseases_patients_PatientId",
                table: "MembersDeseases",
                column: "PatientId",
                principalTable: "patients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
