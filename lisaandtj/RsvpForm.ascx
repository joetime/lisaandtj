﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RsvpForm.ascx.cs" Inherits="lisaandtj.RsvpForm" %>
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

            <asp:ListItem Value="1" Text="It'll just be me :) (1 guest)"></asp:ListItem>
            <asp:ListItem Value="2" Text="Myself and that other person (2)"></asp:ListItem>
            <asp:ListItem Value="3" Text="Me and two others (3)"></asp:ListItem>
            <asp:ListItem Value="4" Text="I'm rolling four deep (4) "></asp:ListItem>
            <asp:ListItem Value="5" Text="The five of us (5)"></asp:ListItem>
            <asp:ListItem Value="6" Text="The whole gang! (6+)"></asp:ListItem>

        </asp:DropDownList>
        
    </p>
    <%--<p class="size-small">
        <label class="font-annie">
            <asp:CheckBox ID="CannotAttendCheckBox" runat="server" 
                CssClass="input-checkbox" />
            
            Sadly, I cannot attend :(
        </label>
    </p>--%>
    <p class="size-small color2">
        <span class="font-apple">A message for the bride and groom:</span><br />
        <asp:TextBox ID="MessageTextBox" runat="server" TextMode="MultiLine" 
            CssClass="textarea font-georgia size-small guest-message" Rows="5"></asp:TextBox>
        
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
        bool success = false;
        string message = "";
        
        try
        {
            Guest guest = new Guest();
            guest.Name = GuestNameTextBox.Text;
            guest.Email = GuestEmailTextBox.Text;
            guest.Message = MessageTextBox.Text;
            guest.Attending = !CannotAttendCheckBox.Checked;
            guest.Guests = Int32.Parse(NumGuestsDropDownList.SelectedValue);
            guest.DateStamp = DateTime.Now;

            town6668Entities1 model = new town6668Entities1();
            model.Guests.Add(guest);

            model.SaveChanges();
        }
        catch
        {

        }
    }
</script>








