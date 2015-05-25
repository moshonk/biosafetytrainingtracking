<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.training>" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript" src="<%: Url.Content("~/js/developr.wizard.js") %>"></script>
    <script type="text/javascript" src="<%: Url.Content("~/js/libs/formValidator/jquery.validationEngine.js") %>"></script>
    <script type="text/javascript" src="<%: Url.Content("~/js/libs/formValidator/languages/jquery.validationEngine-en.js") %>"></script>
    <link href="<%:Url.Content("~/js/libs/formValidator/developr.validationEngine.css")%>"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('.wizard').validationEngine();
        });
    </script>
    <script type="text/javascript">

        var sorter_options = {
            headers: {
                1: { sorter: 'decimal' },
                2: { sorter: 'decimal' },
                3: { sorter: 'decimal' },
                4: { sorter: 'decimal' },
                5: { sorter: 'decimal' }
            }
        };

        function clearErrors() {
            $('#msgErrorNewTrainingParticipant').html('');
            $('#msgError').html('');
        }

        function writeError(control, msg) {
            var err_msg = '<div class="alert-message error"><a class="close" href="#">×</a><p>' + msg + '</p></div>';
            $('#' + control).html(err_msg);
        }

        $(document).ready(function () {

            $('body').on('click', '.closeModal', function () {
                $('#my-modal').modal('hide');
            });


            $('body').on('submit', '#my-modal form', function () {
                clearErrors();
                $.post($(this).attr('action'), $(this).serialize(), function (data, status) {
                    $('#my-modal').modal('hide');
                    $("#TrainingParticipantList").html(data);
                    $('#datatables').dataTable({
                        'sDom': '<"dataTables_header"lfr>t<"dataTables_footer"ip>'
                    });
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
                        $("div.chzn-select select").chosen({
                            no_results_text: "Oops, nothing found!",
                            width: "95%"
                        });
                        $('#Article').focus();
                    },
                    error: function (err) {
                        writeError('msgErrorNewTrainingParticipant', err);
                    }
                });
            }

            $('body').on('click', 'a.newTrainingParticipant', function () {
                clearErrors();

                var id = $(this).attr("idTraining");
                var url = '<%: Url.Content("~/TrainingParticipant/Create")%>/' + id;

                getRequest(url);
                return false;
            });

            $('body').on('click', 'a.detailsTrainingParticipant', function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%:Url.Content("~/TrainingParticipant/Details") %>/' + id;

                getRequest(url);

                return false;
            });

            $('body').on('click', 'a.deleteTrainingParticipant', function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%: Url.Content("~/TrainingParticipant/Delete")%>/' + id;

                getRequest(url);

                return false;
            });


            $('body').on('click', 'a.editTrainingParticipant', function () {
                clearErrors();

                var id = $(this).attr("refid");
                var url = '<%: Url.Content("~/TrainingParticipant/Edit")%>/' + id;

                getRequest(url);

                return false;
            });

        }); 
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <span class="icon-graduation-cap"></span>Training</h2>
    <% using (Html.BeginForm())
       { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset class="fieldset">
        <legend></legend>
        <%: Html.HiddenFor(model => model.training_id) %>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.training_start_date, new { @class="label"})%>
            <%: Html.EditorFor(model => model.training_start_date)%>
            <%: Html.ValidationMessageFor(model => model.training_start_date) %>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.training_last_date, new { @class="label"})%>
            <%: Html.EditorFor(model => model.training_last_date)%>
            <%: Html.ValidationMessageFor(model => model.training_last_date) %>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.location_id, new { @class="label"})%>
            <div class="editor-field chzn-select">
                <%: Html.DropDownList("location_id", String.Empty) %>
                <%: Html.ValidationMessageFor(model => model.location_id) %>
            </div>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.training_type_id, "Training Type", new { @class="label"})%>
            <div class="editor-field chzn-select">
                <%: Html.DropDownList("training_type_id", String.Empty)%>
                <%: Html.ValidationMessageFor(model => model.training_type_id)%>
            </div>
        </div>
        <div class="inline-medium-label button-height">
            <%: Html.LabelFor(model => model.notes, new { @class="label"})%>
            <%: Html.TextAreaFor(model => model.notes, new { @class="input full-width"})%>
            <%: Html.ValidationMessageFor(model => model.notes) %>
        </div>
        <div class="hidden">
            <%: Html.EditorFor(model => model.date_created) %>
            <%: Html.EditorFor(model => model.created_by)%>
        </div>
        <div class="margin-top">
            <span class="button blue-gradient glossy float-left"><span class="icon-save"></span>
                <input type="submit" value="Save" class="input-unstyled" /></span>
            <%: Html.ActionLink("Back to Trainings List", "Index", String.Empty, new { @class="button glossy compact float-right icon-left-fat orange-gradient"})%>
        </div>
    </fieldset>
    <div>
        <p>
            <span class="button compact"><span class="icon-users"><a href="/TrainingParticipant/Create"
                class="btn newTrainingParticipant" idtraining="<%: Model.training_id %>">Add participant</a></span></span>
        </p>
        <div id="msgErrorNewTrainingParticipant">
        </div>
        <div id="TrainingParticipantList">
            <% Html.RenderAction("IndexByTraining", "TrainingParticipant", new { trainingId = Model.training_id }); %>
        </div>
    </div>
    <% } %>
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
    <div>
        <%: Html.ActionLink("Back to Trainings List", "Index", String.Empty, new { @class = "button compact icon-left-fat orange-gradient" })%>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
