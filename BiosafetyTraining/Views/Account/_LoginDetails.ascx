<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BiosafetyTraining.Models.LocalPasswordModel>" %>

<fieldset>
    <legend>LocalPasswordModel</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.OldPassword) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.OldPassword) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.NewPassword) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.NewPassword) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ConfirmPassword) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ConfirmPassword) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>
