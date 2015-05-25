<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BiosafetyTraining.Models.person>" %>
<fieldset class="fieldset">
    <legend class="legend">Person</legend>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.first_name) %>
    </div>
    <div class="editor-field">
        <%: Html.EditorFor(model => model.first_name) %>
        <%: Html.ValidationMessageFor(model => model.first_name) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.last_name) %>
    </div>
    <div class="editor-field">
        <%: Html.EditorFor(model => model.last_name) %>
        <%: Html.ValidationMessageFor(model => model.last_name) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.surname) %>
    </div>
    <div class="editor-field">
        <%: Html.EditorFor(model => model.surname) %>
        <%: Html.ValidationMessageFor(model => model.surname) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.id_no) %>
    </div>
    <div class="editor-field">
        <%: Html.EditorFor(model => model.id_no) %>
        <%: Html.ValidationMessageFor(model => model.id_no) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.passport_no) %>
    </div>
    <div class="editor-field">
        <%: Html.EditorFor(model => model.passport_no) %>
        <%: Html.ValidationMessageFor(model => model.passport_no) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.cell_no) %>
    </div>
    <div class="editor-field">
        <%: Html.EditorFor(model => model.cell_no) %>
        <%: Html.ValidationMessageFor(model => model.cell_no) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.alt_cell_no) %>
    </div>
    <div class="editor-field">
        <%: Html.EditorFor(model => model.alt_cell_no) %>
        <%: Html.ValidationMessageFor(model => model.alt_cell_no) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.job_title_id, "job_title") %>
    </div>
    <div class="editor-field">
        <%: Html.DropDownList("job_title_id", String.Empty) %>
        <%: Html.ValidationMessageFor(model => model.job_title_id) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.email) %>
    </div>
    <div class="editor-field">
        <%: Html.EditorFor(model => model.email) %>
        <%: Html.ValidationMessageFor(model => model.email) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.organization_id, "organization") %>
    </div>
    <div class="editor-field">
        <%: Html.DropDownList("organization_id", String.Empty) %>
        <%: Html.ValidationMessageFor(model => model.organization_id) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.affiliation_id, "affiliation") %>
    </div>
    <div class="editor-field">
        <%: Html.DropDownList("affiliation_id", String.Empty) %>
        <%: Html.ValidationMessageFor(model => model.affiliation_id) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.postal_address) %>
    </div>
    <div class="editor-field">
        <%: Html.EditorFor(model => model.postal_address) %>
        <%: Html.ValidationMessageFor(model => model.postal_address) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.county_id, "county") %>
    </div>
    <div class="editor-field">
        <%: Html.DropDownList("county_id", String.Empty) %>
        <%: Html.ValidationMessageFor(model => model.county_id) %>
    </div>
</fieldset>
<div class="margin-top">
    <span class="button compact blue-gradient"><span class="icon-save"></span>
        <input type="submit" value="Submit" class="input-unstyled" /></span> |
    <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
    <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
        Close</a>
</div>
