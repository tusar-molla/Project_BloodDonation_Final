using Project_BloodDonation.Models;
using System.ComponentModel.DataAnnotations;

namespace Project_BloodDonation.ViewModels
{
    public class DoctorViewModels
    {
        public string AreaOfConsultation {get; set;}
        public string SpecialInterest {get; set;}
        public string Institute { get; set; }
        
        public int MemberId {get; set;}
        public string FirstName {get; set;}
        public string LastName {get; set;}
        public string Address {get; set;}
        public string Contact {get; set;}
        public string Email {get; set;}
        public string Role {get; set;}
        public string PassWord {get; set;}
        

    }
}
