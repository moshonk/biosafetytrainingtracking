<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<BiosafetyTraining.Models.county>>" %>
<table class="table">
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.county_name) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.county_code) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.date_created) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.created_by) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.date_modified) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.modified_by) %>
        </th>
        <th>
        </th>
    </tr>
    <% foreach (var item in Model)
       { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.county_name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.county_code) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.date_created) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.created_by) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.date_modified) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.modified_by) %>
        </td>
        <td>
            <span class="button-group">
                <%: Html.ActionLink("Edit", "Edit", new { id = item.county_id }, new { @class="button compact blue-gradient icon-pencil", @id="edit", @refid=item.county_id})%>
                <%: Html.ActionLink("Details", "Details", new { id = item.county_id }, new { @class = "button compact icon-numbered-list", @id = "details", @refid = item.county_id })%>
                <%: Html.ActionLink("Delete", "Delete", new { id = item.county_id }, new { @class = "button compact red-gradient icon-trash", @id = "delete", @refid = item.county_id })%>
            </span>
        </td>
    </tr>
    <% } %>
</table>
