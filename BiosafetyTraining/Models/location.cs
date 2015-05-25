using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace BiosafetyTraining.Models
{
    [MetadataType(typeof(LocationMetadata))]
    public partial class location
    {
        //[Bind(Exclude = "location_id")]
        public class LocationMetadata
        { 
            [ScaffoldColumn(false)]
            public object location_id{get;set;}


            [Required]
            [Display(Name = "Location Name")]
            public object location_name { get; set; }

            [Display(Name = "Description")]
            public object location_description { get; set; }

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