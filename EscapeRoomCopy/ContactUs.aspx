<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="EscapeRoomCopy.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="WebStyle.css" rel="stylesheet" />
    <link href="FormStyle.css" rel="stylesheet" />
    <!-- There are two elements in this page. One is a contact form, 
        the other is an "about us" box exolaing about the website-->
    <div id="form-box">
        <form method="post">
            <h2>Contact Form</h2>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <br />
            <label for="newsletter">Subscribe to Newsletter:</label>
            <input type="checkbox" id="newsletter" name="newsletter">
            <br />
            <label for="contact-box">Please Describe Your Issue:</label>
            <input type="text" id="contact-box" name="contact-box" required>
            <br /><br />
            <button type="submit">Submit</button>
        </form>
    </div>
    <div id="rectangle">
        <h1 style="font-size:50px;text-align: center; line-height: 0.15;"> About Us</h1>
        <p style="color:#A3EBAF;font-size:17px; line-height: 1.2;">
            Welcome to my corner of the internet, where coding meets chaos, and I try to make sense of it all!
            <br />
            I'm [object Object], the mastermind behind this digital spectacle. People often ask me, "What's your superpower?" Well, I can turn caffeine into questionable code and transform pizza into elegant dinner parties (just kidding, it's always pizza).
            <br />
            When I'm not wrestling with my keyboard, you can find me trying to convince my cat that I am, in fact, a cat person. Spoiler: She's not buying it.
            <br />
            Join me on this wild journey of debugging, design, and a healthy dose of dad jokes. Because let's face it, if laughter can't fix it, you're not using enough laughter!
        </p>
        <p style="color:#A3EBAF;font-size:7px; line-height: 0;">
            This text is 0% original text and all of it was copied or created by an AI (such as ChatGPT)    
        </p>
    </div>

</asp:Content>
