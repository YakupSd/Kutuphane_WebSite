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

    public class HareketController : Controller
    {
        Context db = new Context();
        [HttpGet]
        public ActionResult OduncAl([Bind(Include = "ALISTARİH,İADETARİH")] int KitapID)
        {
            ViewBag.Kitap = db.TBLKİTAPs.FirstOrDefault(x => x.KitapID == KitapID);
            Hareket p = new Hareket();
            p.KitapID = KitapID;
            p.ALISTARİH = DateTime.Now;
            p.İADETARİH = DateTime.Now.AddDays(7);

            Uyeler uyeler = new Uyeler();
            uyeler = db.TBLÜYELERs.FirstOrDefault(x => x.KULLANICIADI == User.Identity.Name);
            p.UyeID = uyeler.UyeID;

            return View(p);
        }

        [HttpPost]
        public ActionResult OduncAl(Hareket p)
        {

            int hrkt = db.TBLHAREKETs.Where(m => m.KitapID == p.KitapID && m.UyeID == p.UyeID).Count();

            if (hrkt == 0)
            {
                db.TBLHAREKETs.Add(p);
                db.SaveChanges();
                return RedirectToAction("KitapSirala", "Kitap");
            }
            else
            {
                ViewBag.Mesaj = "Kitap başkası tarafından okunuyor...";
                return RedirectToAction("KitapSirala", "Kitap");
            }
        }

        public ActionResult Odunclistele()
        {
            List<Hareket> odunc = db.TBLHAREKETs.Where(m => m.Uyeler.KULLANICIADI == User.Identity.Name).ToList();
            List<String> uyarilist = new List<string>();
            foreach (Hareket item in odunc)
            {
                if (item.İADETARİH < DateTime.Now)
                {
                    string mesaj = "Süren doldu. Lütfen kitabı iade et";
                    uyarilist.Add(mesaj);

                }
                else
                {
                    uyarilist.Add("");
                }
            }
            ViewBag.uyarilar = uyarilist;
            return View(odunc);
        }

        public ActionResult OduncSil(int id)
        {

            var odunc = db.TBLHAREKETs.Find(id);
            db.TBLHAREKETs.Remove(odunc);
            db.SaveChanges();
            return RedirectToAction("KitapSirala", "Kitap");
        }

    }
}