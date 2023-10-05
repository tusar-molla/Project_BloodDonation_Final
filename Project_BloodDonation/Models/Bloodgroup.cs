using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq.Dynamic;

namespace Project_BloodDonation.Models
{
    public class Bloodgroup
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public ICollection<Member> Members { get; set; }
    }

    public enum MemberTypes { 
    
        Donar = 1, Receiver, Both
    }

    public enum MemberGender
    {

        Male, Female
    }

   public class Member {

      public int Id { get; set; }

      [Column(TypeName = "nvarchar(40)")] //, DisplayName("Passport Number")]

     
      public string? Passport { get; set; }
        [Column(TypeName = "nvarchar(50)")]
        [StringLength(20)]
      [Required]
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Contact { get; set; }
        //[Unique(ErrorMessage = "This already exist !!")]
        public string Email { get; set; }
        public string? Age{ get; set; }

        [StringLength(14), DisplayName("National ID")]
        public string? NID { get; set; }

        [StringLength(14), DisplayName("Smart ID")]

        public string? SmartCard { get; set; }
        public MemberTypes MemberTypes { get; set; } = MemberTypes.Donar;
        public MemberGender? MemberGender { get; set; }
      public string Role { get; set; }

      [Column (TypeName ="nvarchar(100)")]
        [DisplayName("Image Name")]
        [ValidateNever]
        public string? ImageName { get; set; }

        [NotMapped]
        [DisplayName("Upload File")]
        public IFormFile? ImageFile { get; set; }
     
      public string RegistrationDate { get; set; } = DateTime.Now.ToShortDateString();
  
        [ForeignKey("Bloodgroup"),DisplayName("Blood Group")]
        public int? BloodgroupId { get; set; }
        [ValidateNever]
        public Bloodgroup? Bloodgroup { get; set; }

        [ForeignKey("Area"),DisplayName("Area")]
     
      public int? AreaId { get; set; }
      [ValidateNever]
      public Area? Area { get; set; }

      [ValidateNever]
      public ICollection<Donar>? Donars { get; set; }

      [ValidateNever]
      public ICollection<Doctor>? Doctors { get; set; }
      [ValidateNever]
      public ICollection<Patient>? patients { get; set; }
      [ValidateNever]
      public ICollection<MembersDesease>? MembersDeseases {get; set;}
      public ICollection<BldReference>? BldReferences { get; set; }
   }

    public class Area { 
    
        public int Id { get; set; }
        public string Name { get; set; }
     
        [ForeignKey("Thana"), DisplayName("Thana")]
        public int ThanaId { get; set;}
        public Thana Thana { get; set; }
    }

    public class Thana {
        public Thana() { 
        
            Areas = new List<Area>();
        }
        public int Id { get; set; }
        public string Name { get; set; }


        [ForeignKey("District"), DisplayName("District")]
        public int DistricId{ get; set; }
        public District District { get; set; }

        public List<Area> Areas { get; set; }
    }

    public class District {
    
        public int Id { get; set; }
        public string Name { get; set; }
       

        [ForeignKey("Division"), DisplayName("Division")]
        public int DivisionId { get; set; }
        public Division Division { get; set;}

        public ICollection<Thana> Thanas { get; set; }

    }

    public class Division
    {
        public int Id { get; set; }
        public string Name { get; set; }
    
        [ForeignKey("Country"),
        DisplayName("Country")]
        public int CountryId { get; set; }
        public Country Country { get; set;}

    }
    public class Country
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public ICollection<Division> Divisions { get; set; }
    }

    public class BloodDonationDtls { 
    
        public int Id { get; set; }

        [DisplayName("DonarID")]
        public int DonarId { get; set; }
        [DisplayName("RecieverID")]
        public int RecieverId { get; set; }
        [DisplayName("DonationDate")]
        public DateTime DonationDate { get; set; }
        [DisplayName("DonateQTY")]
        public string DonateQty { get; set;}
        [DisplayName("DonatePlace")]
        public string Donateplace { get; set; }
    }
}
