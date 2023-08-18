<%@ Page Language="C#" MasterPageFile="~/Sources/Pages/MP.Master" AutoEventWireup="true" CodeBehind="FrmTodosLosUsuarios.aspx.cs" Inherits="ASP_SP.Sources.Pages.FrmBuscarUsuarios" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Mi perfil
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
   
        <br />
        <div class="mx-auto" style="width:300px">
            <h2>Listado de registros</h2>
        </div>
        <br />
       
        <br />
        <div class="container row">
            <div class="table small">
                <asp:GridView runat="server" ID="gvusuarios" class="table table-borderless table-hover">
                   
                </asp:GridView>
            </div>
        </div>
   
</asp:Content>

