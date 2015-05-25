using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace BiosafetyTraining.Models
{
    //[MetadataType(typeof(PersonMetadata))]
    public partial class person
    {
        [Bind(Exclude = "person_id")]
        public class PersonMetadata
        { 
            [ScaffoldColumn(false)]
            public object person_id{get;set;}


            [Required]
            [Display(Name = "First Name")]
            public object first_name { get; set; }

            [Display(Name = "Last Name")]
            public object last_name { get; set; }

            [Required]
            [Display(Name = "Surname")]
            public object surname { get; set; }

            [Display(Name = "ID No")]
            public object id_no { get; set; }

            [Display(Name = "Passport No")]
            public object passport_no { get; set; }

            [Required]
            [Display(Name = "Cell No")]
            public object cell_no { get; set; }

            [Display(Name = "Alt. Cell No")]
            public object alt_cell_no { get; set; }

            [Required]
            [Display(Name = "email")]
            public object email { get; set; }


            [Display(Name = "Postal Address")]
            public object postal_address { get; set; }

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