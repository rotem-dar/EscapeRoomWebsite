<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EscapeRoomCopy.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="WebStyle.css" rel="stylesheet" />
    <link href="FormStyle.css" rel="stylesheet" />
    <br />
    <!-- 
        The website's sign up form. Contains a username, password, a question "do you 
        like the website?" whcih you must agree to, a question of which country the 
        user is from, and a checkbox for agreeing to the terms and conditions
    -->
    <form method="post">
        <h2>Sign Up Form</h2>

        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br />
        <label>Do you like the website design?:</label>
        <input type="radio" id="yes" name="design" value="yes" required>
        <label for="yes">Yes</label>
        <input type="radio" id="no" name="design" value="no">
        <label for="no">No</label>
        <br />
        <label for="country">Country:</label>
        <select id="country" name="country">
            <option value="mars">Mars</option>
            <option value="narnia">Narnia</option>
            <option value="c_d_r">The Democratic People's Republic of Congo</option>
            <option value="united_states">The United States</option>
            <option value="middle_earth">Middle-Earth</option>
            <option value="neverland">Neverland</option>
            <option value="aether">Aether</option>
            <option value="maleria">Maleria</option>
            <option value="moomoo">Moo Moo Land</option>
            <option value="new_guinea">Papua New Guinea</option>
            <option value="fiji">Fiji</option>
            <option value="figi">Figi</option>
            <option value="lalaland">Lalaland</option>
            <option value="asgard">Asgrad</option>
        </select>
        <br />
        <label for="service">I agree to the 
            <a href="TermAndConditions.aspx" style="color:#42DAD6">
                Terms & Conditions</a>:</label>
        <input type="checkbox" id="service" name="service" required>
        <br />
        <button type="submit">Sign Up</button>

        <div style="color:red;margin-top:10px;"><%= msg %></div>

    </form>
</asp:Content>
