<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lisaandtj.Rsvps.Default" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    
    <link href='http://fonts.googleapis.com/css?family=Homemade+Apple' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Annie+Use+Your+Telescope' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Unkempt:400,700' rel='stylesheet' type='text/css' />

    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />

    <link href="//cdn.datatables.net/1.10.0/css/jquery.dataTables.css" rel="Stylesheet" />

    <link rel="shortcut icon" type="image/png" href="..//favicon.ico" />
    <link rel="shortcut icon" type="image/png" href="http://lisaandtj.us/favicon.ico" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>LM&hearts;TJ</title>

    <link href="../style.css" rel="stylesheet" />
    <link href="rsvps.css" rel="stylesheet" />
    <%--<link href="map.css" rel="stylesheet" />--%>
</head>

<body>
    <form id="form2" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>

     <!-- Just an anchor --><a name=top></a>

    <div class="bgcolor2 level">
        <h2 class="color3 font-apple all-you-need pulse">"All you need is Love..."</h2>
    </div>

    <div class="bgcolor3 level">
        <table id="RsvpTable" class="table" style="font-family: Helvetica, Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif">
            <thead class="font-annie">
                <tr><th>RSVP Date</th>
                    <th>Attending?</th>
                    <th>Guest Name</th><th>Email</th>
                    <th>Guests</th>
                    <th style="text-align:left">Message</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="RsvpRepeater" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("DateStamp", "{0:MM/dd}") %></td>

                            <td><%# (bool)Eval("Attending") ? "Yes :)" : "No :(" %></td>
                            <td><%# Eval("Name") %></td>
                            <td><a href="mailto:<%# Eval("Email") %>">
                                <%# Eval("Email") %>
                                </a>
                                </td>
                            
                            <td><%# Eval("Guests") %></td>

                            <td style="text-align:left;font-size:9px"><%# Eval("Message")%></td>


                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
    <div class="bgcolor1" style="padding:10px;">
        <span class="color4 size-small font-annie">

            Website designed with love by Joe

        </span>
    </div>
    
    </form>

    <%// jQuery CDN %>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script>
    
    <script>
        $(document).ready(function () {
            $("#RsvpTable").DataTable({
                paging: false,
                language: {
                    //"searchPlaceholder": "Search",
                    search: "search:",
                    //order: [3,'desc']
                }

            });

            $("#RsvpTable_filter").attr('placeholder', 'test');
        });
    </script>
</body>
</html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        lisaandtj.Data.town6668Entities1 DB = new lisaandtj.Data.town6668Entities1();
        var data = DB.Guests
            .OrderByDescending(g => g.DateStamp)
            
            .Select(g => g)
            .ToList();

        RsvpRepeater.DataSource = data;
        RsvpRepeater.DataBind();
    }
</script>