<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

 <%: Html.TextBox("", ViewData.TemplateInfo.FormattedModelValue, new { @class = "input small-margin-right full-width " + ViewData["htmlAttributes"] })%>
