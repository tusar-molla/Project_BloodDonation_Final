using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class flname : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Name",
                table: "Members",
                newName: "FirstName");

            migrationBuilder.AddColumn<string>(
                name: "LastName",
                table: "Members",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "LastName",
                table: "Members");

            migrationBuilder.RenameColumn(
                name: "FirstName",
                table: "Members",
                newName: "Name");
        }
    }
}
