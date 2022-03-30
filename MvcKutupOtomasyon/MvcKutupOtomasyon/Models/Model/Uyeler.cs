namespace MvcKutupOtomasyon.Models.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Uyeler")]
    public partial class Uyeler
    {
        public Uyeler()
        {
            Hareket = new HashSet<Hareket>();
        }
        [Key]
        public int UyeID { get; set; }
        [Required(ErrorMessage = "Adınızı Giriniz")]
        [StringLength(15,ErrorMessage ="En fazla 15 karakter olabilir")]
        [Display(Name ="Ad")]
        public string AD { get; set; }
        [Required(ErrorMessage = "Soyadınızı Giriniz")]
        [StringLength(15, ErrorMessage = "En fazla 15 karakter olabilir")]
        [Display(Name = "Soyad")]
        public string SOYAD { get; set; }
        [Required(ErrorMessage = "Mail Giriniz")]
        [EmailAddress(ErrorMessage ="Geçersiz karakter")]
        [Display(Name = "Mail")]
        public string MAİL { get; set; }
        [Required(ErrorMessage = "Kullanıcı adınızı Giriniz"),]
        [StringLength(20)]
        [Display(Name = "Kullanıcı adı")]
        public string KULLANICIADI { get; set; }
        [Required(ErrorMessage = "Şifre Giriniz")]
        [StringLength(10)]
        [Display(Name = "Şifre")]
        public string SİFRE { get; set; }
        [Required(ErrorMessage = "Telefon Giriniz")]
        [Phone(ErrorMessage ="Geçersiz karakter")]
        [Display(Name = "Telefon")]
        public string TELEFON { get; set; }
        public virtual ICollection<Hareket> Hareket { get; set; }
    }
}
