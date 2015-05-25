<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.organization>" %>

<h2>
    Create</h2>
<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<% Html.RenderPartial("EditOrCreateOrganizationPartial", Model); %>
<% } %>
