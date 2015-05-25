<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.training>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <span class="icon-graduation-cap"></span>Training</h2>
    <% using (Html.BeginForm())
       { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset class="fieldset">
    <legend>Training</legend>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.training_start_date, new { @class="label"})%>
            <%: Html.EditorFor(model => model.training_start_date)%>
            <%: Html.ValidationMessageFor(model => model.training_start_date) %>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.training_last_date, new { @class="label"})%>
            <%: Html.EditorFor(model => model.training_last_date)%>
            <%: Html.ValidationMessageFor(model => model.training_last_date) %>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.location_id, "Location", new { @class="label"})%>
            <div class="editor-field chzn-select">
                <%: Html.DropDownList("location_id", String.Empty) %>
                <%: Html.ValidationMessageFor(model => model.location_id) %>
            </div>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.training_type_id, "Training Type", new { @class="label"})%>
            <div class="editor-field chzn-select">
                <%: Html.DropDownList("training_type_id", String.Empty)%>
                <%: Html.ValidationMessageFor(model => model.training_type_id)%>
            </div>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.notes, new { @class="label"})%>
            <%: Html.TextAreaFor(model => model.notes, new { @class="input"})%>
            <%: Html.ValidationMessageFor(model => model.notes) %>
        </div>
        <p>
            <span class="button blue-gradient glossy float-left"><span class="icon-save"></span>
                <input type="submit" value="Save" class="input-unstyled" /></span>
        </p>
    </fieldset>
    <% } %>
    <div>
        <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class = "button glossy compact float-right icon-left-fat orange-gradient " })%>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
