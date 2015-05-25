using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BiosafetyTraining.Models;

namespace BiosafetyTraining.Controllers
{
     [Authorize]
    public class TrainingParticipantController : Controller
    {
        private BiosafetyEntities db = new BiosafetyEntities();

        public PartialViewResult IndexByTraining(int id)
        {

            var trainingParticipants = db.training_participant.Include("training").Where(tp => tp.training_id == id).ToList();
            return PartialView("Index", trainingParticipants);
        }

        //
        // GET: /TrainingParticipant/

        public ActionResult Index()
        {
            var training_participant = db.training_participant.Include("affiliation").Include("county").Include("job_title").Include("organization").Include("training");
            return View(training_participant.ToList());
        }

        //
        // GET: /TrainingParticipant/Details/5

        public ActionResult Details(long id = 0)
        {
            training_participant training_participant = db.training_participant.Single(t => t.training_participant_id == id);
            if (training_participant == null)
            {
                return HttpNotFound();
            }
            return View(training_participant);
        }

        //
        // GET: /TrainingParticipant/Create

        public ActionResult Create(int? id)
        {
            ViewBag.affiliation_id = new SelectList(db.affiliations, "affiliation_id", "affiliation_name");
            ViewBag.county_id = new SelectList(db.counties, "county_id", "county_name");
            ViewBag.job_title_id = new SelectList(db.job_title, "job_title_id", "job_title_name");
            ViewBag.organization_id = new SelectList(db.organizations, "organization_id", "organization_name");

            var trainings = db.trainings
            .Where(t => t.training_id == id);
            ViewBag.training_id = new SelectList(trainings, "training_id", "training_date", id);

            training_participant trainingParticipant = new training_participant();
            trainingParticipant.training_id = id;
            return PartialView("Create", trainingParticipant);
        }

        //
        // POST: /TrainingParticipant/Create

        [HttpPost]
        public ActionResult Create(training_participant training_participant)
        {
            if (ModelState.IsValid)
            {
                db.training_participant.AddObject(training_participant);
                db.SaveChanges();
                return RedirectToAction("IndexByTraining", new { id=training_participant.training_id});
            }

            ViewBag.affiliation_id = new SelectList(db.affiliations, "affiliation_id", "affiliation_name", training_participant.affiliation_id);
            ViewBag.county_id = new SelectList(db.counties, "county_id", "county_name", training_participant.county_id);
            ViewBag.job_title_id = new SelectList(db.job_title, "job_title_id", "job_title_name", training_participant.job_title_id);
            ViewBag.organization_id = new SelectList(db.organizations, "organization_id", "organization_name", training_participant.organization_id);
            ViewBag.training_id = new SelectList(db.trainings, "training_id", "notes", training_participant.training_id);
            this.Response.StatusCode = 400;
            return View(training_participant);
        }

        //
        // GET: /TrainingParticipant/Edit/5

        public ActionResult Edit(long id = 0)
        {
            training_participant training_participant = db.training_participant.Single(t => t.training_participant_id == id);
            if (training_participant == null)
            {
                return HttpNotFound();
            }
            ViewBag.affiliation_id = new SelectList(db.affiliations, "affiliation_id", "affiliation_name", training_participant.affiliation_id);
            ViewBag.county_id = new SelectList(db.counties, "county_id", "county_name", training_participant.county_id);
            ViewBag.job_title_id = new SelectList(db.job_title, "job_title_id", "job_title_name", training_participant.job_title_id);
            ViewBag.organization_id = new SelectList(db.organizations, "organization_id", "organization_name", training_participant.organization_id);
            ViewBag.training_id = new SelectList(db.trainings, "training_id", "notes", training_participant.training_id);
            return View(training_participant);
        }

        //
        // POST: /TrainingParticipant/Edit/5

        [HttpPost]
        public ActionResult Edit(training_participant training_participant)
        {
            if (ModelState.IsValid)
            {
                db.training_participant.Attach(training_participant);
                db.ObjectStateManager.ChangeObjectState(training_participant, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("IndexByTraining", new { id=training_participant.training_id});
            }
            ViewBag.affiliation_id = new SelectList(db.affiliations, "affiliation_id", "affiliation_name", training_participant.affiliation_id);
            ViewBag.county_id = new SelectList(db.counties, "county_id", "county_name", training_participant.county_id);
            ViewBag.job_title_id = new SelectList(db.job_title, "job_title_id", "job_title_name", training_participant.job_title_id);
            ViewBag.organization_id = new SelectList(db.organizations, "organization_id", "organization_name", training_participant.organization_id);
            ViewBag.training_id = new SelectList(db.trainings, "training_id", "notes", training_participant.training_id);
            this.Response.StatusCode = 400;
            return View(training_participant);
        }

        //
        // GET: /TrainingParticipant/Delete/5

        public ActionResult Delete(long id = 0)
        {
            training_participant training_participant = db.training_participant.Single(t => t.training_participant_id == id);
            if (training_participant == null)
            {
                return HttpNotFound();
            }
            return View(training_participant);
        }

        //
        // POST: /TrainingParticipant/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(long id)
        {
            training_participant training_participant = db.training_participant.Single(t => t.training_participant_id == id);
            var trainingId = training_participant.training_id;
            db.training_participant.DeleteObject(training_participant);
            db.SaveChanges();
            return RedirectToAction("IndexByTraining", new { id = trainingId });
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}