<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BiosafetyTraining.Models.job_title>" %>
<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<fieldset class="fieldset">
    <legend class="legend">Job Title</legend>
    <div class="inline-medium-label">
        <%: Html.LabelFor(model => model.job_title_name, new { @class="label"})%>
        <%: Html.EditorFor(model => model.job_title_name) %>
        <%: Html.ValidationMessageFor(model => model.job_title_name) %>
    </div>
    <div class="inline-medium-label small-margin-top">
        <%: Html.LabelFor(model => model.job_title_description, new { @class="label"})%>
        <%: Html.TextAreaFor(model => model.job_title_description, new { @class="input full-width"})%>
        <%: Html.ValidationMessageFor(model => model.job_title_description) %>
    </div>
    <div class="hidden">
        <div class="editor-label">
            <%: Html.LabelFor(model => model.date_created) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.date_created) %>
            <%: Html.ValidationMessageFor(model => model.date_created) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.created_by) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.created_by) %>
            <%: Html.ValidationMessageFor(model => model.created_by) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.date_modified) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.date_modified) %>
            <%: Html.ValidationMessageFor(model => model.date_modified) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.modified_by) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.modified_by) %>
            <%: Html.ValidationMessageFor(model => model.modified_by) %>
        </div>
    </div>
</fieldset>
<div class="margin-top">
    <span class="button-group"><span class="button compact blue-gradient"><span class="icon-save">
    </span>
        <input type="submit" value="Submit" class="input-unstyled" /></span>
        <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
        <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
            Close</a> </span>
</div>
<% } %>
