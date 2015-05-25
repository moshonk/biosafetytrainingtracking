using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BiosafetyTraining.Models;
using WebMatrix.WebData;

namespace BiosafetyTraining.Controllers
{
     [Authorize]
    public class CountyController : Controller
    {
        private BiosafetyEntities db = new BiosafetyEntities();

        public ActionResult IndexListOnly()
        {
            return PartialView("CountyListPartial", db.counties.ToList());
        }
        //
        // GET: /County/

        public ActionResult Index()
        {
            return View(db.counties.ToList());
        }

        //
        // GET: /County/Details/5

        public ActionResult Details(int id = 0)
        {
            county county = db.counties.Single(c => c.county_id == id);
            if (county == null)
            {
                return HttpNotFound();
            }
            return View(county);
        }

        //
        // GET: /County/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /County/Create

        [HttpPost]
        public ActionResult Create(county county)
        {
            if (ModelState.IsValid)
            {
                county.date_created = DateTime.Today;
                county.created_by = WebSecurity.GetUserId(User.Identity.Name);
                db.counties.AddObject(county);
                db.SaveChanges();
                return RedirectToAction("IndexListOnly");
            }

            this.Response.StatusCode = 400;
            return View(county);
        }

        //
        // GET: /County/Edit/5

        public ActionResult Edit(int id = 0)
        {
            county county = db.counties.Single(c => c.county_id == id);
            if (county == null)
            {
                return HttpNotFound();
            }
            return View(county);
        }

        //
        // POST: /County/Edit/5

        [HttpPost]
        public ActionResult Edit(county county)
        {
            if (ModelState.IsValid)
            {
                county.date_modified = DateTime.Today;
                county.modified_by = WebSecurity.GetUserId(User.Identity.Name);
                db.counties.Attach(county);
                db.ObjectStateManager.ChangeObjectState(county, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("IndexListOnly");
            }
            this.Response.StatusCode = 400;
            return View(county);
        }

        //
        // GET: /County/Delete/5

        public ActionResult Delete(int id = 0)
        {
            county county = db.counties.Single(c => c.county_id == id);
            if (county == null)
            {
                return HttpNotFound();
            }
            return View(county);
        }

        //
        // POST: /County/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            county county = db.counties.Single(c => c.county_id == id);
            db.counties.DeleteObject(county);
            db.SaveChanges();
            return RedirectToAction("IndexListOnly");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}