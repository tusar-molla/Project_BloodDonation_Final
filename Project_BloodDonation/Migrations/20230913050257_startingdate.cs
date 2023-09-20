using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class startingdate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ReportDeliveryDate",
                table: "MemberDeseaseReports",
                newName: "StartingDate");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "StartingDate",
                table: "MemberDeseaseReports",
                newName: "ReportDeliveryDate");
        }
    }
}
