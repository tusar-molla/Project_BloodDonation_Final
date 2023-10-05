﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Project_BloodDonation.Data;

#nullable disable

namespace Project_BloodDonation.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20231005112819_paassnull")]
    partial class paassnull
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.21")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasDatabaseName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RoleId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("RoleId")
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Value")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens", (string)null);
                });

            modelBuilder.Entity("Project_BloodDonation.Data.ApplicationUser", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("int");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("bit");

                    b.Property<string>("UserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasDatabaseName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasDatabaseName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers", (string)null);
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Area", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("ThanaId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("ThanaId");

                    b.ToTable("Areas");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.BldReference", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Address")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("BloodGroupId")
                        .HasColumnType("int");

                    b.Property<int>("Bloodqty")
                        .HasColumnType("int");

                    b.Property<DateTime>("DonateDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("DonatePlace")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("DonateTime")
                        .HasColumnType("datetime2");

                    b.Property<string>("PatientDeases")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PatientName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PatientPhoneNo")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("ReferenceId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("BloodGroupId");

                    b.HasIndex("ReferenceId");

                    b.ToTable("BldReferences");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.BloodDonationDtls", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("DonarId")
                        .HasColumnType("int");

                    b.Property<string>("DonateQty")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Donateplace")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("DonationDate")
                        .HasColumnType("datetime2");

                    b.Property<int>("RecieverId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("BloodDonationDtls");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Bloodgroup", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Bloodgroups");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Country", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Countries");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Disease", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Symptoms")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Diseases");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.District", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("DivisionId")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("DivisionId");

                    b.ToTable("Districts");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Division", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("CountryId")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("CountryId");

                    b.ToTable("Divisions");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Doctor", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("AreaOfConsultation")
                        .IsRequired()
                        .HasColumnType("nvarchar(40)");

                    b.Property<string>("BMDCNO")
                        .IsRequired()
                        .HasColumnType("nvarchar(25)");

                    b.Property<string>("CV")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.Property<DateTime>("DateOfBirth")
                        .HasColumnType("datetime2");

                    b.Property<string>("Degree")
                        .IsRequired()
                        .HasColumnType("nvarchar(40)");

                    b.Property<string>("Designation")
                        .IsRequired()
                        .HasColumnType("nvarchar(60)");

                    b.Property<int>("DoctorTypeId")
                        .HasColumnType("int");

                    b.Property<string>("Institute")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)");

                    b.Property<int>("MemberId")
                        .HasColumnType("int");

                    b.Property<string>("RegistrationNumber")
                        .IsRequired()
                        .HasColumnType("nvarchar(25)");

                    b.Property<string>("SpecialInterest")
                        .IsRequired()
                        .HasColumnType("nvarchar(35)");

                    b.HasKey("Id");

                    b.HasIndex("DoctorTypeId");

                    b.HasIndex("MemberId");

                    b.ToTable("Doctors");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.DoctorType", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(25)
                        .HasColumnType("nvarchar(25)");

                    b.HasKey("Id");

                    b.ToTable("DoctorTypes");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Donar", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("MemberId")
                        .HasColumnType("int");

                    b.Property<string>("Weight")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("MemberId");

                    b.ToTable("Donars");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Member", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Address")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Age")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("AreaId")
                        .HasColumnType("int");

                    b.Property<int>("BloodgroupId")
                        .HasColumnType("int");

                    b.Property<string>("Contact")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasMaxLength(20)
                        .HasColumnType("nvarchar(20)");

                    b.Property<string>("ImageName")
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("MemberGender")
                        .HasColumnType("int");

                    b.Property<int>("MemberTypes")
                        .HasColumnType("int");

                    b.Property<string>("NID")
                        .HasMaxLength(14)
                        .HasColumnType("nvarchar(14)");

                    b.Property<string>("Passport")
                        .HasColumnType("nvarchar(40)");

                    b.Property<string>("RegistrationDate")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Role")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("SmartCard")
                        .HasMaxLength(14)
                        .HasColumnType("nvarchar(14)");

                    b.HasKey("Id");

                    b.HasIndex("AreaId");

                    b.HasIndex("BloodgroupId");

                    b.ToTable("Members");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.MemberDeseaseReports", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("MemberDeseaseId")
                        .HasColumnType("int");

                    b.Property<string>("ReportsName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ReportsPath")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("StartingDate")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.HasIndex("MemberDeseaseId");

                    b.ToTable("MemberDeseaseReports");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.MembersDesease", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("DeseaseId")
                        .HasColumnType("int");

                    b.Property<int>("MemberId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("DeseaseId");

                    b.HasIndex("MemberId");

                    b.ToTable("MembersDeseases");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Patient", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("ChiefComplain")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("DifferentDiagnosis")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LabrotoryFindings")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("MemberId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("MemberId");

                    b.ToTable("patients");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Thana", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("DistricId")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("DistricId");

                    b.ToTable("Thanas");
                });

            modelBuilder.Entity("Project_BloodDonation.ViewModels.BldrfrenceandPatientdtlsViewModels", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Address")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("BldReferenceId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Contact")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Role")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("BldReferenceId");

                    b.ToTable("BldrfrenceandPatientdtlsViewModels");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("Project_BloodDonation.Data.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("Project_BloodDonation.Data.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Project_BloodDonation.Data.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("Project_BloodDonation.Data.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Area", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.Thana", "Thana")
                        .WithMany("Areas")
                        .HasForeignKey("ThanaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Thana");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.BldReference", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.Bloodgroup", "Bloodgroup")
                        .WithMany()
                        .HasForeignKey("BloodGroupId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Project_BloodDonation.Models.Member", "Member")
                        .WithMany("BldReferences")
                        .HasForeignKey("ReferenceId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Bloodgroup");

                    b.Navigation("Member");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.District", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.Division", "Division")
                        .WithMany()
                        .HasForeignKey("DivisionId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Division");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Division", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.Country", "Country")
                        .WithMany("Divisions")
                        .HasForeignKey("CountryId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Country");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Doctor", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.DoctorType", "DoctorType")
                        .WithMany()
                        .HasForeignKey("DoctorTypeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Project_BloodDonation.Models.Member", "Member")
                        .WithMany("Doctors")
                        .HasForeignKey("MemberId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("DoctorType");

                    b.Navigation("Member");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Donar", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.Member", "Member")
                        .WithMany("Donars")
                        .HasForeignKey("MemberId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Member");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Member", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.Area", "Area")
                        .WithMany()
                        .HasForeignKey("AreaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Project_BloodDonation.Models.Bloodgroup", "Bloodgroup")
                        .WithMany("Members")
                        .HasForeignKey("BloodgroupId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Area");

                    b.Navigation("Bloodgroup");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.MemberDeseaseReports", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.MembersDesease", "MembersDesease")
                        .WithMany("MemberDeseaseReports")
                        .HasForeignKey("MemberDeseaseId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("MembersDesease");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.MembersDesease", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.Disease", "Disease")
                        .WithMany("MembersDeseases")
                        .HasForeignKey("DeseaseId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Project_BloodDonation.Models.Member", "Member")
                        .WithMany("MembersDeseases")
                        .HasForeignKey("MemberId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Disease");

                    b.Navigation("Member");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Patient", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.Member", "Member")
                        .WithMany("patients")
                        .HasForeignKey("MemberId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Member");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Thana", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.District", "District")
                        .WithMany("Thanas")
                        .HasForeignKey("DistricId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("District");
                });

            modelBuilder.Entity("Project_BloodDonation.ViewModels.BldrfrenceandPatientdtlsViewModels", b =>
                {
                    b.HasOne("Project_BloodDonation.Models.BldReference", "BldReference")
                        .WithMany()
                        .HasForeignKey("BldReferenceId");

                    b.Navigation("BldReference");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Bloodgroup", b =>
                {
                    b.Navigation("Members");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Country", b =>
                {
                    b.Navigation("Divisions");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Disease", b =>
                {
                    b.Navigation("MembersDeseases");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.District", b =>
                {
                    b.Navigation("Thanas");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Member", b =>
                {
                    b.Navigation("BldReferences");

                    b.Navigation("Doctors");

                    b.Navigation("Donars");

                    b.Navigation("MembersDeseases");

                    b.Navigation("patients");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.MembersDesease", b =>
                {
                    b.Navigation("MemberDeseaseReports");
                });

            modelBuilder.Entity("Project_BloodDonation.Models.Thana", b =>
                {
                    b.Navigation("Areas");
                });
#pragma warning restore 612, 618
        }
    }
}
