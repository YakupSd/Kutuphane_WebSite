namespace MvcKutupOtomasyon.Models.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Hareket")]
    public partial class Hareket
    {
        [Key]
        public int HareketID { get; set; }
        [Display(Name ="Alım tarihi")]
        public DateTime ALISTARİH { get; set; }

        [Display(Name = "İade tarihi")]
        public DateTime İADETARİH { get; set; }
        public virtual int KitapID { get; set; }
        public virtual Kitap Kitap { get; set; }
        public virtual int UyeID { get; set; }

        public virtual Uyeler Uyeler { get; set; }
    }
}
