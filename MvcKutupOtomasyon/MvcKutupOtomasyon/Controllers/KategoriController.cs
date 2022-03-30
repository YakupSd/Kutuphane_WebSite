using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcKutupOtomasyon.Models;
using MvcKutupOtomasyon.Models.DataContext;
using MvcKutupOtomasyon.Models.Model;


namespace MvcKutupOtomasyon.Controllers
{

    public class KategoriController : Controller
    {
        Context db = new Context();
        public ActionResult KategoriEkle()
        {
            return View();
        }
        [HttpPost]
        public ActionResult KategoriEkle(Kategori p)
        {
            if (ModelState.IsValid)
            {
                db.TBLKATEGORİs.Add(p);
                db.SaveChanges();
                return RedirectToAction("KitapEkle", "Kitap");
            }
            return View("KategoriEkle");

        }

        public ActionResult KategoriSil(int id)
        {
            var kategori = db.TBLKATEGORİs.Find(id);
            db.TBLKATEGORİs.Remove(kategori);
            db.SaveChanges();
            return RedirectToAction("KitapEkle", "Kitap");
        }
        public ActionResult KategoriList()
        {
            List<Kategori> degerler = db.TBLKATEGORİs.ToList();
            return View(degerler);
        }

    }
}