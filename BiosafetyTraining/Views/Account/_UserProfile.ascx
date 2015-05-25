<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BiosafetyTraining.Models.LocalPasswordModel>" %>
You're logged in as <span class="name">
    <%: ViewBag.UserName %>
</span>
<div class="dark-text-bevel-on-dark clear-both">
    <div class="float-left button-height">
        <span class="button tiny button-height  with-small-padding green-gradient glossy"><span class="icon-lock icon-white icon-size2"></span>
            <%: Html.ActionLink("Change Password", "Manage", "Account", new { @class="input-unstyled"})%>
        </span>
    </div>
    <div class="float-right  button-height">
        <% using (Html.BeginForm("LogOff", "Account", String.Empty, FormMethod.Post, new { @id = "form-logoff", @name = "form-logoff" }
))
           { %>
        <%: Html.AntiForgeryToken() %>
        <span class="button tiny button-height with-small-padding green-gradient glossy"><span class="icon-logout icon-white icon-size2">
        </span><a href="javascript:document.getElementById('form-logoff').submit()" class="input-unstyled">
            Log Off</a> </span>
        <% } %>
    </div>
</div>
