using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations.Schema;

namespace Project_BloodDonation.Models
{
    public class Patient
    {
         public int Id { get; set;}   
         public string ChiefComplain { get; set;}
         public string DifferentDiagnosis { get; set;}
         public string LabrotoryFindings { get; set;}
         [ForeignKey("Member")]
      [ValidateNever]
      public int MemberId { get; set;}
         [ValidateNever]
         public Member Member { get; set;}        
    }

    public class MemberDeseaseReports
    {
        public int Id { get; set; }
      [ValidateNever]
      public string? ReportsName { get; set; }
      [ValidateNever]
      public string ReportsPath { get; set; }
      [NotMapped]
      [DisplayName("Upload Reports")]
      [ValidateNever]
      public IFormFile ReportsFile { get; set; }
      public DateTime StartingDate { get; set; }
      [ForeignKey("MembersDesease")]
      [ValidateNever]
      public int MemberDeseaseId { get; set; }
      [ValidateNever]
       public MembersDesease MembersDesease { get; set; }

    }

}
