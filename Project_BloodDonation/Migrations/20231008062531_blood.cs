using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class blood : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BldReferences");

            migrationBuilder.CreateTable(
                name: "BloodReqsts",
                columns: table => new
                {
                    BloodReqstId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PatientName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PatientPhoneNo = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Address = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PatientDeases = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DonateDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    DonatePlace = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DonateTime = table.Column<DateTime>(type: "datetime2", nullable: false),
                    BloodGroupId = table.Column<int>(type: "int", nullable: false),
                    Bloodqty = table.Column<int>(type: "int", nullable: false),
                    ReferenceId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BloodReqsts", x => x.BloodReqstId);
                    table.ForeignKey(
                        name: "FK_BloodReqsts_Bloodgroups_BloodGroupId",
                        column: x => x.BloodGroupId,
                        principalTable: "Bloodgroups",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_BloodReqsts_Members_ReferenceId",
                        column: x => x.ReferenceId,
                        principalTable: "Members",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_BloodReqsts_BloodGroupId",
                table: "BloodReqsts",
                column: "BloodGroupId");

            migrationBuilder.CreateIndex(
                name: "IX_BloodReqsts_ReferenceId",
                table: "BloodReqsts",
                column: "ReferenceId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BloodReqsts");

            migrationBuilder.CreateTable(
                name: "BldReferences",
                columns: table => new
                {
                    BldReferenceId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BloodGroupId = table.Column<int>(type: "int", nullable: false),
                    ReferenceId = table.Column<int>(type: "int", nullable: false),
                    Address = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Bloodqty = table.Column<int>(type: "int", nullable: false),
                    DonateDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    DonatePlace = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DonateTime = table.Column<DateTime>(type: "datetime2", nullable: false),
                    PatientDeases = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PatientName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PatientPhoneNo = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BldReferences", x => x.BldReferenceId);
                    table.ForeignKey(
                        name: "FK_BldReferences_Bloodgroups_BloodGroupId",
                        column: x => x.BloodGroupId,
                        principalTable: "Bloodgroups",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_BldReferences_Members_ReferenceId",
                        column: x => x.ReferenceId,
                        principalTable: "Members",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_BldReferences_BloodGroupId",
                table: "BldReferences",
                column: "BloodGroupId");

            migrationBuilder.CreateIndex(
                name: "IX_BldReferences_ReferenceId",
                table: "BldReferences",
                column: "ReferenceId");
        }
    }
}
