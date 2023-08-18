<%@ Page Language="C#" MasterPageFile="~/Sources/Pages/MP.Master" AutoEventWireup="true" CodeBehind="FrmBuscarUsuarios.aspx.cs" Inherits="ASP_SP.Sources.Pages.FrmBuscarUsuarios1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Mi perfil
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <fieldset class="row">
            <div class="container text-black-50 row">
                <div class="col-6 row justify-content-center">
                    <div class="align-items-center col-auto">
                        <fieldset>
                            <div class="row">
                                <asp:Image runat="server" ID="image" CssClass="form-control img-thumbnail" Height="300" />
                           </div>
                            <br />
                           
                           
                        </fieldset>
                    </div>
                    <div class="row">
                        <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    </div>
                </div>
                <div class="col-6 row justify-content-center">
                    <div class="align-items-center col-auto">
                        <fieldset>
                            <legend>
                                <i class="fa fa-database">Datos personales</i>
                            </legend>
                            <asp:Table runat="server" Enabled="false">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Nombres:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbNombres" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Apellidos:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbApellidos" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Fecha de nacimiento:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbFecha" />
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </fieldset>
                        <br />                        
                    </div>
                </div>
            </div>
        </fieldset>
        <br />
        <br />
        
    </div>
   
</asp:Content>

