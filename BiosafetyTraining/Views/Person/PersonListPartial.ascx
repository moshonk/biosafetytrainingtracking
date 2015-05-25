<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<BiosafetyTraining.Models.person>>" %>

    <table class="table">
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.id_no) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.first_name) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.last_name) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.surname) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.cell_no) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.email) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.organization.organization_name) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.affiliation.affiliation_name) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.postal_address) %>
            </th>
            <th>
            </th>
        </tr>
        <% foreach (var item in Model)
           { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.id_no) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.first_name) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.last_name) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.surname) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.cell_no) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.email) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.organization.organization_name) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.affiliation.affiliation_name) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.postal_address) %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id = item.person_id }, new { @class="button compact blue-gradient icon-pencil", @id="edit", @refid=item.person_id})%>
                |
                <%: Html.ActionLink("Details", "Details", new { id = item.person_id }, new { @class = "button compact", @id = "details", @refid = item.person_id })%>
                |
                <%: Html.ActionLink("Delete", "Delete", new { id = item.person_id }, new { @class = "button compact red-gradient icon-trash", @id = "delete", @refid = item.person_id })%>
            </td>
        </tr>
        <% } %>
    </table>
