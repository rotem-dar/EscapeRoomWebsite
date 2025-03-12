<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="EscapeRoomCopy.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        button {
        background-color: #074351;
        color: #FFD700;
        font-size: 30px;
        font-family: Aharoni;
        height: 100px;
        width: 700px;
        padding: 20px;
        border: none;
        border-radius: 40px;
        cursor: pointer;
        }

        .id {
            position: absolute;
        }
    </style>
    <link href="WebStyle.css" rel="stylesheet" />

    <br /> <br /> <br />
    <!-- The page's title is a picture -->
    <img src="img/title.png" style="width:770px; height: 120px;border-radius: 50px; box-shadow: 10px 10px 10px #001F3F;">
    <!-- Text explaining about the game -->
    <h2 style="color: #90D4FE;text-shadow:5px 5px 5px #001F3F;">
        Your goal is to reach the end using the smallest number of doors.
        Press the button when you are ready to begin!
    </h2>
    <br />
    <%if (Session["username"] != "Guest")
        {%>
        <a href="GamePages/GameStartingPage.aspx">
            <button type="button">PRESS TO START GAME</button></a>
        <%if ((int)Session["bestDoorsNum"] != 0)
            {%>
            <p class="timer" style="margin-bottom:0; margin-top:20px;"><%="Best: " + Session["bestDoorsNum"] + " doors"%></p>        
        <%} %>
    <%} else {%>
        <a> <button type="button" style="color:orangered">Please login in order to play</button></a>
    <%} %>

</asp:Content>
