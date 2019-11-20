<%@ Page Language="VB" AutoEventWireup="false" CodeFile="T-Shirts-Store.aspx.vb" Inherits="T_Shirts_Store" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rhodes State College T-shirts </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 254px;
            height: 154px;
        }
        .auto-style3 {
            width: 226px;
        }
        .auto-style4 {
            width: 274px;
            height: 157px;
            margin-left: 408px;
        }
        .auto-style5 {
            width: 253px;
        }
        .auto-style6 {
            width: 287px;
        }
        .auto-style7 {
            width: 253px;
            height: 60px;
        }
        .auto-style8 {
            width: 287px;
            height: 60px;
        }
        .auto-style9 {
            height: 60px;
        }
        .auto-style10 {
            font-size: medium;
        }
        .auto-style11 {
            font-size: x-large;
            font-style: italic;
        }
        .auto-style12 {
            width: 193px;
            height: 150px;
        }
        .auto-style13 {
            width: 247px;
        }
        .auto-style14 {
            width: 247px;
            height: 62px;
        }
        .auto-style15 {
            height: 62px;
        }
        .auto-style16 {
            width: 242px;
        }
        .auto-style17 {
            background-color: #33CCCC;
        }
 
        
        .auto-style18 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <img alt="rs" class="auto-style2" src="Images/RSC.jpg" /></td>
                <td>
                    <img alt="kh" class="auto-style4" src="Images/KH.jpg" /></td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6"><center><span class="auto-style10">RHODES STATE COLLEGE</span><br />
                    <span class="auto-style11">T-Shirts Order Form</span></center></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Your tomorrow start here.</td>
                <td class="auto-style6">Order Info</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Size:</td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="SizeRadioButton" runat="server">
                        <asp:ListItem>Small</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Large</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SizeRadioButton" ErrorMessage="Please Select a Size" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <img alt="tshirt" class="auto-style12" src="Images/t-shirt-design-00003.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity:&nbsp;</td>
                <td class="auto-style8">
                    <asp:TextBox ID="QuantityTextBox" runat="server" Width="77px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="QuantityTextBox" ErrorMessage="Quantity is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="QuantityTextBox" ErrorMessage="Enter Number 1 - 10" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Double"></asp:RangeValidator>
                </td>
                <td class="auto-style9">Color of T-Shirts:<asp:RadioButtonList ID="ColorRadioButton" runat="server">
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>Purple</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ColorRadioButton" ErrorMessage="Please Select a Color" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Monogram:</td>
                <td class="auto-style6">
                    <asp:CheckBox ID="MonogramCheckBox" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp; if mongrammmed Enter Letter:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="EnterText_Mongram_TextBox" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15">
                    &nbsp;
                    <asp:Button ID="AddButton" runat="server" Text="Add To Cart" Width="121px" CssClass="auto-style17" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp; <asp:Button ID="ClearButton" runat="server" Text="Clear This Order" CssClass="auto-style17" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>
                    <asp:Label ID="Displaylabel" runat="server" CssClass="auto-style18"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # of T-shirt this order:</td>
                <td>
                    <asp:Label ID="NumberofTshirtsLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Size:</td>
                <td>
                    <asp:Label ID="SizeLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Monogrammed?</td>
                <td>
                    <asp:Label ID="MonogrammedLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order Cost:</td>
                <td>
                    <asp:Label ID="CostLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">&nbsp; Grand Total Small TShirts</td>
                <td>
                    <asp:Label ID="Small_label" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td id="Grand " class="auto-style16">&nbsp;Grand Total Medium TShirts</td>
                <td>
                    <asp:Label ID="Medium_Label" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp; Grand Total Large TShirts</td>
                <td>
                    <asp:Label ID="Large_Label" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:HiddenField ID="TotalSmallHiddenField" runat="server" />
        <asp:HiddenField ID="TotalMediumHiddenField" runat="server" />
        <asp:HiddenField ID="TotalLargeHiddenField" runat="server" />
    </form>
</body>
</html>
