using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class ds : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            //migrationBuilder.DropForeignKey(
            //    name: "FK_Doctors_Designations_DesignationId",
            //    table: "Doctors");

            //migrationBuilder.DropIndex(
            //    name: "IX_Doctors_DesignationId",
            //    table: "Doctors");

            //migrationBuilder.DropUniqueConstraint(
            //    name: "AK_Designations_TempId",
            //    table: "Designations");

            //migrationBuilder.DropColumn(
            //    name: "DesignationId",
            //    table: "Doctors");

            //migrationBuilder.DropColumn(
            //    name: "TempId",
            //    table: "Designations");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            //migrationBuilder.AddColumn<string>(
            //    name: "DesignationId",
            //    table: "Doctors",
            //    type: "nvarchar(60)",
            //    nullable: false,
            //    defaultValue: "");

            //migrationBuilder.AddColumn<string>(
            //    name: "TempId",
            //    table: "Designations",
            //    type: "nvarchar(450)",
            //    nullable: false,
            //    defaultValue: "");

            //migrationBuilder.AddUniqueConstraint(
            //    name: "AK_Designations_TempId",
            //    table: "Designations",
            //    column: "TempId");

            //migrationBuilder.CreateIndex(
            //    name: "IX_Doctors_DesignationId",
            //    table: "Doctors",
            //    column: "DesignationId");

            //migrationBuilder.AddForeignKey(
            //    name: "FK_Doctors_Designations_DesignationId",
            //    table: "Doctors",
            //    column: "DesignationId",
            //    principalTable: "Designations",
            //    principalColumn: "TempId",
            //    onDelete: ReferentialAction.Cascade);
        }
    }
}
