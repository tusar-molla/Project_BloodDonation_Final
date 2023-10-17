using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Project_BloodDonation.Models;
using System.ComponentModel.DataAnnotations.Schema;
using Project_BloodDonation.ViewModels;
using Project_BloodDonation.Controllers;

namespace Project_BloodDonation.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<Bloodgroup> Bloodgroups { get; set; }
        public DbSet<Member> Members { get; set; }
        public DbSet<Area> Areas { get; set; }
        public DbSet<Thana> Thanas { get; set; }
        public DbSet<District> Districts { get; set; }
        public DbSet<Division> Divisions { get; set; }
        public DbSet<Country> Countries { get; set; }        
        public DbSet<Doctor> Doctors { get; set; }
        public DbSet<DoctorType> DoctorTypes { get; set; }
        public DbSet<Disease> Diseases { get; set; }
        public DbSet<MembersDesease> MembersDeseases { get; set; }
        public DbSet<Donar> Donars { get; set; }
        public DbSet<Patient> patients { get; set; }
        public DbSet<MemberDeseaseReports> MemberDeseaseReports { get; set; }
        public  DbSet<BloodReqst> BloodReqsts { get; set; }
   }
}