using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using Microsoft.VisualBasic;

namespace Project_BloodDonation.Models
{

    public class Doctor
    {
        public int Id { get; set; }
      [DataType(DataType.Date)]
      [DisplayName("Date Of Birth")]
      public DateTime DateOfBirth { get; set; }
      [ForeignKey("DoctorType"), Display(Name = "Doctor Type")]
      [ValidateNever]
      public int DoctorTypeId { get; set; }
      [ValidateNever]
      public DoctorType DoctorType { get; set; }
      [Column(TypeName = "nvarchar(60)")]
      public string Designation { get; set;}
      [Column(TypeName = "nvarchar(40)")]
      public string Degree { get; set;}
      [Column(TypeName = "nvarchar(100)")]
      public string Institute { get; set;}
      [Column(TypeName = "nvarchar(25)")]
      public string BMDCNO { get; set;}
      [Column(TypeName = "nvarchar(40)")]
      public string AreaOfConsultation { get; set;}
      [Column(TypeName = "nvarchar(35)")]
      public string SpecialInterest { get; set;}
      [Column(TypeName = "nvarchar(25)")]
      [DisplayName("RegistrationNumber")]
      public string RegistrationNumber { get; set; }
      [Column(TypeName = "varchar(100)")]
      [ValidateNever]
      public string CV { get; set; }
      [NotMapped]
      [DisplayName("Upload CV")]
      [ValidateNever]
      public IFormFile CVFile { get; set; }
      [ValidateNever]
      [ForeignKey("Member")]     
      public int MemberId { get; set; }
      [ValidateNever]
      public Member Member { get; set; }
    }

    public class DoctorType
    {
 
        public int Id { get; set; }
        [StringLength(25)]
        public string Name { get; set; }
        public string Description { get; set; }
    }

}
