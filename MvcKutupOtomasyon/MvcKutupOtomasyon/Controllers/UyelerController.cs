using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using MvcKutupOtomasyon.Models;
using MvcKutupOtomasyon.Models.DataContext;
using MvcKutupOtomasyon.Models.Model;

namespace MvcKutupOtomasyon.Controllers
{
    public class UyelerController : Controller
    {
        Context db = new Context();

        public ActionResult GirisYap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult GirisYap(Uyeler p)
        {
            Uyeler uye = db.TBLÜYELERs.FirstOrDefault(m => m.KULLANICIADI == p.KULLANICIADI && m.SİFRE == p.SİFRE);
            if (uye != null)
            {
                FormsAuthentication.SetAuthCookie(uye.KULLANICIADI, true);
                return RedirectToAction("Index", "Kitap");

            }
            else
            {
                TempData["Mesaj"] = "Geçersiz kullanıcı adı veya şifre";
                ViewBag.Mesaj = TempData["Mesaj"];
                TempData.Remove("Mesaj");
                return View();
            }
        }
        [HttpGet]
        public ActionResult KayitOl()
        {
            return View();
        }
        [HttpPost]
        public ActionResult KayitOl(Uyeler p)
        {
            if (ModelState.IsValid)
            {
                var uye = db.TBLÜYELERs.FirstOrDefault(m => m.KULLANICIADI == p.KULLANICIADI);
                if (uye != null)
                {
                    TempData["Mesaj"] = "Kullanılıyor";
                    ViewBag.Mesaj = TempData["Mesaj"];
                    TempData.Remove("Mesaj");
                    return RedirectToAction("KayitOl", "Uyeler");
                }
                else
                {
                    db.TBLÜYELERs.Add(p);
                    db.SaveChanges();
                    return RedirectToAction("GirisYap", "Uyeler");
                }

            }
            return View("KayitOl");
        }
        
        public ActionResult Sifre()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Sifre([Bind(Include = "KULLANICIADI,SİFRE")]Uyeler p)
        {
            var uye = db.TBLÜYELERs.FirstOrDefault(m => m.KULLANICIADI == p.KULLANICIADI);
            
            if (uye != null)
            {
                uye.SİFRE = p.SİFRE;
                db.SaveChanges();
                return RedirectToAction("GirisYap", "Uyeler");
            }
            TempData["deger"] = "Kullanıcı adı yanlış";
            ViewBag.deger = TempData["deger"];
            TempData.Remove("deger");
            return View();
        }
    }
}