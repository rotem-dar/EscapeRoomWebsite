<%@ Page Title="" Language="C#" MasterPageFile="~/GamePages/GameMaster.Master" AutoEventWireup="true" CodeBehind="Door03.aspx.cs" Inherits="EscapeRoomCopy.GamePages.Door03" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="GameStyle.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('gameimg/background2.png');
        }
    </style>
    <div class="rectangle">
        <h2>“This is all a moo point. It’s like a cow’s opinion.<br />You know, it just doesn’t matter.<br />It’s moo.”</h2>
        <h2>~Joey Tribbiani, Friends</h2>
    </div>
    <a href="Door46.aspx">
        <img src="GameImg/door3.png" class="door" style="margin-left:0px;"/>
    </a>
    <a href="Door04.aspx">
        <img src="GameImg/door4.png" class="door" style="margin-left:200px;" />
    </a>
    <a href="Door07.aspx">
        <img src="GameImg/door5.png" class="door" style="margin-left:400px;" />
    </a>
    <a href="Door41.aspx">
        <img src="GameImg/door2.png" class="door" style="margin-left:-200px;" />
    </a>
    <a href="Door16.aspx">
        <img src="GameImg/door1.png" class="door" style="margin-left:-400px;" />
    </a>

</asp:Content>