<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.person>" %>

<h2>
    Create</h2>
<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<% Html.RenderPartial("EditOrCreatePersonPartial", Model); %>
<% } %>
