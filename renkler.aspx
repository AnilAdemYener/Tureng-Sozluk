<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renkler.aspx.cs" Inherits="renkler" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Tureng Sözlük - Adem Yener</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <style type="text/css">
            .style2
            {
                width: 185px;
                height: 103px;
            }
            .style3
            {
                width: 125px;
            }
            .style4
            {
                width: 183px;
            }
            .style5
            {
                height: 103px;
                width: 224px;
            }
            .style6
            {
                height: 103px;
                width: 120px;
            }
            .style7
            {
                width: 211px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <div id="top">
                <a href="index.aspx"><div id="logo"></div></a>
                <a href="index.aspx"><h2>Tureng Sözlük</h2></a>
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
                    <td class="style7">
                        <asp:Label ID="Label3" runat="server" Text="İngilizce" Font-Bold="True" 
                            Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Fransızca İçin" Font-Bold="True" 
                            Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:DataList ID="DataList1" runat="server" Width="793px">
                <ItemTemplate>
                    <table style="width:100%; margin-bottom: 7px;">
                        <tr>
                            <td class="style6">
                                <asp:Image ID="Image1" ImageUrl='<%# "~/images/"+Eval("renk_resim").ToString() %>' runat="server" Height="100px" Width="100px" />
                            </td>
                            <td class="style2">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("renk_turkce").ToString() %>'></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("renk_ingilizce").ToString() %>'></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton class="linkbutton" ID="LinkButton1" PostBackUrl=<%# "~/fransizca_renkler.aspx?id="+Eval("renk_turkce").ToString() %> runat="server">Fransızca&#39;sı için tıklayın.</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
