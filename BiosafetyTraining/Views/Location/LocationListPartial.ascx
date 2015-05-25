<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<BiosafetyTraining.Models.location>>" %>
<table class="table">
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.location_name) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.location_description)%>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.date_created) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.date_modified) %>
        </th>
        <th>
        </th>
    </tr>
    <% foreach (var item in Model)
       { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.location_name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.location_description)%>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.date_created) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.date_modified) %>
        </td>
        <td>
            <span class="button-group">
                <%: Html.ActionLink("Edit", "Edit", new { id = item.location_id }, new { @class="button compact blue-gradient icon-pencil", @id="edit", @refid=item.location_id})%>
                <%: Html.ActionLink("Details", "Details", new { id = item.location_id }, new { @class = "button compact icon-numbered-list", @id = "details", @refid = item.location_id })%>
                <%: Html.ActionLink("Delete", "Delete", new { id = item.location_id }, new { @class = "button compact red-gradient icon-trash", @id = "delete", @refid = item.location_id })%>
            </span>
        </td>
    </tr>
    <% } %>
</table>
