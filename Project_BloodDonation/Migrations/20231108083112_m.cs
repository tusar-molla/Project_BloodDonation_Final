using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class m : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            //migrationBuilder.AddColumn<int>(
            //    name: "DesignationId",
            //    table: "Doctors",
            //    type: "int",
            //    nullable: false,
            //    defaultValue: 0);

            //migrationBuilder.CreateIndex(
            //    name: "IX_Doctors_DesignationId",
            //    table: "Doctors",
            //    column: "DesignationId");

            //migrationBuilder.AddForeignKey(
            //    name: "FK_Doctors_Designations_DesignationId",
            //    table: "Doctors",
            //    column: "DesignationId",
            //    principalTable: "Designations",
            //    principalColumn: "Id",
            //    onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            //migrationBuilder.DropForeignKey(
            //    name: "FK_Doctors_Designations_DesignationId",
            //    table: "Doctors");

            //migrationBuilder.DropIndex(
            //    name: "IX_Doctors_DesignationId",
            //    table: "Doctors");

            //migrationBuilder.DropColumn(
            //    name: "DesignationId",
            //    table: "Doctors");
        }
    }
}
