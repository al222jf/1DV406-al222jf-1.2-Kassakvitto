<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1._2_kassakvitto._default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <%-- --%>
    <div>
        <%-- Textbox --%>
        <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox>
        <asp:Label ID="SumLabel" runat="server" Text="Label">kr</asp:Label>
        <%-- Felmeddelande och validate --%>
        <asp:RequiredFieldValidator ID="InputRequiredFieldValidator" runat="server" 
            ErrorMessage="Fältet får inte vara tomt" 
            ControlToValidate="SumTextBox" Display="Dynamic" />
        <asp:CompareValidator ID="InputCompareValidator" runat="server" 
            ErrorMessage="Måste vara mer än noll och ett tal" 
            ControlToValidate="SumTextBox" Operator="GreaterThan" Type="Double" ValueToCompare="0" Display="Dynamic" />
    </div>
        <%-- Knappar --%>
        <asp:Button ID="SumButton" runat="server" Text="Beräkna rabbat" OnClick="Button1_Click" />
    </form>
    <%-- Kvitto --%>
    <asp:PlaceHolder ID="DiscountPlaceHolder" runat="server" Visible="false">

    </asp:PlaceHolder>
</body>
</html>
