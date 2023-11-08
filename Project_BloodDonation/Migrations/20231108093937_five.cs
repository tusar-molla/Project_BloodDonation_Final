using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class five : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "AreaOfConsultation",
                table: "Doctors");

            migrationBuilder.DropColumn(
                name: "Degree",
                table: "Doctors");

            migrationBuilder.DropColumn(
                name: "Institute",
                table: "Doctors");

            migrationBuilder.DropColumn(
                name: "SpecialInterest",
                table: "Doctors");

            migrationBuilder.AlterColumn<string>(
                name: "BMDCNO",
                table: "Doctors",
                type: "nvarchar(40)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(25)");

            migrationBuilder.AddColumn<int>(
                name: "AreaOfConsultationId",
                table: "Doctors",
                type: "int",
                nullable: true,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "DegreeId",
                table: "Doctors",
                type: "int",
                nullable: true,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "InstitutionId",
                table: "Doctors",
                type: "int",
                nullable: true,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "SpecialInterestId",
                table: "Doctors",
                type: "int",
                nullable: true,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "AreaOfConsultations",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AreaOfConsultations", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Degrees",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Degrees", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Institutions",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Institutions", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SpecialInterests",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SpecialInterests", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Doctors_AreaOfConsultationId",
                table: "Doctors",
                column: "AreaOfConsultationId");

            migrationBuilder.CreateIndex(
                name: "IX_Doctors_DegreeId",
                table: "Doctors",
                column: "DegreeId");

            migrationBuilder.CreateIndex(
                name: "IX_Doctors_InstitutionId",
                table: "Doctors",
                column: "InstitutionId");

            migrationBuilder.CreateIndex(
                name: "IX_Doctors_SpecialInterestId",
                table: "Doctors",
                column: "SpecialInterestId");

            migrationBuilder.AddForeignKey(
                name: "FK_Doctors_AreaOfConsultations_AreaOfConsultationId",
                table: "Doctors",
                column: "AreaOfConsultationId",
                principalTable: "AreaOfConsultations",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Doctors_Degrees_DegreeId",
                table: "Doctors",
                column: "DegreeId",
                principalTable: "Degrees",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Doctors_Institutions_InstitutionId",
                table: "Doctors",
                column: "InstitutionId",
                principalTable: "Institutions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Doctors_SpecialInterests_SpecialInterestId",
                table: "Doctors",
                column: "SpecialInterestId",
                principalTable: "SpecialInterests",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Doctors_AreaOfConsultations_AreaOfConsultationId",
                table: "Doctors");

            migrationBuilder.DropForeignKey(
                name: "FK_Doctors_Degrees_DegreeId",
                table: "Doctors");

            migrationBuilder.DropForeignKey(
                name: "FK_Doctors_Institutions_InstitutionId",
                table: "Doctors");

            migrationBuilder.DropForeignKey(
                name: "FK_Doctors_SpecialInterests_SpecialInterestId",
                table: "Doctors");

            migrationBuilder.DropTable(
                name: "AreaOfConsultations");

            migrationBuilder.DropTable(
                name: "Degrees");

            migrationBuilder.DropTable(
                name: "Institutions");

            migrationBuilder.DropTable(
                name: "SpecialInterests");

            migrationBuilder.DropIndex(
                name: "IX_Doctors_AreaOfConsultationId",
                table: "Doctors");

            migrationBuilder.DropIndex(
                name: "IX_Doctors_DegreeId",
                table: "Doctors");

            migrationBuilder.DropIndex(
                name: "IX_Doctors_InstitutionId",
                table: "Doctors");

            migrationBuilder.DropIndex(
                name: "IX_Doctors_SpecialInterestId",
                table: "Doctors");

            migrationBuilder.DropColumn(
                name: "AreaOfConsultationId",
                table: "Doctors");

            migrationBuilder.DropColumn(
                name: "DegreeId",
                table: "Doctors");

            migrationBuilder.DropColumn(
                name: "InstitutionId",
                table: "Doctors");

            migrationBuilder.DropColumn(
                name: "SpecialInterestId",
                table: "Doctors");

            migrationBuilder.AlterColumn<string>(
                name: "BMDCNO",
                table: "Doctors",
                type: "nvarchar(25)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(40)");

            migrationBuilder.AddColumn<string>(
                name: "AreaOfConsultation",
                table: "Doctors",
                type: "nvarchar(40)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Degree",
                table: "Doctors",
                type: "nvarchar(40)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Institute",
                table: "Doctors",
                type: "nvarchar(100)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "SpecialInterest",
                table: "Doctors",
                type: "nvarchar(35)",
                nullable: false,
                defaultValue: "");
        }
    }
}
