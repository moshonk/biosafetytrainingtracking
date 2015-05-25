<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BiosafetyTraining.Models.training>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Trainings Report<%:ViewBag.C %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <span class="icon-area-graph"></span>&nbsp;Trainings Report</span>
    </h2>
    <form action="/report/search" method="get" class="small-margin-bottom" id="report">
    <fieldset class="fieldset">
        <legend class="legend">Select Filter Options</legend>
        <div class="block-label small-margin-right float-left required">
            <label class="label" for="start-date">
                Start Date:
            </label>
            <span class="input"><span class="icon-calendar"></span>
                <input type="text" name="start-date" id="start-date" class="input-unstyled validate[required] datefield" />
            </span>
        </div>
        <div class="block-label  small-margin-right float-left required">
            <label class="label" for="last-date">
                Last Date:
            </label>
            <span class="input"><span class="icon-calendar"></span>
                <input type="text" name="last-date" id="last-date" class="input-unstyled validate[required] datefield" />
            </span>
        </div>
        <div class="block-label  small-margin-right float-left">
            <label class="label" for="filter-location">
                Filter Location?
            </label>
            <input id="filter-location" name="filter-location" type="checkbox" value="true">
        </div>
        <div class="block-label small-margin-top float-left chzn-select" id="location">
            <label class="label" for="location_id">
                Location:
            </label>
            <%: Html.DropDownList("location_id", (SelectList)ViewBag.location_id, new { @class="button-height"})%>
        </div>
        <div class="block-label margin-left margin-top float-left">
            <span class="button blue-gradient"><span class="icon-eye"></span>&nbsp;
                <input type="submit" class="input-unstyled" value="Preview" />
            </span><span class="loader margin-left"></span>
        </div>
    </fieldset>
    </form>
    <div class="report-list">
        <% Html.RenderAction("Search"); %>
    </div>
    <div id="my-modal" class="modal hide fade">
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
    <script type="text/javascript" src="<%: Url.Content("~/js/libs/formValidator/jquery.validationEngine.js") %>"></script>
    <script type="text/javascript" src="<%: Url.Content("~/js/libs/formValidator/languages/jquery.validationEngine-en.js") %>"></script>
    <link href="<%:Url.Content("~/js/libs/formValidator/developr.validationEngine.css")%>"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {

            $('.loader').hide();
            $(this).ajaxStart(function () {
                $('.loader').show();
            });

            $(this).ajaxComplete(function () {
                $('.loader').hide();
            });

            $('form#report').validationEngine();

            $('body').on('submit', 'form#report', function () {
                $.post($(this).attr('action'), $(this).serialize(), function (data, status) {
                    $('.report-list').html(data);
                    $('#datatables').dataTable();
                }).fail(function (data, errorStatus) { $('.report-list').html(errorStatus); });
                return false;
            });
            $("#location").hide();
            $("#filter-location").click(function () {
                if ($(this).is(':checked')) {
                    $("#location").show();
                }
                else {
                    $("#location").hide();
                }
            });
        });

        $('body').on('click', '#print', function () {
            $('div.report').printThis();
            return false;
        });

    </script>
    <script type="text/javascript">
        function clearErrors() {
            $('#msgErrorNewPerson').html('');
            $('#msgError').html('');
        }

        function writeError(control, msg) {
            var err_msg = '<div class="alert-message error"><a class="close" href="#">×</a><p>' + msg + '</p></div>';
            $('#' + control).html(err_msg);
        }

        $().ready(function () {

            $('body').on('click', 'a#details', function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%: Url.Content("~/Report/TrainingDetails")%>/' + id;

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
