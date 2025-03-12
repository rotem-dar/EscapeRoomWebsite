<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EscapeRoomCopy.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="WebStyle.css" rel="stylesheet" />
    <link href="FormStyle.css" rel="stylesheet" />
    <br />
    <!-- The login contains a username, password, and the same question about the 
        website as from the sign up form, which you must agree to -->
    <form method="post">
        <h2>Login Form</h2>

        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <br />
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br />
        <label>Do you still like the website design?:</label>
        <input type="radio" id="yes" name="design" value="yes" required>
        <label for="yes">Yes</label>
        <input type="radio" id="no" name="design" value="no">
        <label for="no">No</label>
        <br />
        <button type="submit">Login</button>

        <div style="color:red;margin-top:10px;"><%= msg %></div>

    </form>
</asp:Content>

