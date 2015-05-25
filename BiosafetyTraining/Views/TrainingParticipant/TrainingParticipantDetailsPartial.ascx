<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BiosafetyTraining.Models.training_participant>" %>
<fieldset class="fieldset">
    <legend class="legend">Training Participant</legend>
    <div class="side-tabs">
        <ul class="tabs">
            <li><a href="#main-details">Main Details</a></li>
            <li><a href="#other-details">Other Details</a></li>
        </ul>
        <div class="tabs-content">
            <div id="main-details">
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.first_name) %>
                    <%: Html.DisplayFor(model => model.first_name) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.last_name) %>
                    <%: Html.DisplayFor(model => model.last_name) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.surname) %>
                    <%: Html.DisplayFor(model => model.surname) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.id_no) %>
                    <%: Html.DisplayFor(model => model.id_no) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.passport_no) %>
                    <%: Html.DisplayFor(model => model.passport_no) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.cell_no) %>
                    <%: Html.DisplayFor(model => model.cell_no) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.alt_cell_no) %>
                    <%: Html.DisplayFor(model => model.alt_cell_no) %>
                </div>
            </div>
            <div id="other-details">
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.job_title.job_title_name) %>
                    <%: Html.DisplayFor(model => model.job_title.job_title_name) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.email) %>
                    <%: Html.DisplayFor(model => model.email) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.organization.organization_name) %>
                    <%: Html.DisplayFor(model => model.organization.organization_name) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.affiliation.affiliation_name) %>
                    <%: Html.DisplayFor(model => model.affiliation.affiliation_name) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.postal_address) %>
                    <%: Html.DisplayFor(model => model.postal_address) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.county.county_name) %>
                    <%: Html.DisplayFor(model => model.county.county_name) %>
                </div>
                <div class="inline-small-label button-height block">
                    <%: Html.DisplayNameFor(model => model.date_created) %>
                    <%: Html.DisplayFor(model => model.date_created) %>
                </div>
            </div>
        </div>
    </div>
</fieldset>
