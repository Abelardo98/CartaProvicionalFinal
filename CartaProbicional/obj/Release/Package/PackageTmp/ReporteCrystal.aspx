<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteCrystal.aspx.cs" Inherits="CartaProbicional.ReporteCrystal" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1449px;
        }
    </style>
</head>
<body>
        <header>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/encabezadoFinal.png" Height="146px" Width="1441px" />
        </header>
        <br />
        <br />
        <header style="text-align:center">
                <h1>CARTA PROVISIONAL RESIDENCIAL PROFESIONAL </h1>
        </header>
    <br />
    
    <br />
    <br />
    <form id="form1" runat="server" class="auto-style1">
       <article style="padding-left:150px">
        <asp:TextBox ID="txtNumeroControl" runat="server" Enabled="False"></asp:TextBox>
           <br />
           <br />
       </article>
        <br />
        <br />
        <div style="padding-left:150px">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" EnableParameterPrompt="False" HasToggleGroupTreeButton="False" HasToggleParameterPanelButton="False" />
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="CrystalReport1.rpt">
                </Report>
            </CR:CrystalReportSource>
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False">
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
