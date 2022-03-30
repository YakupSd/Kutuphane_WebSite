namespace MvcKutupOtomasyon.Models.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Kategori")]
    public partial class Kategori
    {
        public Kategori()
        {
            Kitap = new HashSet<Kitap>();
        }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public byte KategoriID { get; set; }

        [Required(ErrorMessage = "Kategori ismini giriniz..")]
        [StringLength(20,ErrorMessage = "En fazla 20 karakter olabilir")]
        [Display(Name ="Kategori adı")]
        public string AD { get; set; }

        public virtual ICollection<Kitap> Kitap { get; set; }
    }
}
