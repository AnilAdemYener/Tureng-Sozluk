﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Tureng Sözlük - Adem Yener</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
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
            <asp:Button ID="Button1" class="button" runat="server" Text="Renkler" 
                onclick="Button1_Click" />
            <asp:Button ID="Button2" class="button" runat="server" Text="Sayılar" 
                onclick="Button2_Click" />
            <asp:Button ID="Button3" class="button" runat="server" Text="Aile Bireyleri" 
                onclick="Button3_Click" />
            <asp:Button ID="Button4" class="button" runat="server" Text="Sözler" 
                onclick="Button4_Click" />
        </div>
    </form>
</body>
</html>