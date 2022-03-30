using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcKutupOtomasyon.Controllers
{
    [Authorize]
    public class İletisimController : Controller
    {
        // GET: İletisim
        public ActionResult Index()
        {
            return View();
        }
    }
}