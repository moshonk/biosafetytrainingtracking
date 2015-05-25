<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.training_participant>" %>

<% Html.RenderPartial("TrainingParticipantDetailsPartial"); %>

<p>
    <%: Html.ActionLink("Edit", "Edit", new { id = Model.organization_id }, new { @id = "edit", @refid = Model.training_participant_id, @class = "button compact icon-pencil blue-gradient editTrainingParticipant" })%>
    |
    <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
    <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
        Close</a>
</p>
