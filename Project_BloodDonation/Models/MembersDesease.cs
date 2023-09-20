using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations.Schema;

namespace Project_BloodDonation.Models
{
    public class MembersDesease
    {
        public int Id { get; set; }
        [ForeignKey("Disease")]
      [ValidateNever]
      public int DeseaseId { get; set; }
      [ValidateNever]
      public Disease Disease { get; set; }

      [ForeignKey("Member")]
      [ValidateNever]
      public int MemberId { get; set; }
      [ValidateNever]
      public Member Member { get; set; }
      [ValidateNever]
      public ICollection<MemberDeseaseReports> MemberDeseaseReports { get; set; }

   }

}
