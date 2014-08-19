<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompraVenta.aspx.cs" Inherits="MainSite.operaciones.Venta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    </div>
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell>
                    Simbolo
                </asp:TableCell>                
                
                <asp:TableCell>
                    <asp:TextBox ID="cod" runat="server" OnTextChanged="cod_TextChanged"></asp:TextBox>
                </asp:TableCell>                
            </asp:TableRow>

            <asp:TableRow ID="Label" runat="server">
                <asp:TableCell>
                    Activo
                </asp:TableCell>                
                
                <asp:TableCell>
                    <asp:Label ID="Labelsym" runat="server" Text="..."></asp:Label>
                </asp:TableCell>                
            </asp:TableRow>
            
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell>
                    Cantidad
                </asp:TableCell>                
                
                <asp:TableCell>
                    <asp:TextBox id="quant" runat="server"></asp:TextBox>
                </asp:TableCell>                
            </asp:TableRow>

            <asp:TableRow ID="TableRow3" runat="server">
                <asp:TableCell>
                    Precio
                </asp:TableCell>                
                
                <asp:TableCell>
                    <asp:TextBox id="price" runat="server"></asp:TextBox>
                </asp:TableCell>                
            </asp:TableRow>

            <asp:TableRow ID="TableRow4" runat="server">
                <asp:TableCell>
                   % Comision 
                </asp:TableCell>                
                
                <asp:TableCell>
                    <asp:TextBox id="Comi" runat="server"></asp:TextBox>
                </asp:TableCell>                
            </asp:TableRow>

            <asp:TableRow ID="TableRow5" runat="server">
                <asp:TableCell>
                    Total Operacion
                </asp:TableCell>                
                
                <asp:TableCell>
                    <asp:TextBox id="Total" runat="server"></asp:TextBox>
                </asp:TableCell>                
            </asp:TableRow>            
            <asp:TableRow runat="server">
                <asp:TableCell>
                    <asp:ImageButton ID="buy" runat="server"  ImageUrl="~/Images/boton_comprar.png" AlternateText="Comprar" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:ImageButton ID="sell" runat="server"  ImageUrl="~/Images/boton_vender.jpg" AlternateText="Vender" />
                </asp:TableCell>                
            </asp:TableRow>
            
        </asp:Table>
        
    </form>
</body>
</html>
