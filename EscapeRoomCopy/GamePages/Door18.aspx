<%@ Page Title="" Language="C#" MasterPageFile="~/GamePages/GameMaster.Master" AutoEventWireup="true" CodeBehind="Door18.aspx.cs" Inherits="EscapeRoomCopy.GamePages.Door18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="GameStyle.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('gameimg/background1.png');
        }
    </style>
    <div class="rectangle">
        <h1>Congratulations! You have reached the end!</h1>
        <h2>You have gone through <%=Session["doorsNum"] %> doors in this game!</h2>
    </div>
    <a href="../Homepage.aspx">
        <button type="submit">BACK TO HOME PAGE</button></a>

</asp:Content>
