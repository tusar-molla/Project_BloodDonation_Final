namespace Project_BloodDonation.Models
{
    public class Disease
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Symptoms { get; set; }
        public ICollection<MembersDesease> MembersDeseases { get; set; }
    }
}
