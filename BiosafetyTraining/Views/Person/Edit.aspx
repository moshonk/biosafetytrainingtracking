<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.person>" %>

<h2>
    Edit</h2>
<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<%: Html.HiddenFor(model => model.person_id)%>
<%: Html.HiddenFor(model => model.date_created)%>
<%: Html.HiddenFor(model => model.created_by)%>
<% Html.RenderPartial("EditOrCreatePersonPartial", Model); %>
<% } %>
