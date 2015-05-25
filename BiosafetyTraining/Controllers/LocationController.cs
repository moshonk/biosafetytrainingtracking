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
    public class LocationController : Controller
    {
        private BiosafetyEntities db = new BiosafetyEntities();

        public ActionResult IndexListOnly()
        {
            return PartialView("LocationListPartial", db.locations.ToList());
        }

        //
        // GET: /Location/

        public ActionResult Index()
        {
            return View(db.locations.ToList());
        }

        //
        // GET: /Location/Details/5

        public ActionResult Details(int id = 0)
        {
            location location = db.locations.Single(l => l.location_id == id);
            if (location == null)
            {
                return HttpNotFound();
            }
            return View(location);
        }

        //
        // GET: /Location/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Location/Create

        [HttpPost]
        public ActionResult Create(location location)
        {
            if (ModelState.IsValid)
            {
                location.date_created = DateTime.Today;
                location.created_by = WebSecurity.GetUserId(User.Identity.Name);
                db.locations.AddObject(location);
                db.SaveChanges();
                return RedirectToAction("IndexListOnly");
            }
            this.Response.StatusCode = 400;
            return View(location);
        }

        //
        // GET: /Location/Edit/5

        public ActionResult Edit(int id = 0)
        {
            location location = db.locations.Single(l => l.location_id == id);
            if (location == null)
            {
                return HttpNotFound();
            }
            return View(location);
        }

        //
        // POST: /Location/Edit/5

        [HttpPost]
        public ActionResult Edit(location location)
        {
            if (ModelState.IsValid)
            {
                location.date_modified = DateTime.Today;
                location.modified_by = WebSecurity.GetUserId(User.Identity.Name);
                db.locations.Attach(location);
                db.ObjectStateManager.ChangeObjectState(location, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("IndexListOnly");
            }
            this.Response.StatusCode = 400;
            return View(location);
        }

        //
        // GET: /Location/Delete/5

        public ActionResult Delete(int id = 0)
        {
            location location = db.locations.Single(l => l.location_id == id);
            if (location == null)
            {
                return HttpNotFound();
            }
            return View(location);
        }

        //
        // POST: /Location/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            location location = db.locations.Single(l => l.location_id == id);
            db.locations.DeleteObject(location);
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