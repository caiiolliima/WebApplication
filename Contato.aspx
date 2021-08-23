<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="WebApplication2.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row margin-top-60">
        <!-- FORMULÁRIO DE ENTRADA -->
        <div class="col-6">
            <div class="box padding-20 margin-right-20">

                <!--FAZER A VALIDAÇÃO DAS ENTRADAS NESTE FORMULÁRIO: MaxLenght, TextMode, Row-->

                <h2>Envie um E-mail</h2>
                <br />
                <asp:Label ID="Erro" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="16px"></asp:Label>
                <label>Seu Nome</label>
                <asp:TextBox ID="NomeUsuario" runat="server" MaxLength="100"></asp:TextBox>
                <label>E-mail</label>
                <asp:TextBox ID="EmailUsuario" TextMode="Email" MaxLength="255" runat="server"></asp:TextBox>
                <label>Mensagem</label>
                <asp:TextBox ID="Mensagem" MaxLength="255" TextMode="Multiline" Rows="6" runat="server"></asp:TextBox>
                <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
            </div>
        </div>

        <!-- MAPA DE LOCALIZAÇÃO -->
        <div class="col-6">
            <div class="box">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14718.767977128833!2d-47.3501613!3d-22.7396868!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xffb368bd91ea12ae!2sFatec%20Americana%20-%20Faculdade%20de%20Tecnologia%20de%20Americana!5e0!3m2!1spt-BR!2sbr!4v1616014751787!5m2!1spt-BR!2sbr" width="100%" height="100%" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
</asp:Content>

