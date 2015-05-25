<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.training_participant>" %>

<% using (Html.BeginForm("Edit", "TrainingParticipant", FormMethod.Post, new { @class = "block margin-bottom wizard same-height" }))
   { %>
<%: Html.ValidationSummary(true) %>
<%: Html.HiddenFor(model=>model.training_id) %>
<%: Html.HiddenFor(model => model.training_participant_id)%>
<%: Html.HiddenFor(model => model.date_created)%>
<%: Html.HiddenFor(model => model.created_by)%>
<% Html.RenderPartial("EditOrCreateTrainingParticipantPartial", Model); %>
<% } %>
