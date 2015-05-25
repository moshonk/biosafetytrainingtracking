using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BiosafetyTraining.Models;
using WebMatrix.WebData;
using BiosafetyTraining.Filters;

namespace BiosafetyTraining.Controllers
{
     [Authorize]
    //[InitializeSimpleMembership]
    public class TrainingController : Controller
    {
        
        private BiosafetyEntities db = new BiosafetyEntities();

        //
        // GET: /Training/

        public ActionResult Index()
        {
            var trainings = db.trainings.Include("location");
            return View(trainings.ToList());
        }

        //
        // GET: /Training/Details/5

        public ActionResult Details(int id = 0)
        {
            training training = db.trainings.Single(t => t.training_id == id);
            if (training == null)
            {
                return HttpNotFound();
            }
            return View(training);
        }

        //
        // GET: /Training/Create

        public ActionResult Create()
        {
            ViewBag.location_id = new SelectList(db.locations, "location_id", "location_name");
            ViewBag.training_type_id = new SelectList(db.training_type, "training_type_id", "training_type_name");
            return View();
        }

        //
        // POST: /Training/Create

        [HttpPost]
        public ActionResult Create(training training)
        {
            if (ModelState.IsValid)
            {
                training.date_created = DateTime.Today;
                training.created_by = WebSecurity.GetUserId(User.Identity.Name);
                db.trainings.AddObject(training);
                db.SaveChanges();
                return RedirectToAction("Edit", "Training", new {id = training.training_id });
            }

            ViewBag.location_id = new SelectList(db.locations, "location_id", "location_name", training.location_id);
            ViewBag.training_type_id = new SelectList(db.training_type, "training_type_id","training_type_name", training.training_type_id);
            return View(training);
        }

        //
        // GET: /Training/Edit/5

        public ActionResult Edit(int id = 0)
        {
            training training = db.trainings.Single(t => t.training_id == id);
            if (training == null)
            {
                return HttpNotFound();
            }
            ViewBag.location_id = new SelectList(db.locations, "location_id", "location_name", training.location_id);
            ViewBag.training_type_id = new SelectList(db.training_type, "training_type_id","training_type_name", training.training_type_id);
            return View(training);
        }

        //
        // POST: /Training/Edit/5

        [HttpPost]
        public ActionResult Edit(training training)
        {
            if (ModelState.IsValid)
            {
                training.date_created = training.date_created;
                training.created_by = training.created_by;
                training.date_modified = DateTime.Today;
                training.modified_by = WebSecurity.GetUserId(User.Identity.Name);

                db.trainings.Attach(training);
                db.ObjectStateManager.ChangeObjectState(training, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.location_id = new SelectList(db.locations, "location_id", "location_name", training.location_id);
            return View(training);
        }

        //
        // GET: /Training/Delete/5

        public ActionResult Delete(int id = 0)
        {
            training training = db.trainings.Single(t => t.training_id == id);
            if (training == null)
            {
                return HttpNotFound();
            }
            return View(training);
        }

        //
        // POST: /Training/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            training training = db.trainings.Single(t => t.training_id == id);
            db.trainings.DeleteObject(training);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        
        [ChildActionOnly]
        public ActionResult Participants(int trainingId)
        {
            List<training_participant> TrainingParticipants = db.training_participant.
                Include("Person").
                ToList().
                FindAll(tp=>tp.training_id == trainingId);
            return PartialView("_TrainingParticipants",TrainingParticipants);
        }

        public ActionResult AddTrainingParticipant()
        {
            training_participant TrainingParticipant = new training_participant();

            ViewBag.PersonId = new SelectList(db.people.ToList());
            ViewBag.TrainingId = new SelectList(db.trainings.ToList());
            return PartialView(TrainingParticipant);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }


    }
}