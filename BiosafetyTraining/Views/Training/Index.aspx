<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BiosafetyTraining.Models.training>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Trainings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <span class="icon-graduation-cap"></span>&nbsp;Trainings
    </h2>
    <p>
        <span class="button compact">
            <%: Html.ActionLink("Create New", "Create", String.Empty, new { @class="icon-plus-round",@id="Create"})%></span>
    </p>
    <table class="table dataTable responsive-table" id="datatables">
        <thead>
            <tr>
                <th scope="col">
                    <%: Html.DisplayNameFor(model => model.training_start_date) %>
                </th>
                <th scope="col">
                    <%: Html.DisplayNameFor(model => model.training_last_date) %>
                </th>
                <th scope="col">
                    <%: Html.DisplayNameFor(model => model.location.location_name) %>
                </th>
                <th scope="col" class="hide-on-mobile">
                    <%: Html.DisplayNameFor(model => model.notes) %>
                </th>
                <th scope="col" class="hide-on-mobile">
                    <%: Html.DisplayNameFor(model => model.date_created) %>
                </th>
                <th scope="col" class="hide-on-mobile">
                    <%: Html.DisplayNameFor(model => model.date_modified) %>
                </th>
                <th scope="col" class="hide-on-mobile">
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
                    <%: Html.DisplayFor(modelItem => item.date_created) %>
                </td>
                <td>
                    <%:  Html.DisplayFor(modelItem => item.date_modified) %>
                </td>
                <td>
                <span class="button-group">
                    <%: Html.ActionLink("Edit", "Edit", new { id = item.training_id }, new {@class="button compact icon-pencil blue-gradient" })%>
                    <%: Html.ActionLink("Details", "Details", new { id = item.training_id }, new { @class = "button compact icon-numbered-list",@id="Details",@refid=item.training_id })%>
                    <%--                    |
                    <%: Html.ActionLink("Delete", "Delete", new { id = item.training_id }, new { @class = "button compact" })%>
                    --%>
                    </span>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <div id="my-modal" class="modal hide fade">
        <%--        <div class="modal-header">
            <a href="#" class="close">&times;</a>
            <h3>
                Training Participant</h3>
        </div>
        --%>
        <div class="modal-body">
            <div id="msgError">
            </div>
            <p class="body">
            </p>
        </div>
        <div class="modal-footer">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">
        function clearErrors() {
            $('#msgErrorNewTrainingParticipant').html('');
            $('#msgError').html('');
        }

        function writeError(control, msg) {
            var err_msg = '<div class="alert-message error"><a class="close" href="#">×</a><p>' + msg + '</p></div>';
            $('#' + control).html(err_msg);
        }

        $().ready(function () {
//            $('a#create').click(function () {
//                clearErrors();

//                var url = '<%: Url.Content("~/Training/Create")%>/';

//                getRequest(url);
//                return false;
//            });

            $('a#delete').click(function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%: Url.Content("~/Training/Delete")%>/' + id;

                getRequest(url);
                return false;
            });

            $('body').on('click', 'a#edit', function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%: Url.Content("~/Training/Edit")%>/' + id;

                getRequest(url);
                return false;
            });

            $('a#Details').click(function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%: Url.Content("~/Training/Details")%>/' + id;

                getRequest(url);
                return false;
            });

            function getRequest(url) {
                $.ajax({
                    url: url,
                    context: document.body,
                    success: function (data) {
                        $('.modal-body p.body').html(data);
                        $(this).addClass("done");
                        $('#my-modal').modal('show');
                        $("div.chzn-select select").chosen();
                        $(".chzn-select-deselect").chosen({ allow_single_deselect: true });
                        $(".datefield").glDatePicker({ zIndex: 100 });
                        $('#Article').focus();
                    },
                    error: function (err) {
                        writeError('msgError', err);
                    }
                });
            }

            $('body').on('click', '.closeModal', function () {
                $('#my-modal').modal('hide');
            });

        })
    </script>
</asp:Content>
