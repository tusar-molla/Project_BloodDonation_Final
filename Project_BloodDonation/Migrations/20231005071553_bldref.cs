using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class bldref : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "PhoneNo",
                table: "BldReferences",
                newName: "PatientPhoneNo");

            migrationBuilder.RenameColumn(
                name: "Name",
                table: "BldReferences",
                newName: "PatientName");

            migrationBuilder.AddColumn<int>(
                name: "BloodGroupId",
                table: "BldReferences",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Bloodqty",
                table: "BldReferences",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<DateTime>(
                name: "DonateTime",
                table: "BldReferences",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<int>(
                name: "ReferenceId",
                table: "BldReferences",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_BldReferences_BloodGroupId",
                table: "BldReferences",
                column: "BloodGroupId");

            migrationBuilder.CreateIndex(
                name: "IX_BldReferences_ReferenceId",
                table: "BldReferences",
                column: "ReferenceId");

            migrationBuilder.AddForeignKey(
                name: "FK_BldReferences_Bloodgroups_BloodGroupId",
                table: "BldReferences",
                column: "BloodGroupId",
                principalTable: "Bloodgroups",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_BldReferences_Members_ReferenceId",
                table: "BldReferences",
                column: "ReferenceId",
                principalTable: "Members",
                principalColumn: "Id",
                onDelete: ReferentialAction.NoAction);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_BldReferences_Bloodgroups_BloodGroupId",
                table: "BldReferences");

            migrationBuilder.DropForeignKey(
                name: "FK_BldReferences_Members_ReferenceId",
                table: "BldReferences");

            migrationBuilder.DropIndex(
                name: "IX_BldReferences_BloodGroupId",
                table: "BldReferences");

            migrationBuilder.DropIndex(
                name: "IX_BldReferences_ReferenceId",
                table: "BldReferences");

            migrationBuilder.DropColumn(
                name: "BloodGroupId",
                table: "BldReferences");

            migrationBuilder.DropColumn(
                name: "Bloodqty",
                table: "BldReferences");

            migrationBuilder.DropColumn(
                name: "DonateTime",
                table: "BldReferences");

            migrationBuilder.DropColumn(
                name: "ReferenceId",
                table: "BldReferences");

            migrationBuilder.RenameColumn(
                name: "PatientPhoneNo",
                table: "BldReferences",
                newName: "PhoneNo");

            migrationBuilder.RenameColumn(
                name: "PatientName",
                table: "BldReferences",
                newName: "Name");
        }
    }
}
