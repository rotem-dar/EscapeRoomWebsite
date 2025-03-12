<%@ Page Title="" Language="C#" MasterPageFile="~/GamePages/GameMaster.Master" AutoEventWireup="true" CodeBehind="Door24.aspx.cs" Inherits="EscapeRoomCopy.GamePages.Door24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="GameStyle.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('gameimg/background0.png');
        }
    </style>
    <div class="rectangle">
        <h2>Since you made it this far, let me ask you this:</h2>
        <h2>What is the name of the constellation you've been following?</h2>
        <h3>The answer is the position of this letter in the alphabet: _ _ _ _ _ _ _ ? _ _</h3>
    </div>
    <a href="Door36.aspx">
        <img src="GameImg/door3.png" class="door" style="margin-left:0px;"/>
    </a>
    <a href="Door32.aspx">
        <img src="GameImg/door4.png" class="door" style="margin-left:200px;" />
    </a>
    <a href="Door18.aspx">
        <img src="GameImg/door5.png" class="door" style="margin-left:400px;" />
    </a>
    <a href="Door38.aspx">
        <img src="GameImg/door2.png" class="door" style="margin-left:-200px;" />
    </a>
    <a href="Door04.aspx">
        <img src="GameImg/door1.png" class="door" style="margin-left:-400px;" />
    </a>

</asp:Content>
