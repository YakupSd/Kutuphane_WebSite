namespace MvcKutupOtomasyon.Models.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;


    [Table("Yazar")]
    public partial class Yazar
    {
        public Yazar()
        {
            Kitap = new HashSet<Kitap>();
        }
        [Key]
        public int YazarID { get; set; }
        
        [Required(ErrorMessage = "Yazar ismini giriniz..")]
        [StringLength(30, ErrorMessage = "En fazla 30 karakter olabilir")]
        [Display(Name ="Yazar adı")]
        public string AD { get; set; }
        public virtual ICollection<Kitap> Kitap { get; set; }
    }
}
