<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<BiosafetyTraining.Models.job_title>>" %>
<table class="table dataTable responsive-table" id="datatables1">
    <thead>
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.job_title_name) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.job_title_description) %>
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
    </thead>
    <tbody>
        <% foreach (var item in Model)
           { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.job_title_name) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.job_title_description) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.date_created) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.date_modified) %>
            </td>
            <td>
                <span class="button-group">
                    <%: Html.ActionLink("Edit", "Edit", new { id = item.job_title_id }, new { @class="button compact blue-gradient icon-pencil", @id="edit", @refid=item.job_title_id, @onclick="javascript:void()"})%>
                    <%: Html.ActionLink("Details", "Details", new { id = item.job_title_id }, new { @class = "button compact icon-numbered-list", @id = "details", @refid = item.job_title_id, @onclick = "javascript:void()" })%>
                    <%: Html.ActionLink("Delete", "Delete", new { id = item.job_title_id }, new { @class = "button compact red-gradient icon-trash", @id = "delete", @refid = item.job_title_id, @onclick = "javascript:void()" })%>
                </span>
            </td>
        </tr>
        <% } %>
    </tbody>
</table>
