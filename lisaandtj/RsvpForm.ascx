<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RsvpForm.ascx.cs" Inherits="lisaandtj.RsvpForm" %>
<%@ Import Namespace="lisaandtj.Data" %>

<%--<asp:ScriptManagerProxy runat="server">
</asp:ScriptManagerProxy>--%>

<asp:UpdatePanel runat="server">
    <ContentTemplate>

    <p>
        <asp:TextBox ID="GuestNameTextBox" runat="server" CssClass="font-apple bgcolor3" type="text" placeholder="My Name"
            required></asp:TextBox>
        
    </p>
    <p>
        <asp:TextBox ID="GuestEmailTextBox" runat="server" CssClass="font-annie bgcolor3" 
            required type="email" placeholder="My email address"></asp:TextBox>
        
    </p>
    <p class="size-small font-annie">
        Please tell us 
        <asp:DropDownList ID="NumGuestsDropDownList" runat="server" 
            CssClass="guests-dropdown font-annie" required>

            <asp:ListItem Value="" Text="Who's coming..."></asp:ListItem>

            <asp:ListItem Value="0" Text="Sadly, I cannot attend :("></asp:ListItem>

            <asp:ListItem Value="1" Text="It'll just be me :) (1)"></asp:ListItem>
            <asp:ListItem Value="2" Text="Myself and that other person (2)"></asp:ListItem>
            <asp:ListItem Value="3" Text="Me and two others (3)"></asp:ListItem>
            <asp:ListItem Value="4" Text="I'm rolling four deep (4) "></asp:ListItem>
            <asp:ListItem Value="5" Text="The five of us (5)"></asp:ListItem>
            <asp:ListItem Value="6" Text="The whole gang! (6+)"></asp:ListItem>

        </asp:DropDownList>
        
    </p>
        <p class="size-small font-annie">
            We'll be providing shuttle service to and from the <br />
            <a href="http://www.ihg.com/holidayinnexpress/hotels/us/en/newton/nwtnj/hoteldetail" target="_blank">Holiday Inn Express in Newton, NJ</a>.
            Do you think you'll be using it?<br />
            <asp:DropDownList ID="ShuttleDropDownList" runat="server" 
            CssClass="guests-dropdown font-annie" required>

            <asp:ListItem Value="" Text="..."></asp:ListItem>
            <asp:ListItem Value="yes" Text="Yes I/we will!"></asp:ListItem>
            <asp:ListItem Value="no" Text="No, thanks."></asp:ListItem>
            <asp:ListItem Value="maybe" Text="Maybe... not sure."></asp:ListItem>
            
        </asp:DropDownList>
        </p>
    
        <p class="size-small color2">
        <span class="font-apple">A message for the bride and groom:</span><br />
        <asp:TextBox ID="MessageTextBox" runat="server" TextMode="MultiLine" 
            CssClass="textarea font-georgia size-small guest-message" Rows="5"></asp:TextBox>
        
    </p>
    <p>
        <asp:Button ID="RsvpButton" ClientIDMode="Static" runat="server" CssClass="button color3 bgcolor2 font-annie" Text="R.S.V.P"
            OnClick="RsvpButton_Click" style="cursor:pointer" />
    </p>

        <asp:PlaceHolder ID="YesMessagePlaceHolder" Visible="false" runat="server">
            <div class="rsvp-message font-annie">
                <p>
                    Thanks <asp:Literal ID="GuestNameLiteral" runat="server"></asp:Literal>! We can't wait to celebrate with you!
                </p>
                <p>
                    If your plans change, you can return to the site and resubmit your R.S.V.P any time.
                </p>
                <button class="got-it-button button color3 bgcolor2 font-annie"
                    onclick="return closeMessage();">Got it!</button>
            </div>
        </asp:PlaceHolder>

         <asp:PlaceHolder ID="NoMessagePlaceHolder" Visible="false" runat="server">
            <div class="rsvp-message font-annie">
                <p>
                   We'll miss you! Hope to see you soon.
                </p>
                <p>
                    If your plans change, you can return to the site and resubmit your R.S.V.P any time.
                </p>
                <button class="got-it-button button color3 bgcolor2 font-annie" style="cursor:pointer"
                    onclick='return closeMessage();'>Got it!</button>    
            </div>
        </asp:PlaceHolder>

        <asp:PlaceHolder ID="ErrorMessagePlaceHolder" Visible="false" runat="server">
            <div class="rsvp-message font-annie">
                <p>
                    Ooops, something's not right here... Review your answers and try to submit the form again.<br />
                    If you're still having issues, you can email your RSVP info to Lisa at <a href="mailto:lisamscala@gmail.com">lisamscala@gmail.com</a>
                </p>
                <p>
                    If your plans change, you can return to the site and resubmit your R.S.V.P any time.
                </p>
                <button class="got-it-button button color3 bgcolor2 font-annie" style="cursor:pointer"
                    onclick='return closeMessage();'>Got it!</button>    
            </div>
        </asp:PlaceHolder>


        <script>
            function closeMessage() {
                $('.rsvp-message').fadeOut();
                return false;
            }
        </script>
    
    </ContentTemplate>

</asp:UpdatePanel>

<script runat="server">
    protected void RsvpButton_Click(object sender, EventArgs e)
    {
        try
        {
            Guest guest = new Guest();
            guest.Name = GuestNameTextBox.Text;
            guest.Email = GuestEmailTextBox.Text;
            guest.Message = MessageTextBox.Text;
            guest.Shuttle = ShuttleDropDownList.SelectedValue;
            guest.Guests = Int32.Parse(NumGuestsDropDownList.SelectedValue);
            guest.Attending = guest.Guests > 0;
            guest.DateStamp = DateTime.Now;

            town6668Entities1 model = new town6668Entities1();
            model.Guests.Add(guest);
            model.SaveChanges();

            ShowMessage(guest.Name, guest.Guests);
        }
        catch
        {
            ErrorMessagePlaceHolder.Visible = true;
        }
    }

    protected void ShowMessage(string name, int guests)
    {
        
        if (guests > 0)
        {
            GuestNameLiteral.Text = name.Split(' ').First();
            YesMessagePlaceHolder.Visible = true;
        }
        else
        {
            NoMessagePlaceHolder.Visible = true;
        }
    }
</script>








