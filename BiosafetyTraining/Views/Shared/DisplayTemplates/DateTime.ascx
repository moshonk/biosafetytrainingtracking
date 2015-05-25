<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<System.DateTime?>" %>
<%
    if (Model.HasValue && (Model.Value > DateTime.MinValue))
{
    if (Model.Value.Hour + Model.Value.Minute + Model.Value.Second > 0) { 
        %>
        <text>
        <%:
            Model.Value.ToString("MMM dd, yyyy")
            %>
        </text>
        <%
    }else{
    %>
    <text>
    <%:
        Model.Value.ToString("MMM dd, yyyy")
    %>
    </text>
<%

    }
}
else
{ 
        %>
    <text>-</text>
    <%
}
 %>