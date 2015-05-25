<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BiosafetyTraining.Models.location>" %>
<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<fieldset class="fieldset">
    <legend class="legend">Location</legend>
    <div class="inline-medium-label button-height">
        <%: Html.LabelFor(model => model.location_name, new { @class="label"})%>
        <%: Html.EditorFor(model => model.location_name) %>
        <%: Html.ValidationMessageFor(model => model.location_name) %>
    </div>
    <div class="inline-medium-label button-height">
        <%: Html.LabelFor(model => model.location_description, new { @class = "label" })%>
        <%: Html.EditorFor(model => model.location_description)%>
        <%: Html.ValidationMessageFor(model => model.location_description)%>
    </div>
</fieldset>
<div class="margin-top">
<span class="button-group">
    <span class="button compact blue-gradient"><span class="icon-save"></span>
        <input type="submit" value="Submit" class="input-unstyled" /></span>
    <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
    <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
        Close</a>
        </span>
</div>
<% } %>
