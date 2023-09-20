using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class dnrnmermv : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DonarName",
                table: "Donars");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "DonarName",
                table: "Donars",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }
    }
}
