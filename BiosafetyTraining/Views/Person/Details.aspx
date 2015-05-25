<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.person>" %>

<fieldset class="fieldset">
    <legend class="legend">Person</legend>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.first_name) %>
        <%: Html.DisplayFor(model => model.first_name) %>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.last_name)%>
        <%: Html.DisplayFor(model => model.last_name) %>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.surname) %>
        <%: Html.DisplayFor(model => model.surname, new { @class="label"})%>
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
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { id = Model.organization_id }, new { @id = "edit", @refid = Model.organization_id, @class = "button compact icon-pencil blue-gradient" })%>
    |
    <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
    <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
        Close</a>
</p>
