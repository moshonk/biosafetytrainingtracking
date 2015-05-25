<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.job_title>" %>

<h2>
    Details</h2>
<fieldset class="fieldset">
    <legend class="legend">Job Title</legend>
    <div class="inline-small-label button-height block">
        <span class="thin">
            <%: Html.DisplayNameFor(model => model.job_title_name) %>
        </span>
        <%: Html.DisplayFor(model => model.job_title_name, new { @class="label"})%>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.job_title_description) %>
        <%: Html.DisplayFor(model => model.job_title_description) %>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.date_created) %>
        <%: Html.DisplayFor(model => model.date_created, new { @class = "label" })%>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.created_by) %>
        <%: Html.DisplayFor(model => model.created_by, new { @class = "label" })%>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.date_modified) %>
        <%: Html.DisplayFor(model => model.date_modified) %>
    </div>
    <div class="inline-small-label button-height block">
        <%: Html.DisplayNameFor(model => model.modified_by)%>
        <%: Html.DisplayFor(model => model.modified_by, new { @class = "label" })%>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { id = Model.job_title_id }, new { @id="edit", @refid=Model.job_title_id, @class="button compact icon-pencil blue-gradient"})%>
    |
    <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
    <a href="javascript:void()" class="closeModal button compact icon-cross-round red-gradient">
        Close</a>
</p>
