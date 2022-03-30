namespace MvcKutupOtomasyon.Models.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Kitap")]
    public partial class Kitap
    {

        public Kitap()
        {
            Hareket = new HashSet<Hareket>();
        }
        [Key]
        public int KitapID { get; set; }
        [Required(ErrorMessage = "Kitap adını Giriniz")]
        [StringLength(50, ErrorMessage = "En fazla 50 karakter olabilir")]
        [Display(Name = "Kitap adı")]
        public string AD { get; set; }
        [Display(Name = "Basım yılı")]
        [Required(ErrorMessage = "Basım yılını Giriniz")]
        [Range(1000, 2021, ErrorMessage = "1000 ile 2021 yılları arasında olabilir")]
        public int BASIMYILI { get; set; }
        [Required(ErrorMessage = "ISBN numarasını Giriniz")]
        [Range(0, 100000000000, ErrorMessage = "Geçersiz ISBN")]
        [Display(Name = "ISBN numarası")]
        public int ISBN { get; set; }
        [Required(ErrorMessage = "Yayınevini Giriniz")]
        [StringLength(50)]
        [Display(Name = "Yayınevi")]
        public string YAYINEVİ { get; set; }
        [Required(ErrorMessage = "Sayfa sayısını Giriniz")]
        [Range(0, 100000000000, ErrorMessage = "Geçersiz sayfa sayısı")]
        [Display(Name = "Sayfa")]
        public int SAYFA { get; set; }
        [Required(ErrorMessage = "Özet yazınız")]
        [StringLength(500, ErrorMessage = "Karakter aşımı")]
        [Display(Name = "Kitap özeti")]
        public string OZET { get; set; }

        public virtual ICollection<Hareket> Hareket { get; set; }
        public byte KategoriID { get; set; }
        public virtual Kategori Kategori { get; set; }
        public int YazarID { get; set; }
        public virtual Yazar Yazar { get; set; }
    }
}
