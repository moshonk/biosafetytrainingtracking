using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace BiosafetyTraining.Models
{
    [MetadataType(typeof(JobTitleMetadata))]
    public partial class job_title
    {
        //[Bind(Exclude = "job_title_id")]
        public class JobTitleMetadata
        { 
            [ScaffoldColumn(false)]
            public object job_title_id{get;set;}


            [Required]
            [Display(Name = "Job Title")]
            public object job_title_name { get; set; }

            [Display(Name = "Description")]
            public object job_title_description { get; set; }

            [Display(Name = "Date Created")]
            public object date_created { get; set; }

            [Display(Name = "Created By")]
            public object created_by { get; set; }

            [Display(Name = "Date Modified")]
            public object date_modified { get; set; }

            [Display(Name = "Modified By")]
            public object modified_by { get; set; }


        }
    }
}