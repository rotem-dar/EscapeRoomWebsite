<%@ Page Title="" Language="C#" MasterPageFile="~/GamePages/GameMaster.Master" AutoEventWireup="true" CodeBehind="Door17.aspx.cs" Inherits="EscapeRoomCopy.GamePages.Door17" %>
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
        <h1>Are you just choosing doors at random?</h1>
        <h2>I hope not...</h2>
    </div>
    <a href="Door12.aspx">
        <img src="GameImg/door3.png" class="door" style="margin-left:0px;"/>
    </a>
    <a href="Door40.aspx">
        <img src="GameImg/door4.png" class="door" style="margin-left:200px;" />
    </a>
    <a href="Door44.aspx">
        <img src="GameImg/door5.png" class="door" style="margin-left:400px;" />
    </a>
    <a href="Door19.aspx">
        <img src="GameImg/door2.png" class="door" style="margin-left:-200px;" />
    </a>
    <a href="Door30.aspx">
        <img src="GameImg/door1.png" class="door" style="margin-left:-400px;" />
    </a>

</asp:Content>
