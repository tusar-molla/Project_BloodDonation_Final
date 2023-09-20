using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations.Schema;

namespace Project_BloodDonation.Models
{
    public class Donar
    {
        public int Id { get; set; }
        public string Weight { get; set; }
        [ForeignKey("Member")]
        [ValidateNever]
      public int MemberId { get; set; }
        [ValidateNever]
        public Member Member { get; set; }
    
    }
}
