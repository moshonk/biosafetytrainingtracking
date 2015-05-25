<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BiosafetyTraining.Models.training_participant>>" %>

    <table class="table dataTable reponsive-table" id="dataTables">
        <thead>
            <tr>
                <th>
                    <%: Html.DisplayNameFor(model => model.surname) %>
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.first_name) %>
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.last_name) %>
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.id_no) %>
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.cell_no) %>
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.email) %>
                </th>
                <th>
                </th>
            </tr>
        </thead>
        <tbody>
            <% foreach (var item in Model)
               { %>
            <tr>
                <td>
                    <%: Html.DisplayFor(modelItem => item.surname) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.first_name) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.last_name) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.id_no) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.cell_no) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.email) %>
                </td>
                <td>
                <%: Html.ActionLink("Edit", "Edit", new { id = item.training_participant_id }, new { @class = "button compact blue-gradient icon-pencil editTrainingParticipant", @id = "edit", @refid = item.training_participant_id })%>
                |
                <%: Html.ActionLink("Details", "Details", new { id = item.training_participant_id }, new { @class = "button compact detailsTrainingParticipant", @id = "details", @refid = item.training_participant_id })%>
                |
                <%: Html.ActionLink("Delete", "Delete", new { id = item.training_participant_id }, new { @class = "button compact red-gradient icon-trash deleteTrainingParticipant", @id = "delete", @refid = item.training_participant_id })%>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
</html>
