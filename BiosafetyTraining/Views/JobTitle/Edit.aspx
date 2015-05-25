<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.job_title>" %>

<h2>
    Edit
</h2>
<% using (Html.BeginForm())
   { %>
<%: Html.ValidationSummary(true) %>
<%: Html.HiddenFor(model => model.job_title_id)%>
<% Html.RenderPartial("EditOrCreateJobTitlePartial", Model); %>
<% } %>
