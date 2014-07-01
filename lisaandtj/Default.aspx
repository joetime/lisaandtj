<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lisaandtj.Default" %>

<%@ Register Src="~/RsvpForm.ascx" TagPrefix="uc1" TagName="RsvpForm" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link href='http://fonts.googleapis.com/css?family=Homemade+Apple' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Annie+Use+Your+Telescope' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Unkempt:400,700' rel='stylesheet' type='text/css' />

    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />

    <link rel="shortcut icon" type="image/png" href="/favicon.ico" />
    <link rel="shortcut icon" type="image/png" href="http://lisaandtj.us/favicon.ico" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>LM&hearts;TJ</title>

    <link href="style.css" rel="stylesheet" />
    <link href="top.css" rel="stylesheet" />
    <link href="map.css" rel="stylesheet" />

    <%// jQuery CDN %>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>

     <!-- Just an anchor --><a name=top></a>

    <div class="relative">

        <!-- HEADER IMAGES! -->

        <div id="spacer"></div>

        <div id="redbird" class="bird">
            <img src="assets/invites/redbird.jpg" />
        </div>
        <div id="greenbird" class="bird">
            <img src="assets/invites/greenbird.jpg" />
        </div>

        <div id="wreath">
            <img id="wreath" src="assets/invites/circle.png" width="450px" />
        </div>

        <div id="LMTJ1" style="position: absolute; font-family: 'Unkempt'; margin-top: 70px; font-size: 140px; margin-bottom: 40px; top: 137px; left: 50%; margin-left: -165px; font-size: 122px;"
             title="Unkempt"
             class="color2">LM<span class="heart color3">&hearts;</span>TJ</div>

        <!-- Intro text -->

        <div id="announcement" class="rotate-3 font-apple color5">
            The marriage of <span class=color2x>Lisa Marie</span> and <span class=color2x>Thomas Joseph</span> will take place on Saturday,
            October 18th, 2014 at
            The Conservatory
            at Sussex County Fair Grounds in Augusta, New Jersey.
        </div>

        <div id="hashtag" class="color3 font-annie">#LMTJ1018</div>

        <span class="color3 arrow lookatme">
            <i class="fa fa-arrow-circle-o-down"></i>
        </span>

    </div>

    <div class="bgcolor2 level">
        <h2 class="color3 font-apple all-you-need pulse">"All you need is Love..."</h2>
    </div>

    <div id=level2 class="level bgcolor3">
        <h2 class="color4 font-annie">THE BASICS:</h2>

        <p class=font-annie>
            Lisa & TJ's wedding ceremony will begin at <b>3:30 pm</b> at the Old Horse Stables at the Sussex County Fair Grounds.
            The delightful Mr. Jim LaSalla will be running things, so you can expect a good show.
            </p>
        <p class="font-annie">
            After the ceremony we will all walk over to The Conservatory where we'll start the party!
        </p>
        
        <h3 class="color5 font-apple">How do I <span class="font-annie bold">R.S.V.P.</span>?</h3>
        <p class="color4 font-annie">
            Easy! Just fill out the <a href="#rsvp">RSVP Form</a> below and you're all set!
        </p>


        <h3 class="color5 font-apple">Where's "The Conservatory?"</h3>

        <div id="conservatory-info" class="font-annie">
            <address>37 Plains Rd Augusta, NJ 07822</address>
            <a href="tel:9739485500">(973) 948-5500</a>
        </div>

        <a href="assets/map.jpg">
            <img id="map" src="assets/Map.png" width="450px" />
        </a>

        <p class="font-annie">
            You can check out their <a href="http://njstatefair.org/conservatory/index.html" target="_blank">website</a> for more info.
        </p>
]
        <h3 class="color5 font-apple">Can I crash at your place?</h3>
        <p class="font-annie">
            Sorry, no! But we've set some rooms aside if you are coming from out of town. Check out the 
            <a href="http://www.ihg.com/holidayinnexpress/hotels/us/en/newton/nwtnj/hoteldetail" target="_blank">Holiday Inn Express in Newton, NJ</a>.
        </p>
        <p class="font-annie">&hearts; Use group code "USW" to get the group discount :)</p>
        <div id="hotel-info" class="font-annie">
            <b>Holiday Inn Express</b>
            <address>8 North Park Dr<br /> Newton, NJ 07860</address>
            <a href="tel:9739408888">(973) 940-8888</a>
        </div>

        <h3 class="color5 font-apple">What should I wear?</h3>
        <p class="font-annie">
            We want everyone to be comfortable... wear whatever makes you happy!
            (The groom won't be wearing a tie, if that helps.)
        </p>
        <p>
            Please do remember your dancing shoes :)
        </p>

        <div class="top-link bgcolor2">
            <a href="#top" class="font-annie color3">top</a>
        </div>
        
    </div>
    <div id=level3 class="level bgcolor2">
        <a name=weddingparty></a>
        <h2 class="color4 font-annie">THE WEDDING PARTY</h2>
        <div>
            <h3 class="color5 font-apple">The Bride &amp; Groom</h3>
            <div class=img-container style="">
                <img id=filmstrip src="assets/filmstrip.jpg" width=350 />
            </div>

            <p class=font-annie>
                You know them, you love them... it's Lisa and TJ!
            </p>
        </div>
        <!--
        <div class=half>
            <h3 class="color5 font-apple">"Made" of Honor</h3>
            <div class="circle spin">
                <img src="http://3.bp.blogspot.com/-3k7Y3EVSAos/UptYUQIkzfI/AAAAAAAALD0/5wga7NgBuIs/s640/IMG_1377.jpg" width=300 />
            </div>
            <p class="color4 font-apple center quote">First "Nick-name" Lastname</p>
            <p class="center font-annie">And a little bit more info about her!</p>
        </div>
        <div class="half borderxleft">
            <h3 class="color5 font-apple">The Greatest Man</h3>
            <div class="circle spinback">
                <img src="http://3.bp.blogspot.com/-ca2h3PE_8Mw/UmMtMMgVLuI/AAAAAAAAFTk/RKV72w-Aeik/s640/Hike-2.jpg" width=300 />
            </div>
            <p class="color4 font-apple center quote">First "Nickname" Lastname</p>
            <p class="center font-annie">And a little bit more info about him!</p>
        </div>
        -->
        <h3 class="color5 font-apple">These Girls</h3>

        <div class=half>
            <div class="circle circle-small">
                <img src="assets/jamie&me.jpg"
                     style="position: relative; width: 250px; top: -40px; left: -60px;" />
            </div>
            <p class="quote color4 font-apple center shake-hover">Jamie Marchiano</p>
        </div>
        <div class=half>
            <div class="circle circle-small">
                <img src="assets/regina&tj.jpg"
                     style="position: relative; width: 300px; top: -80px; left: -30px;" />
            </div>
            <p class="quote color4 font-apple center">Regina Scala-Reagan</p>
        </div>

        <div class=third>
            <div class="circle circle-small">
                <img src="assets/amelia&me.jpg"
                     style="position: relative; width: 140px; top: 0px; left: -30px;" />
            </div>
            <p class="quote color4 font-apple center">Amelia Wojtusiak</p>
        </div>
        <div class=third>
            <div class="circle circle-small">
                <img src="assets/tj&mariascala.jpg"
                     style="position: relative; width: 180px; top: 0px; left: -30px;" />
            </div>
            <p class="quote color4 font-apple center">Maria Scala</p>
        </div>
        <div class=third>
            <div class="circle circle-small">
                <img src="assets/scalagirls&me-2.jpg"
                     style="position: relative; width: 170px; top: 0px; left: 0px;" />
            </div>
            <p class="quote color4 font-apple center">Tina Scala</p>
        </div>

        <div class=half>
            <div class="circle circle-small">
                <img src="assets/katie.jpg"
                     style="position: relative; width: 203px; top: -1px; left: -33px;" />
            </div>
            <p class="quote color4 font-apple center">Katie Scala</p>
        </div>
        <div class=half>
            <div class="circle circle-small">
                <img src="assets/tj&mariaserp.jpg"
                     style="position: relative; width: 519px; top: -174px; left: -123px;" />
            </div>
            <p class="quote color4 font-apple center">Maria Serpineto</p>
        </div>


        <h3 class="color5 font-apple">Those Guys</h3>

        <div class=third>
            <div class="circle circle-small">
                <img src="assets/lisa&stephen.png"
                     style="position: relative; top: -33px; left: -138px; width: 377px;" />
            </div>
            <p class="quote color4 font-apple center">Stephen Marchiano</p>
        </div>
        <div class=third>
            <div class="circle circle-small">
                <img src="assets/lisaregina&joe.png"
                     style="position: relative; top: -73px; left: -179px; width: 419px;" />
            </div>
            <p class="quote color4 font-apple center">Joe Scala</p>
        </div>
        
        <div class=third>
            <div class="circle circle-small">
                <img src="assets/tj&will1.jpg"
                     style="position: relative; top: -139px; left: -196px; width: 500px;" />
            </div>
            <p class="quote color4 font-apple center">Will Reagan</p>
        </div>
        <div class=third>
            <div class="circle circle-small">
                <img src="assets/tjandrew&sky.jpg"
                     style="position: relative; top: -75px; left: -147px; width: 385px;" />
            </div>
            <p class="quote color4 font-apple center">Skyler Conte</p>
        </div>
        <div class=third>
            <div class="circle circle-small">
                <img src="assets/tjlisa&andrew.jpg"
                     style="position: relative;top: 0px; left: -25px; width: 250px" />
            </div>
            <p class="quote color4 font-apple center">Andrew Collins</p>
        </div>
        <div class=third>
            <div class="circle circle-small">
                <img src="assets/kevin.jpg"
                     style="position: relative; top: -1px; left: -15px; width: 200px;" />
            </div>
            <p class="quote color4 font-apple center">Kevin Moris</p>
        </div>
        <div class=third>
            <div class="circle circle-small">
                <img src="http://www.foolish.org/image%20Lib/moose%20logo.gif"
                     style="position: relative;top: -8px; left: -41px;" width=188px />
            </div>
            <p class="quote color4 font-apple center">Michael "Moose" Mezzo</p>
        </div>
        <div class=third>
            <div class="circle circle-small">
                <img src="assets/mark.png"
                     style="position: relative;top: -3px; left: -55px;" width=211px />
            </div>
            <p class="quote color4 font-apple center">Mark Urban</p>
        </div>

        <div class="third">
            <div class="circle circle-small">
                <img src="assets/matt.jpg"
                     style="position: relative; top: -43px; left: -58px; width: 318px;" />
            </div>
            <p class="quote color4 font-apple center">Matt Mozer</p>
        </div>

        <div class=third>
            <div class="circle circle-small">
                <img src="assets/ryder.png"
                     style="position: relative;top: -3px; left: -55px;" width=211px />
            </div>
            <p class="quote color4 font-apple center">Ryder</p>
        </div>
        <div class=third>
            <div class="circle circle-small">
                <img src="assets/toby.png"
                     style="position: relative;top: -198px; left: -20px; width: 300px;" />
            </div>
            <p class="quote color4 font-apple center">Tobaggan</p>
        </div>

        <!--
        <h3 class="color5 font-apple">Meet the Parents</h3>

        <div class=quarter>
            <div class="circle circle-small wobble">
                <img src="http://2.bp.blogspot.com/-B0xafKQ3IIA/UptYVHcWcLI/AAAAAAAALD4/d2SfIdviL4Q/s640/IMG_1363.jpg" width=300 />
            </div>
            <p class="quote color4 font-apple center">Someones Name</p>
        </div>
        <div class=quarter>
            <div class="circle circle-small">
                <img src="http://2.bp.blogspot.com/-rRsVY1VwEDY/UmccPJsUi3I/AAAAAAAAFWM/uldNN2NoHP8/s640/Final+Expressions-6.jpg" width=300 />
            </div>
            <p class="quote color4 font-apple center">Someones Name</p>
        </div>
        <div class=quarter>
            <div class="circle circle-small">
                <img src="http://1.bp.blogspot.com/-3WPZyEkYXOs/UmccOgbIcSI/AAAAAAAAFVo/1iwQlj3Yl5M/s640/Final+Expressions-3.jpg" width=300 />
            </div>
            <p class="quote color4 font-apple center">Someones Name</p>
        </div>
        <div class=quarter>
            <div class="circle circle-small">
                <img src="http://4.bp.blogspot.com/-8as8p_OSy3Y/UptYapm7yCI/AAAAAAAALEU/3TpgjgbFJ4M/s640/IMG_1383.jpg" width=300 />
            </div>
            <p class="quote color4 font-apple center">Someones Name</p>
        </div>

        <h3 class="color5 font-apple">Who let them in?</h3>

        <div class=quarter>
            <div class="circle circle-small">
                <img src="http://2.bp.blogspot.com/-B0xafKQ3IIA/UptYVHcWcLI/AAAAAAAALD4/d2SfIdviL4Q/s640/IMG_1363.jpg" width=300 />
            </div>
            <p class="quote color4 font-apple center">Someones Name</p>
        </div>
        <div class=quarter>
            <div class="circle circle-small">
                <img src="http://2.bp.blogspot.com/-rRsVY1VwEDY/UmccPJsUi3I/AAAAAAAAFWM/uldNN2NoHP8/s640/Final+Expressions-6.jpg" width=300 />
            </div>
            <p class="quote color4 font-apple center">Someones Name</p>
        </div>
        <div class=quarter>
            <div class="circle circle-small">
                <img src="http://1.bp.blogspot.com/-3WPZyEkYXOs/UmccOgbIcSI/AAAAAAAAFVo/1iwQlj3Yl5M/s640/Final+Expressions-3.jpg" width=300 />
            </div>
            <p class="quote color4 font-apple center">Someones Name</p>
        </div>
        <div class=quarter>
            <div class="circle circle-small">
                <img src="http://4.bp.blogspot.com/-8as8p_OSy3Y/UptYapm7yCI/AAAAAAAALEU/3TpgjgbFJ4M/s640/IMG_1383.jpg" width=300 />
            </div>
            <p class="quote color4 font-apple center">Someones Name</p>
        </div>
        -->
        <div class="top-link bgcolor3">
            <a href=#top class="font-annie color2">top</a>
        </div>
    </div>

    <div id=level3 class="level bgcolor3">
        <a name=rsvp></a>
        <h2 class="color4 font-annie">I WANT TO BE THERE!</h2>
        <div id=rsvpform>
            <uc1:RsvpForm runat="server" id="RsvpForm1" />
        </div>
        <div class="top-link bgcolor4">
            <a href=#top class="font-annie color3">top</a>
        </div>
    </div>

    <div class="bgcolor4 level">
        <h2 class="color1 font-apple all-you-need">"All you need is Love..."</h2>
    </div>
    <div class="bgcolor1" style="padding:10px;">
        <span class="color4 size-small font-annie">

            Website designed with love by Joe

        </span>
    </div>
    </form>

    
  
</body>
</html>
