<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sozler.aspx.cs" Inherits="renkler" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Tureng Sözlük - Adem Yener</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <style type="text/css">
            .style1
            {
                width: 238px;
            }
            .style2
            {
                width: 262px;
            }
            .style3
            {
                width: 230px;
            }
            .style4
            {
                width: 263px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <div id="top">
                <a href="index.aspx"><div id="logo"></div></a>
                <h2>Tureng Sözlük</h2>
            </div>
        </div>
        <div id="container">
            <table style="width:100%;">
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label1" runat="server" Text="Resim" Font-Bold="True" 
                            Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="Label2" runat="server" Text="Türkçe" Font-Bold="True" 
                            Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="İngilizce" Font-Bold="True" 
                            Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:DataList ID="DataList1" runat="server" Width="793px">
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td class="style1">
                                <asp:Image ID="Image1" ImageUrl='<%# "~/images/"+Eval("renk_resim").ToString() %>' runat="server" Height="100px" Width="100px" />
                            </td>
                            <td class="style2">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("renk_turkce").ToString() %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("renk_ingilizce").ToString() %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
