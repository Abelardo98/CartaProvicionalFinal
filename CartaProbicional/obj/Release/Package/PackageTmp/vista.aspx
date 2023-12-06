<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vista.aspx.cs" Inherits="CartaProbicional.vista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            overflow: scroll;
            width: 1449px;
        }
        .auto-style2 {
            width: 1433px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/encabezadoFinal.png" Height="142px" Width="1441px" />
        </header>
        <br />
        <br />
        <div style="text-align:right" class="auto-style2">
        </div>

        <div>
            <header style="text-align:center">
                <h1>REGISTROS DE CARTA PROVISIONAL PARA RESIDENCIA PROFESIONAL  </h1>
            </header>
            <br />
            <br />
        </div>
        <article style="text-align:center">
            <asp:Button ID="BtnExportarRegistros" runat="server" Text="Exportar registros" OnClick="BtnExportarRegistros_Click" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </article>
        <br />
        <br />
        <div style="text-align:center" class="auto-style1">

               
            <article style="padding-left:100px">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1271px" BorderColor="White">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" BorderColor="Red" BorderStyle="Solid" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" BorderColor="Red" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" BorderColor="#00CCFF" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </article>
                


            </div>

    </form>
</body>
</html>
