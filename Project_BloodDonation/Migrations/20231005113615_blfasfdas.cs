using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    public partial class blfasfdas : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Members_Bloodgroups_BloodgroupId",
                table: "Members");

            migrationBuilder.AlterColumn<int>(
                name: "BloodgroupId",
                table: "Members",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddForeignKey(
                name: "FK_Members_Bloodgroups_BloodgroupId",
                table: "Members",
                column: "BloodgroupId",
                principalTable: "Bloodgroups",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Members_Bloodgroups_BloodgroupId",
                table: "Members");

            migrationBuilder.AlterColumn<int>(
                name: "BloodgroupId",
                table: "Members",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Members_Bloodgroups_BloodgroupId",
                table: "Members",
                column: "BloodgroupId",
                principalTable: "Bloodgroups",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
