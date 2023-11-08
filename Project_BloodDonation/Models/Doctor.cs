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
      public DateTime? DateOfBirth { get; set; }
      [ForeignKey("DoctorType"), Display(Name = "Doctor Type")]
      [ValidateNever]
      public int? DoctorTypeId {get; set;}
      [ValidateNever]
      public DoctorType? DoctorType { get; set; }
      [ForeignKey("Designation"), Display(Name = "Designation")]
      public int DesignationId { get; set; }
      [ValidateNever]
      public Designation Designation {get; set;}
      [Column(TypeName = "nvarchar(40)")]
        [ValidateNever]
        public string BMDCNO { get; set;}
        [ForeignKey("Institution"), Display(Name = "Institution")]
        [ValidateNever]
        public int InstitutionId { get; set; }
        [ValidateNever]
        public Institution Institution { get; set; }
        [ValidateNever]
        [ForeignKey("AreaOfConsultation"), Display(Name = "AreaOfConsultation")]
        public int AreaOfConsultationId { get; set; }
        [ValidateNever]
        public AreaOfConsultation AreaOfConsultation { get; set; }
        [ValidateNever]
        [ForeignKey("Degree"), Display(Name = "Degree")]
        public int DegreeId { get; set; }
        [ValidateNever]
        public Degree Degree { get; set; }
        [ForeignKey("SpecialInterest"),Display(Name = "SpecialInterest")]
        [ValidateNever]
        public int SpecialInterestId {get; set;}
        [ValidateNever]
        public SpecialInterest SpecialInterest {get; set;}
        [Column(TypeName = "nvarchar(25)")]
      [DisplayName("RegistrationNumber")]
      public string RegistrationNumber {get;set;}
      [Column(TypeName = "varchar(100)")]
      [ValidateNever]
      public string? CV { get; set; }
      [NotMapped]
      [DisplayName("Upload CV")]
      [ValidateNever]
      public IFormFile? CVFile { get; set; }
      [ForeignKey("Member")]     
      public int MemberId { get; set; }
      [ValidateNever]
      public Member Member { get; set; }        
    }

    public class Degree { 
        public int Id { get; set; }
        public string Name { get; set; }
    }
    public class AreaOfConsultation {    
        public int Id { get; set;}
        public string Name { get; set; }
    }

    public class SpecialInterest {
    
        public int Id { get; set; }
        public string Name { get; set; }
        
    }
    public class Institution { 
    
        public int Id {get; set;}
        public string Name {get; set;}
    }

    public class DoctorType
    {
        public int Id { get; set;}
        [StringLength(25)]
        public string Name { get; set;}
        public string Description {get; set;}
    }

    public class Designation{ 
        public int Id {get; set;}
        public string Name {get; set;}
        public string Description {get; set;}
    }
}
