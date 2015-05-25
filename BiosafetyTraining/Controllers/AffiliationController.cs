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
    public class AffiliationController : Controller
    {
        private BiosafetyEntities db = new BiosafetyEntities();

        public ActionResult IndexListOnly()
        {
            return PartialView("AffiliationListPartial", db.affiliations.ToList());
        }

        //
        // GET: /Affiliation/

        public ActionResult Index()
        {
            return View(db.affiliations.ToList());
        }

        //
        // GET: /Affiliation/Details/5

        public ActionResult Details(int id = 0)
        {
            affiliation affiliation = db.affiliations.Single(a => a.affiliation_id == id);
            if (affiliation == null)
            {
                return HttpNotFound();
            }
            return View(affiliation);
        }

        //
        // GET: /Affiliation/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Affiliation/Create

        [HttpPost]
        public ActionResult Create(affiliation affiliation)
        {
            if (ModelState.IsValid)
            {
                affiliation.date_created = DateTime.Today;
                affiliation.created_by = WebSecurity.GetUserId(User.Identity.Name);
                db.affiliations.AddObject(affiliation);
                db.SaveChanges();
                return PartialView("AffiliationListPartial", db.affiliations.ToList());
            }

            this.Response.StatusCode = 400;
            return View(affiliation);
        }

        //
        // GET: /Affiliation/Edit/5

        public ActionResult Edit(int id = 0)
        {
            affiliation affiliation = db.affiliations.Single(a => a.affiliation_id == id);
            if (affiliation == null)
            {
                return HttpNotFound();
            }
            return View(affiliation);
        }

        //
        // POST: /Affiliation/Edit/5

        [HttpPost]
        public ActionResult Edit(affiliation affiliation)
        {
            if (ModelState.IsValid)
            {
                affiliation.date_modified = DateTime.Today;
                affiliation.modified_by = WebSecurity.GetUserId(User.Identity.Name);
                db.affiliations.Attach(affiliation);
                db.ObjectStateManager.ChangeObjectState(affiliation, EntityState.Modified);
                db.SaveChanges();
                return PartialView("AffiliationListPartial", db.affiliations.ToList());
            }
            this.Response.StatusCode = 400;
            return View(affiliation);
        }

        //
        // GET: /Affiliation/Delete/5

        public ActionResult Delete(int id = 0)
        {
            affiliation affiliation = db.affiliations.Single(a => a.affiliation_id == id);
            if (affiliation == null)
            {
                return HttpNotFound();
            }
            return View(affiliation);
        }

        //
        // POST: /Affiliation/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            affiliation affiliation = db.affiliations.Single(a => a.affiliation_id == id);
            db.affiliations.DeleteObject(affiliation);
            db.SaveChanges();
            return PartialView("AffiliationListPartial", db.affiliations.ToList());
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}