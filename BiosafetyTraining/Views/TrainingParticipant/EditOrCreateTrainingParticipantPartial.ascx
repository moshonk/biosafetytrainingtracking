<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BiosafetyTraining.Models.training_participant>" %>
<div class="block margin-bottom wizard same-height">
    <h3 class="block-title">
        Add/Edit Training Participant</h3>
    <fieldset id="main-details" class="wizard-fieldset fields-list">
        <legend class="legend">Main Details</legend>
        <div class="inline-medium-label button-height required">
            <%: Html.LabelFor(model => model.surname, new { @class="label"})%>
            <%: Html.EditorFor(model => model.surname, new { htmlAttributes = "validate[required]"})%>
            <%: Html.ValidationMessageFor(model => model.surname) %>
        </div>
        <div class="inline-medium-label button-height required">
            <%: Html.LabelFor(model => model.first_name, new { @class="label"})%>
            <%: Html.EditorFor(model => model.first_name, new { htmlAttributes="validate[required]"})%>
            <%: Html.ValidationMessageFor(model => model.first_name) %>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.last_name, new { @class = "label" })%>
            <%: Html.EditorFor(model => model.last_name, new { @class = "input small-margin-right" })%>
            <%: Html.ValidationMessageFor(model => model.last_name) %>
        </div>
        <div class="inline-medium-label button-height required">
            <%: Html.LabelFor(model => model.id_no, new { @class="label"})%>
            <%: Html.EditorFor(model => model.id_no, new { htmlAttributes="validate[required]"})%>
            <%: Html.ValidationMessageFor(model => model.id_no) %>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.passport_no, new { @class = "label" })%>
            <%: Html.EditorFor(model => model.passport_no) %>
            <%: Html.ValidationMessageFor(model => model.passport_no) %>
        </div>
    </fieldset>
    <fieldset id="Fieldset1" class="wizard-fieldset fields-list">
        <legend class="legend">Contact Details</legend>
        <div class="inline-medium-label button-height required">
            <%: Html.LabelFor(model => model.email, new { @class = "label" })%>
            <%: Html.EditorFor(model => model.email, new { htmlAttributes = "validate[required,custom[email]]"})%>
            <%: Html.ValidationMessageFor(model => model.email) %>
        </div>
        <div class="inline-medium-label button-height required">
            <%: Html.LabelFor(model => model.cell_no, new { @class = "label" })%>
            <%: Html.EditorFor(model => model.cell_no, new { htmlAttributes="validate[required]"})%>
            <%: Html.ValidationMessageFor(model => model.cell_no) %>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.alt_cell_no, new { @class = "label" })%>
            <%: Html.EditorFor(model => model.alt_cell_no) %>
            <%: Html.ValidationMessageFor(model => model.alt_cell_no) %>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.postal_address, new { @class = "label" })%>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.postal_address) %>
                <%: Html.ValidationMessageFor(model => model.postal_address) %>
            </div>
        </div>
    </fieldset>
    <fieldset id="other-details" class="wizard-fieldset fields-list">
        <legend class="legend">Other details</legend>
        <div class="inline-medium-label button-height required">
            <%: Html.LabelFor(model => model.job_title_id, new { @class = "label" })%>
            <div class="editor-field chzn-select">
                <%: Html.DropDownList("job_title_id", (SelectList)ViewBag.job_title_id, new { @class = "input validate[required]" })%>
                <%: Html.ValidationMessageFor(model => model.job_title_id) %>
            </div>
        </div>
        <div class="inline-medium-label button-height required">
            <%: Html.LabelFor(model => model.organization_id, new { @class = "label" })%>
            <div class="editor-field chzn-select">
                <%: Html.DropDownList("organization_id", (SelectList)ViewBag.organization_id, new { @class="input validate[required]"})%>
                <%: Html.ValidationMessageFor(model => model.organization_id) %>
            </div>
        </div>
        <div class="inline-medium-label button-height required">
            <%: Html.LabelFor(model => model.affiliation_id, new { @class = "label" })%>
            <div class="editor-field chzn-select">
                <%: Html.DropDownList("affiliation_id", (SelectList)ViewBag.affiliation_id,new{@class="input validate[required]"})%>
                <%: Html.ValidationMessageFor(model => model.affiliation_id) %>
            </div>
        </div>
        <div class="inline-medium-label button-height required">
            <%: Html.LabelFor(model => model.county_id, new { @class = "label" })%>
            <div class="editor-field chzn-select">
                <%: Html.DropDownList("county_id", (SelectList)ViewBag.county_id, new { @class="input validate[required]"})%>
                <%: Html.ValidationMessageFor(model => model.county_id) %>
            </div>
        </div>
    </fieldset>
</div>
<div class="margin-top">
    <span class="button compact blue-gradient"><span class="icon-save"></span>
        <input type="submit" value="Submit" class="input-unstyled" /></span> |
    <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
    <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
        Close</a>
</div>
