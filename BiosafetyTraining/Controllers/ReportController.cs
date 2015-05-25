using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BiosafetyTraining.Models;

namespace BiosafetyTraining.Controllers
{
     [Authorize]
    public class ReportController : Controller
    {
        private BiosafetyEntities db = new BiosafetyEntities();
        //
        // GET: /Report/

        public ActionResult Index()
        {
            var locations = db.locations;
            locations.AddObject(new location { location_id=0,location_name=""});
            ViewBag.C=locations.Count();
            ViewBag.location_id = new SelectList(locations, "location_id", "location_name","");
            var reportData = db.trainings.Include("training_participant").ToList();
            return View(reportData);
        }

        public ActionResult Search()
        {
            DateTime startDate = Convert.ToDateTime(Request.Form["start-date"]);
            DateTime lastDate = Convert.ToDateTime(Request.Form["last-date"]);
            bool filterLocation = Convert.ToBoolean(Request.Form["filter-location"]);
            
            var reportData = new object();

            Int32 locationId;
            if (Int32.TryParse(Request.Form["location_id"], out locationId) && filterLocation)
            {
                reportData = db.trainings.Where(t => (t.training_start_date >= startDate && t.training_last_date <= lastDate) && t.location_id == locationId);
            }
            else
            {
                reportData = db.trainings.Where(t => t.training_start_date >= startDate && t.training_last_date <= lastDate);
            }
            return PartialView("TrainingListPartial", reportData);
        }


        public ActionResult TrainingDetails(int id)
        {
            var trainingParticipants = db.training_participant.Where(tp=>tp.training_id == id);
            
            training training = db.trainings.Single(t => t.training_id == id);
            ViewBag.StartDate = training.training_start_date.Value.ToString("dd-MMMM-yyyy");
            ViewBag.LastDate = training.training_last_date.Value.ToString("dd-MMMM-yyyy");
            ViewBag.Notes = training.notes;
            return PartialView("TrainingDetailedPartial", trainingParticipants);
        }

        //
        // GET: /Report/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Report/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Report/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Report/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Report/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Report/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Report/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
