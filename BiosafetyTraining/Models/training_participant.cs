using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace BiosafetyTraining.Models
{
    [MetadataType(typeof(TrainingParticipantMetadata))]
    public partial class training_participant
    {
        //[Bind(Exclude = "training_participant_id")]
        public class TrainingParticipantMetadata
        { 
            [ScaffoldColumn(false)]
            public object training_participant_id{get;set;}

            [Required]
            [Display(Name = "Training")]
            public object training_id { get; set; }

            [Required]
            [Display(Name = "First Name")]
            public object first_name { get; set; }

            [Display(Name = "Last Name")]
            public object last_name { get; set; }

            [Required]
            [Display(Name = "Surname")]
            public object surname { get; set; }

            [Required]
            [Display(Name = "ID No")]
            public object id_no { get; set; }

            [Display(Name = "Passport No")]
            public object passport_no { get; set; }

            [Required]
            [Display(Name = "Cellphone No.")]
            [DataType(DataType.PhoneNumber)]
            public object cell_no { get; set; }

            [Display(Name = "Alt. Cellphone")]
            public object alt_cell_no { get; set; }

            [Required]
            [Display(Name = "Job Title")]
            public object job_title_id { get; set; }

            [Required]
            [Display(Name = "Email")]
            [DataType(DataType.EmailAddress)]
            public object email { get; set; }

            [Required]
            [Display(Name = "Organization")]
            public object organization_id { get; set; }

            [Required]
            [Display(Name = "Affiliation")]
            public object affiliation_id { get; set; }

            [Display(Name = "Postal Address")]
            public object postal_address { get; set; }

            [Required]
            [Display(Name = "County")]
            public object county_id { get; set; }

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