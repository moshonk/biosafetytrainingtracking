<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.training>" %>

<h2>
    Details</h2>
<fieldset class="fieldset">
    <legend class="legend">Training</legend>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.training_start_date) %>
        <%: Html.DisplayFor(model => model.training_start_date) %>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.training_last_date) %>
        <%: Html.DisplayFor(model => model.training_last_date) %>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.location.location_name) %>
        <%: Html.DisplayFor(model => model.location.location_name) %>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.notes) %>
        <%: Html.DisplayFor(model => model.notes) %>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.date_created) %>
        <%: Html.DisplayFor(model => model.date_created) %>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.date_modified) %>
        <%: Html.DisplayFor(model => model.date_modified) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { id = Model.training_id }, new { @class = "blue-gradient button compact icon-pencil" })%>
    |
    <%: Html.ActionLink("Back to List", "Index",String.Empty, new {@class="hidden"}) %>
    <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
        Close</a>
</p>
