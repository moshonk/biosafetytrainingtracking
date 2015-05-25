<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.job_title>" %>


<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset class="fieldset">
    <legend class="legend">Job Title</legend>

    <div class="inline-small-label button-height block">
        <span class="thin">
            <%: Html.DisplayNameFor(model => model.job_title_name) %>
        </span>            <%: Html.DisplayFor(model => model.job_title_name, new { @class="label"})%>
    </div>
    <div  class="inline-small-label button-height block">
            <%: Html.DisplayNameFor(model => model.job_title_description) %>
            <%: Html.DisplayFor(model => model.job_title_description) %>
    </div>
    <div class="inline-small-label button-height block">
            <%: Html.DisplayNameFor(model => model.date_created) %>
            <%: Html.DisplayFor(model => model.date_created, new { @class = "label" })%>
    </div>
    <div class="inline-small-label button-height block">
            <%: Html.DisplayNameFor(model => model.date_modified) %>
            <%: Html.DisplayFor(model => model.date_modified) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <span class="button green-gradient compact"> <span class="icon-trash"></span> <input type="submit" value="Delete" class="input-unstyled"/></span> |
      <%: Html.ActionLink("Back to List", "Index", String.Empty, new { @class="hidden"})%>
        <a href="javascript:void()" class="red-gradient closeModal button compact icon-cross-round">Close</a>
    </p>
<% } %>

