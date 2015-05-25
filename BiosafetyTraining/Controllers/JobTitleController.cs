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
    public class JobTitleController : Controller
    {
        private BiosafetyEntities db = new BiosafetyEntities();


        public ActionResult IndexListOnly()
        {
            return PartialView("JobTitleListPartial", db.job_title.ToList());
        }

        //
        // GET: /JobTitle/

        public ActionResult Index()
        {
            return View(db.job_title.ToList());
        }

        //
        // GET: /JobTitle/Details/5

        public ActionResult Details(int id = 0)
        {
            job_title job_title = db.job_title.Single(j => j.job_title_id == id);
            if (job_title == null)
            {
                return HttpNotFound();
            }
            return View(job_title);
        }

        //
        // GET: /JobTitle/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /JobTitle/Create

        [HttpPost]
        public ActionResult Create(job_title job_title)
        {
            if (ModelState.IsValid)
            {
                job_title.date_created = DateTime.Today;
                job_title.created_by = WebSecurity.GetUserId(User.Identity.Name);
                db.job_title.AddObject(job_title);
                db.SaveChanges();
                return PartialView("JobTitleListPartial", db.job_title.ToList());
            }

            this.Response.StatusCode = 400;
            return View(job_title);
        }

        //
        // GET: /JobTitle/Edit/5

        public ActionResult Edit(int id = 0)
        {
            job_title job_title = db.job_title.Single(j => j.job_title_id == id);
            if (job_title == null)
            {
                return HttpNotFound();
            }
            return View(job_title);
        }

        //
        // POST: /JobTitle/Edit/5

        [HttpPost]
        public ActionResult Edit(job_title job_title)
        {
            if (ModelState.IsValid)
            {
                db.job_title.Attach(job_title);
                job_title.date_modified = DateTime.Today;
                job_title.modified_by = WebSecurity.GetUserId(User.Identity.Name);
                db.ObjectStateManager.ChangeObjectState(job_title, EntityState.Modified);
                db.SaveChanges();
                return PartialView("JobTitleListPartial", db.job_title.ToList());
            }
            this.Response.StatusCode = 400;
            return View(job_title);
        }

        //
        // GET: /JobTitle/Delete/5

        public ActionResult Delete(int id = 0)
        {
            job_title job_title = db.job_title.Single(j => j.job_title_id == id);
            if (job_title == null)
            {
                return HttpNotFound();
            }
            return View(job_title);
        }

        //
        // POST: /JobTitle/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            job_title job_title = db.job_title.Single(j => j.job_title_id == id);
            try
            {
                db.job_title.DeleteObject(job_title);
                db.SaveChanges();
                return PartialView("JobTitleListPartial", db.job_title.ToList());
            }
            catch (Exception)
            {
                this.Response.StatusCode = 400;
            }
            return View(job_title);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}