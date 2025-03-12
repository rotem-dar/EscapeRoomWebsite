<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="TermAndConditions.aspx.cs" Inherits="EscapeRoomCopy.TermAndConditions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="WebStyle.css" rel="stylesheet" />
    <style>
    #termsBox {
            right: 30%;
            top: 90px;
            position: absolute;
            width: 550px;
            background-color: #001F3F;
            border-radius: 8px;
            align-items: center;
            padding: 20px;
            text-align: justify;
            line-height: 1.1;
        }
    </style>

    <div id="termsBox">
        <!-- describes the terms and conditions you must agree to when signing in 
            to the website (humoristic)-->
        <h1 style="font-size:50px; text-align: center;line-height: 0.1;"> Terms & Conditions</h1>
        <p style="color:#A3EBAF;font-size:9px;">
            [1.1]By signing in to this website, you agree to grant us 
            a non-transferable option to be on the naughty list for the rest of your life. 
            [1.1.1]Should we wish to exercise this option, you agree to be put on Santa’s naughty 
            list.[1.1.2]We reserve the right to serve such notice, however, we can accept no 
            liability for any loss or damage caused by such an act.[1.1.3]If you a) do not 
            believe in Christmas, b) are already on the naughty list, or c) do not wish 
            to grant us such a license, please send us a message in the "Contact Us" page 
            to nullify this sub-clause and proceed with your sign-in.
            <br /><br />
            [1.2]By signing in to this website, you agree to grant us a 
            non-transferable option to let us name your firstborn child.[1.2.1]Should we wish 
            to exercise this option, you agree to surrender control over choosing the 
            name, and any claim you may have on it.[1.2.2]We reserve the right to serve such 
            notice, however, we can accept no liability for any loss or damage caused by 
            such an act.[1.2.3]If you a) do not believe you want a child, b) have had your 
            firstborn child already or c) do not wish to grant us such a license, please 
            send us a message in the "Contact Us" page to nullify this sub-clause and 
            proceed with your sign-in.
            <br /><br />
            [1.3]By signing in to this website, you agree to grant us a 
            non-transferable option to not eat pizza for the next 12 months.[1.3.1]Should we 
            wish to exercise this option, you agree to refuse any type of pizza for the 
            next 12 months.[1.3.2]We reserve the right to serve such notice, however, we can 
            accept no liability for any loss or damage caused by such an act.[1.3.3]If you a) 
            can’t be without pizza b) have already planned to eat pizza, or c) do not 
            wish to grant us such a license, please send us a message in the "Contact Us" 
            page to nullify this sub-clause and proceed with your sign-in.
            <br /><br />
            [2.1]By signing in to this website, you agree to being on camera 24/7. We can listen to your private phone calls. 
            We can enter your room at any time to check on you and record it. 
            <br />
            [2.2]Administrators on this domain can have access to any and all data on your 
            phone
            <br />
            [2.3]By signing in to this website, you authorize us to monitor every process on 
            your computer, including but not limited to keystrokes, active programs, some 
            of their memory, browser tabs, open files and potentially their contents, 
            and send that info back, at all times, even if the website is not open in 
            your browser.
            <br /><br />
            [3]Residents of the United States, the Democratic People's Republic of Congo, 
            and Mars will be required to complete a series of mathematical questions 
            in order to sign in.
            <br /><br />
            [4.1]Users must promise to laugh at least once per visit. Laughter is the best medicine, after all!
            <br />
            [4.2]In the event of a website crash, users must perform a dramatic reenactment of their favorite movie scene to cheer up the developers.
            <br />
            [4.3]No grumpy faces allowed! Users must wear a smile while interacting with our site. Failure to comply may result in receiving a virtual hug.
            <br />
            [4.4]By agreeing to these terms, users consent to let our website's mascot, a friendly llama named Larry, randomly pop up to say hello.
            <br />
            [4.5]Users must solemnly swear to never feed the trolls under the bridge. They have enough snacks as it is.
            <br />
            [4.6]In the event of a zombie apocalypse, users agree to form an online survival group and share survival tips via our chat forum.
            <br />
            [4.7]Any puns contributed to our content become the property of the website and may be used to brighten someone's day.
            <br />
            [4.8]Users must promise to take regular breaks from screen time to frolic in the nearest field of flowers or pet the nearest fluffy animal.
            <br />
            [4.9]In case of emergency, users are encouraged to hit the 'panic button' located at the bottom of the page. It won't do anything, but it might make you feel better.
            <br /><br />
            [5.1]If you try to contact us using the "Contact Us" page we garantee to get back 
            to you within eleventy-six eons.
            <br /><br />
            [5.2]The chairman of the committee reserves the right to change the wording of 
            this petition at any moment, including post-signing.
            <br /><br />
            Thank you for your cooperation, the state of Muspelheim thanks 
            your service.
            <br />
            We wish you a happy Ragnarök,
            <br />
            Sincerely, Surtr
        </p>
    </div>
</asp:Content>

