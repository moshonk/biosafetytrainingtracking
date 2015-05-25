<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<BiosafetyTraining.Models.training_participant>>" %>
<div class="header">
    <span class="button-group"><a href="javascript:void()" id="print" class="button compact small-margin-bottom blue-gradient">
        <span class="icon-printer"></span>&nbsp;Print</a> <a href="javascript:void()" class="closeModal button compact red-gradient">
            <span class="icon-cross-round"></span>&nbsp;Close </a></span>
</div>
<div class="report">
    <table class="table">
        <thead>
            <tr>
                <th>
                    No
                </th>
                <th>
                    Name of Participant
                </th>
                <th>
                    Title/ Cadre
                </th>
                <th>
                    Facility/ Organization
                </th>
                <th>
                    Affiliation
                </th>
                <th>
                    Telephone No.
                </th>
                <th>
                    E-mail address
                </th>
                <th>
                    Postal Address
                </th>
                <th>
                    County/District
                </th>
            </tr>
            <tr>
                <td colspan="9" align="center">
                    <h3>
                        <%: ViewBag.StartDate%>
                        &nbsp;to&nbsp;
                        <%: ViewBag.LastDate%>
                    </h3>
                    <h4>
                        <%: ViewBag.Notes  %>
                    </h4>
                </td>
            </tr>
            <% 
                var i = 0;
                foreach (var item in Model)
                {
                    i++;
            %>
        </thead>
        <tbody>
            <tr>
                <td>
                    <%: i %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.surname) %>
                    &nbsp;<%: Html.DisplayFor(modelItem => item.first_name) %>
                    &nbsp;
                    <%: Html.DisplayFor(modelItem => item.last_name) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.job_title.job_title_name) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.organization.organization_name) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.affiliation.affiliation_name)%>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.cell_no) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.email) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.postal_address) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.county.county_name) %>
                </td>
            </tr>
            <%
                } 
            %>
        </tbody>
    </table>
</div>
<script type="text/javascript" src="<%:Url.Content("~/js/libs/jquery-print/jquery.printThis.min.js") %>"></script>
