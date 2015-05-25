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
    public class PersonController : Controller
    {
        private BiosafetyEntities db = new BiosafetyEntities();

        public ActionResult IndexListOnly()
        {
            return PartialView("PersonListPartial", db.people.ToList());
        }

        //
        // GET: /Person/

        public ActionResult Index()
        {
            var people = db.people.Include("affiliation").Include("county").Include("job_title").Include("organization");
            return View(people.ToList());
        }

        //
        // GET: /Person/Details/5

        public ActionResult Details(int id = 0)
        {
            person person = db.people.Single(p => p.person_id == id);
            if (person == null)
            {
                return HttpNotFound();
            }
            return View(person);
        }

        //
        // GET: /Person/Create

        public ActionResult Create()
        {
            ViewBag.affiliation_id = new SelectList(db.affiliations, "affiliation_id", "affiliation_name");
            ViewBag.county_id = new SelectList(db.counties, "county_id", "county_name");
            ViewBag.job_title_id = new SelectList(db.job_title, "job_title_id", "job_title_name");
            ViewBag.organization_id = new SelectList(db.organizations, "organization_id", "organization_name");
            return View();
        }

        //
        // POST: /Person/Create

        [HttpPost]
        public ActionResult Create(person person)
        {
            if (ModelState.IsValid)
            {
                person.date_created = DateTime.Today;
                person.created_by = WebSecurity.GetUserId(User.Identity.Name);
                db.people.AddObject(person);
                db.SaveChanges();
                return RedirectToAction("IndexListOnly");
            }

            ViewBag.affiliation_id = new SelectList(db.affiliations, "affiliation_id", "affiliation_name", person.affiliation_id);
            ViewBag.county_id = new SelectList(db.counties, "county_id", "county_name", person.county_id);
            ViewBag.job_title_id = new SelectList(db.job_title, "job_title_id", "job_title_name", person.job_title_id);
            ViewBag.organization_id = new SelectList(db.organizations, "organization_id", "organization_name", person.organization_id);
            this.Response.StatusCode = 400;
            return View(person);
        }

        //
        // GET: /Person/Edit/5

        public ActionResult Edit(int id = 0)
        {
            person person = db.people.Single(p => p.person_id == id);
            if (person == null)
            {
                return HttpNotFound();
            }
            ViewBag.affiliation_id = new SelectList(db.affiliations, "affiliation_id", "affiliation_name", person.affiliation_id);
            ViewBag.county_id = new SelectList(db.counties, "county_id", "county_name", person.county_id);
            ViewBag.job_title_id = new SelectList(db.job_title, "job_title_id", "job_title_name", person.job_title_id);
            ViewBag.organization_id = new SelectList(db.organizations, "organization_id", "organization_name", person.organization_id);
            return View(person);
        }

        //
        // POST: /Person/Edit/5

        [HttpPost]
        public ActionResult Edit(person person)
        {
            if (ModelState.IsValid)
            {
                person.date_modified = DateTime.Today;
                person.modified_by = WebSecurity.GetUserId(User.Identity.Name);
                db.people.Attach(person);
                db.ObjectStateManager.ChangeObjectState(person, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("IndexListOnly");
            }
            ViewBag.affiliation_id = new SelectList(db.affiliations, "affiliation_id", "affiliation_name", person.affiliation_id);
            ViewBag.county_id = new SelectList(db.counties, "county_id", "county_name", person.county_id);
            ViewBag.job_title_id = new SelectList(db.job_title, "job_title_id", "job_title_name", person.job_title_id);
            ViewBag.organization_id = new SelectList(db.organizations, "organization_id", "organization_name", person.organization_id);
            this.Response.StatusCode = 400;
            return View(person);
        }

        //
        // GET: /Person/Delete/5

        public ActionResult Delete(int id = 0)
        {
            person person = db.people.Single(p => p.person_id == id);
            if (person == null)
            {
                return HttpNotFound();
            }
            return View(person);
        }

        //
        // POST: /Person/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            person person = db.people.Single(p => p.person_id == id);
            db.people.DeleteObject(person);
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