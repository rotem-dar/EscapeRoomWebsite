<%@ Page Title="" Language="C#" MasterPageFile="~/GamePages/GameMaster.Master" AutoEventWireup="true" CodeBehind="Door15.aspx.cs" Inherits="EscapeRoomCopy.GamePages.Door15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="GameStyle.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('gameimg/background5.png');
        }
        h2 {
            margin-top: 0px;
        }
    </style>
    <div class="rectangle">
        <h1>Try to say this:</h1>
        <h2>Betty Botter bought a bit of butter, but the butter Betty<br />
            bought was bitter, so Betty bought a better butter, and<br />
            the better butter Betty bought was better than the bitter<br /> butter Betty bought before.</h2>
    </div>
    <a href="Door46.aspx">
        <img src="GameImg/door3.png" class="door" style="margin-left:0px;"/>
    </a>
    <a href="Door38.aspx">
        <img src="GameImg/door4.png" class="door" style="margin-left:200px;" />
    </a>
    <a href="Door33.aspx">
        <img src="GameImg/door5.png" class="door" style="margin-left:400px;" />
    </a>
    <a href="Door49.aspx">
        <img src="GameImg/door2.png" class="door" style="margin-left:-200px;" />
    </a>
    <a href="Door27.aspx">
        <img src="GameImg/door1.png" class="door" style="margin-left:-400px;" />
    </a>

</asp:Content>
