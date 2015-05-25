<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.county>" %>

<h2>
    Create
</h2>
<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<% Html.RenderPartial("EditOrCreateCountyPartial", Model); %>
<% } %>
