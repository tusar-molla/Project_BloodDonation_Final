using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class docup : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "RegistrationNumber",
                table: "Doctors",
                type: "nvarchar(25)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "Designation",
                table: "Doctors",
                type: "nvarchar(60)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "CV",
                table: "Doctors",
                type: "varchar(100)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(100)");

            migrationBuilder.AddColumn<string>(
                name: "AreaOfConsultation",
                table: "Doctors",
                type: "nvarchar(40)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "BMDCNO",
                table: "Doctors",
                type: "nvarchar(25)",
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

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "AreaOfConsultation",
                table: "Doctors");

            migrationBuilder.DropColumn(
                name: "BMDCNO",
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
                name: "RegistrationNumber",
                table: "Doctors",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(25)");

            migrationBuilder.AlterColumn<string>(
                name: "Designation",
                table: "Doctors",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(60)");

            migrationBuilder.AlterColumn<string>(
                name: "CV",
                table: "Doctors",
                type: "nvarchar(100)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "varchar(100)");
        }
    }
}
