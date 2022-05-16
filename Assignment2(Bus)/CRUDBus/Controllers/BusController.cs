using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CRUDBus.Context;
using System.Web.Mvc;
using CRUDBus.context.CRUDBus.Models;

namespace CRUDBus.Controllers
{
    public class BusController : Controller
    {
        Db_BusEntities dbobj = new Db_BusEntities();
        // GET: Bus
        public ActionResult Bus()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddBus(tbl_Bus model)
        {
            tbl_Bus obj = new tbl_Bus();
            obj.BusID = model.BusID;
            obj.BoardingPoint = model.BoardingPoint;
            obj.Traveldate = model.Traveldate;
            obj.Rating = model.Rating;
            obj.Amount = model.Amount;
            dbobj.tbl_Bus.Add(obj);
            dbobj.SaveChanges();
            
            return View();
        }
    }
}

