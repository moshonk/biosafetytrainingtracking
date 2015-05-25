<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.training>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>training</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.training_date) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.training_date) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.location.location_name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.location.location_name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.notes) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.notes) %>
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
