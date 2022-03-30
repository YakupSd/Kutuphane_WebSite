using MvcKutupOtomasyon.Models.Model;
using System.ComponentModel.DataAnnotations.Schema;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Common;
using System.Data.Entity.Core.Objects;

namespace MvcKutupOtomasyon.Models.DataContext
{
    public partial class Context : DbContext
    {

        public Context() : base("Kutuphane")
        {

        }

        public virtual DbSet<Yazar> TBLYAZARs { get; set; }
        public virtual DbSet<Uyeler> TBLÜYELERs { get; set; }
        public virtual DbSet<Kitap> TBLKİTAPs { get; set; }
        public virtual DbSet<Kategori> TBLKATEGORİs { get; set; }
        public virtual DbSet<Hareket> TBLHAREKETs { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            // configures one-to-many relationship
            modelBuilder.Entity<Hareket>()
                .HasRequired<Uyeler>(s => s.Uyeler)
                .WithMany(g => g.Hareket)
                .HasForeignKey<int>(s => s.UyeID)
                .WillCascadeOnDelete(false);




        }
    }
}