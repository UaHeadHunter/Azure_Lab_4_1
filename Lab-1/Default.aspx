<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab_1.Defauls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Content/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="calc-container">
                <h2 style="text-align:center;"><i>CALCULATOR</i></h2>
                <div>
                    <asp:TextBox ID="tbFirstNumber" runat="server" Height="20px" Width="196px"></asp:TextBox>
                    <asp:TextBox ID="tbSecondNumber" runat="server" Height="20px" Width="196px"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btnAdd" runat="server" Text="+" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnSubtract" runat="server" Text="-" OnClick="btnSubtract_Click" />               
                    <asp:Button ID="btnMultiply" runat="server" Text="*" OnClick="btnMultiply_Click" />
                    <asp:Button ID="btnDivide" runat="server" Text="/" OnClick="btnDivide_Click" />
                </div>
                <div style="text-align:center;">
                    =
                </div>
                
                
                <div>
                    <asp:TextBox ID="tbResult" runat="server" Height="20px" Width="196px"></asp:TextBox>
                </div>

                <asp:ValidationSummary 
                 id="programmaticID" 
                 DisplayMode="BulletList" 
                 EnableClientScript="true"
                 ShowSummary="true "
                 runat="server"/>

            </div>
        </div>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbFirstNumber" Display="None" ErrorMessage="First field must be filled!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbSecondNumber" Display="None" ErrorMessage="Second field must be filled!"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbFirstNumber" Display="None" ErrorMessage="Wrong data type in first field." Operator="DataTypeCheck" SetFocusOnError="True" Type="Double"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tbSecondNumber" Display="None" ErrorMessage="Wrong data type in second field." Operator="DataTypeCheck" SetFocusOnError="True" Type="Double"></asp:CompareValidator>
        </p>
    </form>
</body>
</html>
