<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.affiliation>" %>

<h3>Are you sure you want to delete this?</h3>
<fieldset class="fieldset">
    <legend class="legend">Affiliation</legend>

    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.affiliation_name) %>
        <%: Html.DisplayFor(model => model.affiliation_name) %>
    </div>

    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.affiliation_description) %>
        <%: Html.DisplayFor(model => model.affiliation_description) %>
    </div>

    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.date_created) %>
        <%: Html.DisplayFor(model => model.date_created) %>
    </div>

    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.created_by) %>
        <%: Html.DisplayFor(model => model.created_by) %>
    </div>

    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.date_modified) %>
        <%: Html.DisplayFor(model => model.date_modified) %>
    </div>

    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.modified_by) %>
        <%: Html.DisplayFor(model => model.modified_by) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <span class="button green-gradient compact"> <span class="icon-trash"></span> <input type="submit" value="Delete" class="input-unstyled"/></span> |
      <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
        <a href="javascript:void()" class="red-gradient closeModal button compact icon-cross-round">Close</a>
    </p>
<% } %>