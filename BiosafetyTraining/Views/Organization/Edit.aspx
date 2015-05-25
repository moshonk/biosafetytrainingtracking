<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.organization>" %>

<h2>
    Edit</h2>
<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<%: Html.HiddenFor(model => model.organization_id)%>
<%: Html.HiddenFor(model => model.date_created)%>
<%: Html.HiddenFor(model => model.created_by)%>
<% Html.RenderPartial("EditOrCreateOrganizationPartial", Model); %>
<% } %>
