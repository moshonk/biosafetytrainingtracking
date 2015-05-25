<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<System.DateTime?>" %>
<span class="input"><span class="icon-calendar">
    <%: Html.TextBox("", String.Format("{0:M/d/yy}", Model.HasValue && (Model.Value > DateTime.MinValue) ? Model.Value.Date.ToString("M/d/yyyy") : string.Empty), new { @class = "datefield small input-unstyled" })%>
</span></span>