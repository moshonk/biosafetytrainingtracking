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
    public class OrganizationController : Controller
    {
        private BiosafetyEntities db = new BiosafetyEntities();

        public ActionResult IndexListOnly()
        {
            return PartialView("OrganizationListPartial",db.organizations.ToList());
        }

        //
        // GET: /Organization/

        public ActionResult Index()
        {
            return View(db.organizations.ToList());
        }

        //
        // GET: /Organization/Details/5

        public ActionResult Details(int id = 0)
        {
            organization organization = db.organizations.Single(o => o.organization_id == id);
            if (organization == null)
            {
                return HttpNotFound();
            }
            return View(organization);
        }

        //
        // GET: /Organization/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Organization/Create

        [HttpPost]
        public ActionResult Create(organization organization)
        {
            if (ModelState.IsValid)
            {
                organization.date_created = DateTime.Today;
                organization.created_by = WebSecurity.GetUserId(User.Identity.Name);
                db.organizations.AddObject(organization);
                db.SaveChanges();
                return RedirectToAction("IndexListOnly");
            }

            this.Response.StatusCode = 400;
            return View(organization);
        }

        //
        // GET: /Organization/Edit/5

        public ActionResult Edit(int id = 0)
        {
            organization organization = db.organizations.Single(o => o.organization_id == id);
            if (organization == null)
            {
                return HttpNotFound();
            }
            return View(organization);
        }

        //
        // POST: /Organization/Edit/5

        [HttpPost]
        public ActionResult Edit(organization organization)
        {
            if (ModelState.IsValid)
            {
                organization.date_modified = DateTime.Today;
                organization.modified_by = WebSecurity.GetUserId(User.Identity.Name);
                db.organizations.Attach(organization);
                db.ObjectStateManager.ChangeObjectState(organization, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("IndexListOnly");
            }

            this.Response.StatusCode = 400;
            return View(organization);
        }

        //
        // GET: /Organization/Delete/5

        public ActionResult Delete(int id = 0)
        {
            organization organization = db.organizations.Single(o => o.organization_id == id);
            if (organization == null)
            {
                return HttpNotFound();
            }
            return View(organization);
        }

        //
        // POST: /Organization/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            organization organization = db.organizations.Single(o => o.organization_id == id);
            db.organizations.DeleteObject(organization);
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