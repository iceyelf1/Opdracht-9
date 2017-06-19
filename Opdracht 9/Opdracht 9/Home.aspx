<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Opdracht_9.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welkom</h1>
    Welkom bij mijn website over films.<br />
    <br />
    Op deze site staat informatie over &nbsp;
    <asp:Literal ID="litAantal" runat="server" />
    &nbsp;films.
</asp:Content>
