using Project_BloodDonation.Models;
using System.ComponentModel.DataAnnotations;

namespace Project_BloodDonation.ViewModels
{
   public class BldrfrenceandPatientdtlsViewModels
   {
      public BloodReqst? BldReference { get; set; }
      //public Member? Member { get; set; }

      public int Id { get; set; }//MemberId
      [Required]
      public string FirstName { get; set; }
      public string LastName { get; set; }
      public string Address { get; set; }
      public string Contact { get; set; }
      public string Email { get; set; }
      public string Role { get; set; }

   }
}
