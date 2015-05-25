using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace BiosafetyTraining.Models
{
    [MetadataType(typeof(TrainingMetadata))]
    public partial class training
    {
        //[Bind(Exclude = "training_id")]
        public class TrainingMetadata
        { 
            [ScaffoldColumn(false)]
            [HiddenInput(DisplayValue=false)]
            [Key]
            public object training_id{get;set;}
            
            [Required]
            [Display(Name = "Training Start Date")]
            public object training_start_date { get; set; }

            [Required]
            [Display(Name = "Training Last Date")]
            public object training_last_date { get; set; }

            [Required]
            [Display(Name = "Location")]
            public object location_id { get; set; }
            
            [Required]
            [Display(Name = "Notes/Comments")]
            public object notes { get; set; }

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