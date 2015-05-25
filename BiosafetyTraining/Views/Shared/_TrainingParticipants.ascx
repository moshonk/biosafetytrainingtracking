<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<BiosafetyTraining.Models.training_participant>>" %>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            First Name
        </th>
        <th>
            Last Name
        </th>
        <th>
            Title/Cadre
        </th>
        <th>
            Facility
        </th>
        <th>
            Affiliation
        </th>
        <th>
            Email
        </th>
        <th>
            Telephone
        </th>
        <th>
            County
        </th>
        <th>
        </th>
    </tr>
    <% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.person.first_name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.person.last_name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.person.job_title.job_title_name) %>
        </td>
                <td>
            <%: Html.DisplayFor(modelItem => item.person.organization.organization_name) %>
        </td>        <td>
            <%: Html.DisplayFor(modelItem => item.person.affiliation.affiliation_name) %>
        </td>        <td>
            <%: Html.DisplayFor(modelItem => item.person.email) %>
        </td>        <td>
            <%: Html.DisplayFor(modelItem => item.person.cell_no) %>
        </td>        <td>
            <%: Html.DisplayFor(modelItem => item.person.county.county_name) %>
        </td>
                <td>
            <%: Html.ActionLink("Delete", "Delete", new { id=item.training_participant_id }) %>
        </td>
    </tr>
<% } %>

</table>
