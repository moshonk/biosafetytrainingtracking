using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace BiosafetyTraining.Models
{
    [MetadataType(typeof(CountyMetadata))]
    public partial class county
    {
        //[Bind(Exclude = "county_id")]
        public class CountyMetadata
        { 
            [ScaffoldColumn(false)]
            public object county_id{get;set;}


            [Required]
            [Display(Name = "County Name")]
            public object county_name { get; set; }


            [Display(Name = "Code")]
            public object county_code { get; set; }

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