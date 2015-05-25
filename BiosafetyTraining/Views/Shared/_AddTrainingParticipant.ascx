<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BiosafetyTraining.Models.training_participant>" %>

<script type="text/javascript" src="<%: Url.Content("~/Scripts/jquery-1.7.1.min.js") %>"></script>
<script type="text/javascript" src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
<script type="text/javascript" src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>training_participant</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.person_id) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.person_id) %>
            <%: Html.ValidationMessageFor(model => model.person_id) %>
        </div>

 

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>
