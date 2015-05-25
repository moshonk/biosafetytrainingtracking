<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.person>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>person</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.id_no) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.id_no) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.passport_no) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.passport_no) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.cell_no) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.cell_no) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.alt_cell_no) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.alt_cell_no) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.job_title.job_title_name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.job_title.job_title_name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.email) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.email) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.organization.organization_name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.organization.organization_name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.affiliation.affiliation_name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.affiliation.affiliation_name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.postal_address) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.postal_address) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.county.county_name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.county.county_name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.date_created) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.date_created) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.created_by) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.created_by) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.date_modified) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.date_modified) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.modified_by) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.modified_by) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.first_name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.first_name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.last_name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.last_name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.surname) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.surname) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
