<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="EscapeRoomCopy.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="WebStyle.css" rel="stylesheet" />
        <link href="FormStyle.css" rel="stylesheet" />
    <style>
        form {
            margin-left: 50px;
            width: 1000px;
            margin-top: 50px;
            font-size: 20px;
            max-height: 450px; /* Set a maximum height for the container */
            overflow-y: auto; /* Enable vertical scrolling */
            position: relative;
        }
        table {
            width: 100%; /* Make the table fill the container */
            border-collapse: collapse;
        }
        #filterDiv {
            margin-bottom: 20px;
        }
        button {
            margin-left: 5px;
            padding: 10px;
            font-size: 18px;
            width: 50px;
        }
    </style>
    <%if (Session["admin"] == null ||
                (bool)Session["admin"] == false)
        {%>
            <form style="margin-top: 0px;">
                 <div id="notAdmin" runat="server" style="font-size:50px"></div>
            </form>
    <%}
        else
        {%>
            <form>
            <div style="text-align:center">
                <h1>List of website users:</h1>
                <div id="filterDiv"> 
                    <input type="text" 
                        id="filter" 
                        name="filter"
                        placeholder="Filter by..."/>            
                    <button type="submit">Filt</button>
                </div>
                <div id="tableDiv" runat="server"></div>
            </div>
            </form>
    <%} %>

</asp:Content>
