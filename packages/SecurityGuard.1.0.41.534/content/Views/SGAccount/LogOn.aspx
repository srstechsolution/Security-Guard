        <%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SecurityGuard.ViewModels.LogOnViewModel>" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
          Log On
        </asp:Content>
        <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
          <h2>
            Log On
          </h2>
          <p>
            Please enter your user name and password. <%: Html.ActionLink("Register", "Register") %>
            if you don't have an account.
          </p>
          <script src="<%: Url.Content("~/Content/SecurityGuard/scripts/jquery-1.6.1.min.js") %>" type="text/javascript"></script>
          <script src="<%: Url.Content("~/Content/SecurityGuard/scripts/modernizr-1.7.min.js") %>" type="text/javascript"></script>
          <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
          <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>
          <% using (Html.BeginForm())
          { %>
          <%: Html.ValidationSummary(true) %>
          <fieldset>
            <legend>
              Log On Credentials
            </legend>
            <div class="editor-label">
            <%: Html.LabelFor(model => model.UserName) %>
            </div>
            <div class="editor-field">
            <%: Html.EditorFor(model => model.UserName) %>
            <%: Html.ValidationMessageFor(model => model.UserName) %>
            </div>
            <div class="editor-label">
            <%: Html.LabelFor(model => model.Password) %>
            </div>
            <div class="editor-field">
            <%: Html.EditorFor(model => model.Password) %>
            <%: Html.ValidationMessageFor(model => model.Password) %>
            </div>
            <div class="editor-label">
            <%: Html.LabelFor(model => model.RememberMe) %>
            </div>
            <div class="editor-field">
            <%: Html.EditorFor(model => model.RememberMe) %>
            <%: Html.ValidationMessageFor(model => model.RememberMe) %>
            </div>
            <p>
              <input type="submit" value="Log On" />
            </p>
            <% if (Model.EnablePasswordReset)
            { %>
                   <p><%: Html.ActionLink("Forgot Password?", "ForgotPassword")%></p>
            
          <%}%>
          </fieldset>
        <%}%>


</asp:Content>
