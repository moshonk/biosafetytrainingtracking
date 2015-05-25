<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Login.Master" Inherits="System.Web.Mvc.ViewPage<BiosafetyTraining.Models.LoginModel>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Log in
</asp:Content>
<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="container" style="margin-top: -142px;">
        <hgroup id="login-title" class="large-margin-bottom">
            <h1 class="login-title-image margin-bottom">
                Biosafety Training Tracking
            </h1>
            <h5>
                © KEMRI CGHR 2014
            </h5>
        </hgroup>
        <div id="form-block" class="scratch-metal">
            <% using (Html.BeginForm("JsonLogin", "Account", new { ReturnUrl = ViewBag.ReturnUrl }, FormMethod.Post, new { @class = "input-wrapper green-gradient glossy", @id = "form-login", @name = "form-login" }
))
               { %>
            <%: Html.AntiForgeryToken() %>
            <%: Html.ValidationSummary(true) %>
            <ul class="inputs black-input large">
                <!-- The autocomplete="off" attributes is the only way to prevent webkit browsers from filling the inputs with yellow -->
                <li><span class="icon-user mid-margin-right"></span>
                    <%: Html.TextBoxFor(m => m.UserName, new { @class="input-unstyled", @placeholder="Login", @autocomplete="off"})%>
                </li>
                <li><span class="icon-lock mid-margin-right"></span>
                    <%: Html.PasswordFor(m => m.Password, new { @class="input-unstyled", @placeholder="Password", @autocomplete="off"})%>
                </li>
            </ul>
            <p class="button-height">
                <button type="submit" class="button glossy float-right" id="login">
                    Login</button>
                <span class="switch tiny mid-margin-right with-tooltip checked replacement" title="Enable auto-login"
                    tabindex="0"><span class="switch-on"><span>ON</span></span><span class="switch-off"><span>OFF</span></span><span
                        class="switch-button"></span>
                    <%: Html.CheckBoxFor(m => m.RememberMe, new{@checked="checked", @title="Enable auto-login", @tabindex="-1"}) %>
                </span>
                <label for="remind">
                    Remind me</label>
            </p>
            <p>
                <%: Html.ActionLink("Register", "Register") %>
                if you don't have an account.
            </p>
            <% } %>
        </div>
    </div>
</asp:Content>
<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
