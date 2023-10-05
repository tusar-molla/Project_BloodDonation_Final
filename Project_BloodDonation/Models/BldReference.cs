using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Project_BloodDonation.Models
{
   public class BldReference
   {
      
      public int BldReferenceId { get; set;}
      public string PatientName {get; set;}
      public string PatientPhoneNo { get; set;}
      public string Address { get; set;}
      public string PatientDeases { get; set;}
      [DataType(DataType.Date)]
      public DateTime DonateDate { get; set;}
      public string DonatePlace { get; set;}
      [DataType(DataType.Time)]
      public DateTime DonateTime { get; set; }
      [ForeignKey("Bloodgroup")]
      public int BloodGroupId { get; set; }
      public int Bloodqty { get; set; }
      [ValidateNever]
      public Bloodgroup Bloodgroup { get; set; }
      [ForeignKey("Member")]
      public int ReferenceId { get; set; }
      [ValidateNever]
      public Member Member { get; set; }

   }
}
