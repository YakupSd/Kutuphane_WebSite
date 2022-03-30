using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Services.Description;
using MvcKutupOtomasyon.Models;
using MvcKutupOtomasyon.Models.DataContext;
using MvcKutupOtomasyon.Models.Model;

namespace MvcKutupOtomasyon.Controllers
{

    public class KitapController : Controller
    {
        Context db = new Context();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult KitapSirala()
        {

         if(TempData["mesaj"]!= null)
            {
                ViewBag.mesaj = TempData["mesaj"];
                TempData.Remove("mesaj");
            }

            List<Kitap> kitap = db.TBLKİTAPs.ToList();

            return View(kitap);
        }
        [HttpGet]
        public ActionResult KitapEkle()
        {
            List<SelectListItem> deger = (from i in db.TBLKATEGORİs.ToList()
                                          select new SelectListItem
                                          {
                                              Text = i.AD,
                                              Value = i.KategoriID.ToString()
                                          }).ToList();
            ViewBag.dgr = deger;

            List<SelectListItem> deger1 = (from i in db.TBLYAZARs.ToList()
                                           select new SelectListItem
                                           {
                                               Text = i.AD,
                                               Value = i.YazarID.ToString()
                                           }).ToList();
            ViewBag.dgr1 = deger1;
            var kitap = new Kitap();
            return View(kitap);
        }
        [HttpPost]
        public ActionResult KitapEkle([Bind(Include = "AD,BASIMYILI,ISBN,YAYINEVİ,SAYFA,DURUM,OZET,KategoriID,YazarID")] Kitap p)
        {
            if (!ModelState.IsValid)
            {
                List<SelectListItem> deger = (from i in db.TBLKATEGORİs.ToList()
                                              select new SelectListItem
                                              {
                                                  Text = i.AD,
                                                  Value = i.KategoriID.ToString()
                                              }).ToList();
                ViewBag.dgr = deger;

                List<SelectListItem> deger1 = (from i in db.TBLYAZARs.ToList()
                                               select new SelectListItem
                                               {
                                                   Text = i.AD,
                                                   Value = i.YazarID.ToString()
                                               }).ToList();
                ViewBag.dgr1 = deger1;

                return View("KitapEkle");
            }
            p.KitapID = 0;
            p.Kategori = db.TBLKATEGORİs.Where(x => x.KategoriID == p.KategoriID).FirstOrDefault();
            p.KategoriID = p.Kategori.KategoriID;
            p.Yazar = db.TBLYAZARs.Where(x => x.YazarID == p.YazarID).FirstOrDefault();
            p.YazarID = p.Yazar.YazarID;

            db.TBLKİTAPs.Add(p);
            db.SaveChanges();
            return RedirectToAction("KitapSirala", "Kitap");

        }

        public ActionResult KitapGetir(int id)
        {
            int kitap = db.TBLHAREKETs.Where(x => x.KitapID == id).Count();
            if (kitap == 0)
            {
                var ktg = db.TBLKİTAPs.Find(id);
                return View("KitapGetir", ktg);
            }
            else
            {
                TempData["mesaj"] = "Başka kullanıcı tarafından okunuyor...";
                return RedirectToAction("KitapSirala");
            }
        }
    }
}