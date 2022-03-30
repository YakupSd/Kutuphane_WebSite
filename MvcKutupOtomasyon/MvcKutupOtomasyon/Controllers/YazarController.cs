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

    public class YazarController : Controller
    {
        Context db = new Context();
        public ActionResult YazarEkle()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YazarEkle(Yazar p)
        {
            if (ModelState.IsValid)
            {
                db.TBLYAZARs.Add(p);
                db.SaveChanges();
                return RedirectToAction("KitapEkle", "Kitap");
            }
            return View("YazarEkle");
        }

        public ActionResult YazarSil(int id)
        {
            var yazar = db.TBLYAZARs.Find(id);
            db.TBLYAZARs.Remove(yazar);
            db.SaveChanges();
            return RedirectToAction("YazarEkle", "Yazar");
        }

        public ActionResult YazarList()
        {
            List<Yazar> degerler = db.TBLYAZARs.ToList();
            return View(degerler);
        }
    }
}