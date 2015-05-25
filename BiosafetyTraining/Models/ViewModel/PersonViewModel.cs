using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BiosafetyTraining.Models;

namespace BiosafetyTraining.Models.ViewModel
{
    public class PersonViewModel
    {
        public person Person { get; set; }
        public List<organization> Organizations { get; set; }
        public List<affiliation> Affiliations { get; set; }
        public List<county> Counties { get; set; }
        public List<job_title> Titles { get; set; }

    }
}