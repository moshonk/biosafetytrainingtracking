﻿<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.location>" %>

<h2>Details</h2>

<fieldset class="fieldset">
    <legend class="legend">Location</legend>

    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.location_name) %>
        <%: Html.DisplayFor(model => model.location_name) %>
    </div>

    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.location_description)%>
        <%: Html.DisplayFor(model => model.location_description)%>
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
<p>
    <%: Html.ActionLink("Edit", "Edit", new { id = Model.location_id }, new { @id="edit", @refid=Model.location_id, @class="button compact icon-pencil blue-gradient"})%>
    |
    <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
    <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
        Close</a>
</p>
