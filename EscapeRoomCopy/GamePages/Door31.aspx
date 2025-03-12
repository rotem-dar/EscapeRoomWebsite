<%@ Page Title="" Language="C#" MasterPageFile="~/GamePages/GameMaster.Master" AutoEventWireup="true" CodeBehind="Door31.aspx.cs" Inherits="EscapeRoomCopy.GamePages.Door31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="GameStyle.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('gameimg/background4.png');
        }
    </style>
    <div class="rectangle">
        <h1>Did you figure out the trick yet?</h1>
        <h2>It's important to pay attention to details.</h2>
    </div>
    <a href="Door27.aspx">
        <img src="GameImg/door3.png" class="door" style="margin-left:0px;"/>
    </a>
    <a href="Door48.aspx">
        <img src="GameImg/door4.png" class="door" style="margin-left:200px;" />
    </a>
    <a href="Door03.aspx">
        <img src="GameImg/door5.png" class="door" style="margin-left:400px;" />
    </a>
    <a href="Door13.aspx">
        <img src="GameImg/door2.png" class="door" style="margin-left:-200px;" />
    </a>
    <a href="Door44.aspx">
        <img src="GameImg/door1.png" class="door" style="margin-left:-400px;" />
    </a>

</asp:Content>
