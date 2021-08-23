<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="Images/banner0.png" />
            </li>
            <li>
                <img src="Images/banner1.png" />
            </li>
            <li>
                <img src="Images/banner2.png" />
            </li>
            <li>
                <img src="Images/banner3.png" />
            </li>
        </ul>
    </div>
    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
    </script>

    <!-- COLUNAS -->
    <div class="row margin-top-60">
        <div class="col-6">
            <div class="margin-right-20">
                Vivamus tempus pellentesque nibh, quis porta odio commodo eget. Curabitur at gravida ligula, in fringilla dui. Donec ac lacus eleifend, ultrices sapien sit amet, pulvinar metus. Praesent laoreet, nunc at imperdiet commodo, nunc metus sollicitudin est, sed iaculis nunc justo id enim. Nullam convallis ac mi non vulputate. Ut ultrices urna non erat porta, eu faucibus ipsum molestie.
            </div>
        </div>

        <div class="col-3">
            <div class="margin-right-20">
                <img style="width: 100%;" src="Images/si1.png" />
                <br />
                <h3>Tecnologia da Informação</h3>
                <br />
                <br />
                Curabitur at gravida ligula, in fringilla dui. Donec ac lacus eleifend, ultrices sapien sit amet, pulvinar metus
            </div>
        </div>

        <div style="padding-left: 20px;" class="col-3">
            <div class="margin-right-20">
                <img style="width: 100%;" src="Images/si4.jpg" />
                <br />
                <h3>Analise de Sistemas</h3>
                <br />
                <br />
                Curabitur at gravida ligula, in fringilla dui. Donec ac lacus eleifend, ultrices sapien sit amet, pulvinar metus
            </div>
        </div>
    </div>
</asp:Content>
