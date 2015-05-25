<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BiosafetyTraining.Models.county>" %>
<fieldset class="fieldset">
    <legend class="legend">County</legend>
    <div class="inline-medium-label small-margin-top">
        <%: Html.LabelFor(model => model.county_name, new { @class="label"})%>
        <%: Html.EditorFor(model => model.county_name) %>
        <%: Html.ValidationMessageFor(model => model.county_name) %>
    </div>
    <div class="inline-medium-label small-margin-top">
        <%: Html.LabelFor(model => model.county_code, new { @class = "label" })%>
        <%: Html.EditorFor(model => model.county_code) %>
        <%: Html.ValidationMessageFor(model => model.county_code) %>
    </div>
    <div class="margin-top">
        <span class="button-group"><span class="button compact blue-gradient"><span class="icon-save">
        </span>
            <input type="submit" value="Submit" class="input-unstyled" /></span>
            <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
            <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
                Close</a> </span>
    </div>
</fieldset>
