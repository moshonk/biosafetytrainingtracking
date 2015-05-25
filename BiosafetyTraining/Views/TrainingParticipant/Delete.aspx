<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.training_participant>" %>

<h3>
    Are you sure you want to delete this?</h3>
<% Html.RenderPartial("TrainingParticipantDetailsPartial"); %>
<% using (Html.BeginForm())
   { %>
<p>
    <span class="button green-gradient compact"><span class="icon-trash"></span>
        <input type="submit" value="Delete" class="input-unstyled" /></span> |
    <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
    <a href="javascript:void()" class="red-gradient closeModal button compact icon-cross-round">
        Close</a>
</p>
<% } %>
