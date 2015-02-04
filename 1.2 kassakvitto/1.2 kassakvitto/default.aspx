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
        <dl>
            <dt>Totalt</dt>
            <dd><asp:Literal runat="server" ID="SubtotalLiteral">{0:c}</asp:Literal></dd>
            <dt>Rabattsats</dt>
            <dd><asp:Literal runat="server" ID="DiscountLiteral">{0:p}</asp:Literal></dd>
            <dt>Rabatt</dt>
            <dd><asp:Literal runat="server" ID="MoneyOffLiteral">{0:c}</asp:Literal></dd>
            <dt>Att betala</dt>
            <dd><asp:Literal runat="server" ID="TotalLiteral">{0:c}</asp:Literal></dd>

        </dl>
    </asp:PlaceHolder>
</body>
</html>
