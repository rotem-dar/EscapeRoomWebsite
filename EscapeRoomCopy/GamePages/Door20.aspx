<%@ Page Title="" Language="C#" MasterPageFile="~/GamePages/GameMaster.Master" AutoEventWireup="true" CodeBehind="Door20.aspx.cs" Inherits="EscapeRoomCopy.GamePages.Door20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="GameStyle.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('gameimg/background0.png');
        }
        h2 {
            margin-top:0px;
        }
    </style>
    <div class="rectangle">
        <h1>00110010 00110011</h1>
        <h2>01010100 01101000 01101001 01110011 00100000 01101001 01110011 00100000 01100001 01101100 01110011 01101111 00100000 01101101 01100101 01100001 01101110 01101001 01101110 01100111 01101100 01100101 01110011 01110011 00100000 01110100 01100101 01111000 01110100</h2>
    </div>
    <a href="Door46.aspx">
        <img src="GameImg/door3.png" class="door" style="margin-left:0px;"/>
    </a>
    <a href="Door23.aspx">
        <img src="GameImg/door4.png" class="door" style="margin-left:200px;" />
    </a>
    <a href="Door26.aspx">
        <img src="GameImg/door5.png" class="door" style="margin-left:400px;" />
    </a>
    <a href="Door2.aspx">
        <img src="GameImg/door2.png" class="door" style="margin-left:-200px;" />
    </a>
    <a href="Door03.aspx">
        <img src="GameImg/door1.png" class="door" style="margin-left:-400px;" />
    </a>

</asp:Content>
