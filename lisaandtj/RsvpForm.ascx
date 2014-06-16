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
        I'll be bringing along
        <asp:TextBox ID="NumGuestsTextBox" runat="server" CssClass="input-short bold font-annie color4 bgcolor3"
            required type="number"></asp:TextBox>
        
        guests.
    </p>
    <p class="size-small">
        <label class="font-annie">
            <asp:CheckBox ID="CannotAttendCheckBox" runat="server" CssClass="input-checkbox" />
            
            Sadly, I cannot attend :(
        </label>
    </p>
    <p class="size-small color2">
        <span class="font-apple">A message for the bride and groom:</span><br />
        <asp:TextBox ID="MessageTextBox" runat="server" TextMode="MultiLine" CssClass="textarea font-georgia bgcolor3 size-small" Rows="5"></asp:TextBox>
        
    </p>
    <p>
        <asp:Button ID="RsvpButton" runat="server" CssClass="button color3 bgcolor2 font-annie" Text="R.S.V.P"
            OnClick="RsvpButton_Click" />
        
    </p>
    </ContentTemplate>

</asp:UpdatePanel>

<script runat="server">
    protected void RsvpButton_Click(object sender, EventArgs e)
    {
        // Validate number of guests
        int numGuests = 0;
        try
        {
            numGuests = Int32.Parse(NumGuestsTextBox.Text) + 1;
        }
        catch
        {
            // Error condition
            return;
        }
        
        Guest guest = new Guest();
        guest.Name = GuestNameTextBox.Text;
        guest.Email = GuestEmailTextBox.Text;
        guest.Message = MessageTextBox.Text;
        guest.Attending = !CannotAttendCheckBox.Checked;
        guest.Guests = numGuests;
        guest.DateStamp = DateTime.Now;

        town6668Entities1 model = new town6668Entities1();
        model.Guests.Add(guest);

        model.SaveChanges();
    }
</script>








