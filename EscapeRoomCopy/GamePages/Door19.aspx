<%@ Page Title="" Language="C#" MasterPageFile="~/GamePages/GameMaster.Master" AutoEventWireup="true" CodeBehind="Door19.aspx.cs" Inherits="EscapeRoomCopy.GamePages.Door19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="GameStyle.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('gameimg/background3.png');
        }
    </style>
    <div class="rectangle">
        <h2>“Sometimes the truth is a secret you're keeping from<br />yourself because living a lie is easier.”</h2>
        <h2>~Mateo Torrez, They Both Die at the End</h2>
        (And sometimes it's just a secret I'm keeping from you to make this game unbeatable)
    </div>
    <a href="Door15.aspx">
        <img src="GameImg/door3.png" class="door" style="margin-left:0px;"/>
    </a>
    <a href="Door43.aspx">
        <img src="GameImg/door4.png" class="door" style="margin-left:200px;" />
    </a>
    <a href="Door19.aspx">
        <img src="GameImg/door5.png" class="door" style="margin-left:400px;" />
    </a>
    <a href="Door38.aspx">
        <img src="GameImg/door2.png" class="door" style="margin-left:-200px;" />
    </a>
    <a href="Door44.aspx">
        <img src="GameImg/door1.png" class="door" style="margin-left:-400px;" />
    </a>

</asp:Content>