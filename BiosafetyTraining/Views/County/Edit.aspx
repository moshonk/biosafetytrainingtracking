<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.county>" %>

<h2>
    Edit</h2>
<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<%: Html.HiddenFor(model => model.county_id)%>
<%: Html.HiddenFor(model => model.date_created)%>
<%: Html.HiddenFor(model => model.created_by)%>
<% Html.RenderPartial("EditOrCreateCountyPartial", Model); %>
<% } %>
