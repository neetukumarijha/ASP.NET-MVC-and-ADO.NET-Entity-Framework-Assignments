using system;
using System.ComponentModel.DataAnnotations;

namespace CRUDBus.Models
{
    public class tbl_Bus
    {

        public int BusID { get; set; }
        [Required(ErrorMessage = "Required")]
        public string BoardingPoint { get; set; }
        [Required(ErrorMessage = "Required Boarding Point should be MUM,PUN,HYD,CHN,BGL ")]
        public System.DateTime Traveldate { get; set; }
        [Required(ErrorMessage = "Required should accept only Date")]
        public decimal Amount { get; set; }
        [Required(ErrorMessage = "Required ")]
        public int Rating { get; set; }
        [MinLength(5, ErrorMessage = "rating should be between 1 to 5")]
    }
}