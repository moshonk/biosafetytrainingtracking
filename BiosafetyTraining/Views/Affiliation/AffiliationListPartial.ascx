<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<BiosafetyTraining.Models.affiliation>>" %>
<table class="table">
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.affiliation_name) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.affiliation_description) %>
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
            <%: Html.DisplayFor(modelItem => item.affiliation_name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.affiliation_description) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.date_created) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.date_modified) %>
        </td>
        <td>
            <span class="button-group">
                <%: Html.ActionLink("Edit", "Edit", new { id = item.affiliation_id }, new { @class="button compact blue-gradient icon-pencil", @id="edit", @refid=item.affiliation_id})%>
                <%: Html.ActionLink("Details", "Details", new { id = item.affiliation_id }, new { @class = "button compact icon-numbered-list", @id = "details", @refid = item.affiliation_id })%>
                <%: Html.ActionLink("Delete", "Delete", new { id = item.affiliation_id }, new { @class = "button compact red-gradient icon-trash", @id = "delete", @refid = item.affiliation_id })%>
            </span>
        </td>
    </tr>
    <% } %>
</table>
