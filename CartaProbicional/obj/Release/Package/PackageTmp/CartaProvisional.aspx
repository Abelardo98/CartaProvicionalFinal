<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CartaProvisional.aspx.cs" Inherits="CartaProbicional.CartaProbicional" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1227px;
        }
        .auto-style2 {
            width: 627px;
        }
        .auto-style3 {
            width: 1404px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         
        <header>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/encabezadoFinal.png" Height="170px" Width="1452px" />
        </header>
        <br />

        <br />
        <div class="auto-style3" style="text-align:right" >
            <asp:Button ID="Button1" runat="server" Text="Administrador" OnClick="Button1_Click" />
        </div>
        <div>
            <header style="text-align:center">
                <h1>CARTA PROVISIONAL RESIDENCIA PROFESIONAL </h1>
            </header>
            <br />
            <br />
            <section>
                <article>
                    <table style="text-align:center" class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Numero control:" Width="500px"></asp:Label>
                        </td>
                         <td>
                            <asp:TextBox ID="txtNumeroControl" onkeyup="javascript:this.value=this.value.toUpperCase();" runat="server" Width="500px"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Carrera:" Width="500px"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="txtCarrera" runat="server" Width="505px">
                                <asp:ListItem>Ingeniería Informática</asp:ListItem>
                                <asp:ListItem>Ingeniería Mecatrónica</asp:ListItem>
                                <asp:ListItem>Ingeniería en Administración</asp:ListItem>
                                <asp:ListItem>Ingeniería Industrial</asp:ListItem>
                                <asp:ListItem>Ingeniería Forestal</asp:ListItem>
                                <asp:ListItem>Licenciatura en Biología</asp:ListItem>
                                <asp:ListItem>Licenciatura en Gastronomía</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text="Nombre:" Width="500px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNombre" runat="server" Width="500px" AutoPostBack="True" OnTextChanged="txtNombre_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label7" runat="server" Text="Apellido Paterno:" Width="500px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtApellidoPaterno" runat="server" Width="500px" AutoPostBack="True" OnTextChanged="txtApellidoPaterno_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label8" runat="server" Text="Apellido Materno:" Width="500px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtApellidoMaterno" runat="server" Width="500px" AutoPostBack="True" OnTextChanged="txtApellidoMaterno_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text="Genero:" Width="500px"></asp:Label> 
                        </td>
                        <td>
                            <asp:DropDownList ID="txtGenero" runat="server" Width="505px">
                                <asp:ListItem>M</asp:ListItem>
                                <asp:ListItem>F</asp:ListItem>
                            </asp:DropDownList> 
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label5" runat="server" Text="Correo electrónico:" Width="500px"></asp:Label> 
                        </td>
                         <td>
                            <asp:TextBox ID="txtCorreo" runat="server" Width="500px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label6" runat="server" Text="Número telefónico (whatsapp):" Width="500px"></asp:Label>
                        </td>
                         <td>
                            <asp:TextBox ID="txtTelefono" runat="server" Width="500px"></asp:TextBox>
                        </td>
                    </tr>
                </table>

                </article>
                <br />
                <br />
                <article style="text-align:center">
                    <asp:Button ID="BtnGenerar" runat="server" Text="Generar carta provisional" OnClick="BtnGenerar_Click" />
                </article>
            </section>


        </div>
    </form>
</body>
</html>
