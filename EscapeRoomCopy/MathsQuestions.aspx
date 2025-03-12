<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="MathsQuestions.aspx.cs" Inherits="EscapeRoomCopy.MathsQuestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="WebStyle.css" rel="stylesheet" />
    <link href="FormStyle.css" rel="stylesheet" />

    <style>
        form {
            position: center;
            top: 0%;
            margin-top: 300px;
        }
    </style>

    <%-- A humoristic page. This does not have any real effects of the website or the game in the website --%>

    <form method="post">
        <h3>Please answer the following maths questions to sign up:</h3>
        <h4 style="font-size:17px">(This is required by sub-section 3 of this website's <a href="TermAndConditions.aspx" style="color:#42DAD6">
                Terms & Conditions</a> which you have agreed to)</h4>

        <label for="q1">2 + 3 =</label>
        <input type="number" id="q1" name="q1" required>
        <br />
        <label for="q2">23 - 12 =</label>
        <input type="number" id="q2" name="q2" required>
        <br />
        <label for="q3">5 * 7 =</label>
        <input type="number" id="q3" name="q3" required>
        <br />
        <label for="q4">19 * 10 =</label>
        <input type="number" id="q4" name="q4" required>
        <br />
        <label for="q5">100 / 10 =</label>
        <input type="number" id="q5" name="q5" required>
        <br />
        <label for="q6">28 / 7 =</label>
        <input type="number" id="q6" name="q6" required>
        <br />
        <label for="q7">4 * 3 =</label>
        <input type="number" id="q7" name="q7" required>
        <br />
        <label for="q8">3 - 3 =</label>
        <input type="number" id="q8" name="q8" required>
        <br />
        <label for="q9">1 + 3 =</label>
        <input type="number" id="q9" name="q9" required>
        <br />
        <label for="q10">12 / 3 =</label>
        <input type="number" id="q10" name="q10" required>
        <br /><br />
        <button type="submit">Submit</button>
    </form>
</asp:Content>

