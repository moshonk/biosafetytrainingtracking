<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<BiosafetyTraining.Models.training>>" %>
<table class="table" id="datatables">
    <thead>
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.training_start_date) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.training_last_date) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.location_id) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.notes) %>
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
                <%: Html.DisplayFor(modelItem => item.training_start_date) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.training_last_date) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.location.location_name) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.notes) %>
            </td>
            <td>
                <%: Html.ActionLink("Preview Details", "TrainingDetails", new { id = item.training_id }, new { @class = "button compact icon-list", @id = "details", @refid=item.training_id})%>
            </td>
        </tr>
        <% } %>
    </tbody>
</table>
