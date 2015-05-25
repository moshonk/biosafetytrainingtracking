<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.training_participant>" %>

<% using (Html.BeginForm("Create", "TrainingParticipant", FormMethod.Post, new { @class = "block margin-bottom wizard same-height" }))
   { %>
<%: Html.ValidationSummary(true)%>
<%: Html.HiddenFor(model => model.training_id)%>
<% Html.RenderPartial("EditOrCreateTrainingParticipantPartial", Model); %>
<% } %>
