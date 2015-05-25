<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BiosafetyTraining.Models.organization>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <span><span class="icon-box"></span>&nbsp;Organizations/Facilities</span></h2>
    </h2>
    <p>
        <span class="button compact"><span class="icon-plus-round">
            <%: Html.ActionLink("Create New", "Create", String.Empty, new { @class="unstyled", @id="create"})%>
        </span></span>
    </p>
    <div id="OrganizationList">
        <% Html.RenderAction("IndexListOnly"); %>
    </div>
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
            $('#msgErrorNewOrganization').html('');
            $('#msgError').html('');
        }

        function writeError(control, msg) {
            var err_msg = '<div class="alert-message error"><a class="close" href="#">×</a><p>' + msg + '</p></div>';
            $('#' + control).html(err_msg);
        }

        $().ready(function () {
            $('body').on('click', 'a#create', function () {
                clearErrors();

                var url = '<%: Url.Content("~/Organization/Create")%>/';

                getRequest(url);
                return false;
            });

            $('body').on('click', 'a#delete', function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%: Url.Content("~/Organization/Delete")%>/' + id;

                getRequest(url);
                return false;
            });

            $('body').on('click', 'a#edit', function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%: Url.Content("~/Organization/Edit")%>/' + id;

                getRequest(url);
                return false;
            });

            $('body').on('click', 'a#details', function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%: Url.Content("~/Organization/Details")%>/' + id;

                getRequest(url);
                return false;
            });

            $('body').on('submit', '#my-modal form', function () {
                clearErrors();
                $.post($(this).attr('action'), $(this).serialize(), function (data, status) {
                    $('#my-modal').modal('hide');
                    $("#OrganizationList").html(data);
                }).error(function (error, status, a, b) {
                    writeError('msgError', 'Error processing request. Please check errors and try again!');
                    $('.modal-body p.body').html(error.responseText);

                });
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
