<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.affiliation>" %>

<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<%: Html.HiddenFor(model => model.affiliation_id)%>
<%: Html.HiddenFor(model => model.date_created)%>
<%: Html.HiddenFor(model => model.created_by)%>
<% Html.RenderPartial("EditOrCreateAffiliationPartial", Model); %>
<% } %>
