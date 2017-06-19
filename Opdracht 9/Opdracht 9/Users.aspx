<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Opdracht_9.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Gebruikers</h2><br /><br />
    <asp:ListBox ID="lbUsers" runat="server"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:introaspdotnetConnectionString1 %>" DeleteCommand="DELETE FROM [Users] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Users] ([Voornaam], [Tussenvoegsel], [Achternaam], [Username], [Password]) VALUES (@Voornaam, @Tussenvoegsel, @Achternaam, @Username, @Password)" SelectCommand="SELECT * FROM [Users] WHERE (([Voornaam] = @Voornaam) AND ([Tussenvoegsel] = @Tussenvoegsel) AND ([Achternaam] = @Achternaam) AND ([Username] = @Username) AND ([Password] = @Password))" UpdateCommand="UPDATE [Users] SET [Voornaam] = @Voornaam, [Tussenvoegsel] = @Tussenvoegsel, [Achternaam] = @Achternaam, [Password] = @Password WHERE [Username] = @Username">
        <DeleteParameters>
            <asp:Parameter Name="Username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Voornaam" Type="String" />
            <asp:Parameter Name="Tussenvoegsel" Type="String" />
            <asp:Parameter Name="Achternaam" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtVoornaam" Name="Voornaam" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtTussenvoegsel" Name="Tussenvoegsel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtAchternaam" Name="Achternaam" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtUsername" Name="Username" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtPassword" Name="Password" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Voornaam" Type="String" />
            <asp:Parameter Name="Tussenvoegsel" Type="String" />
            <asp:Parameter Name="Achternaam" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:TextBox ID="txtEdit" runat="server" Visible="False"></asp:TextBox>
&nbsp;Username die u wilt aanpassen/verwijderen<br />
    <br />
    <br />
    <asp:TextBox ID="txtVoornaam" runat="server" Visible="False"></asp:TextBox>
    &nbsp;Voornaam<br />
    <asp:TextBox ID="txtTussenvoegsel" runat="server" Visible="False"></asp:TextBox>
    &nbsp;Tussenvoegsel<br />
    <asp:TextBox ID="txtAchternaam" runat="server" Visible="False"></asp:TextBox>
    &nbsp;Achternaam<br />
    <asp:TextBox ID="txtUsername" runat="server" Visible="False"></asp:TextBox>
    &nbsp;Username<br />
    <asp:TextBox ID="txtPassword" runat="server" Visible="False"></asp:TextBox>
    &nbsp;Password<br />
    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Visible="False" />
    <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit" Visible="False" />
    <asp:Button ID="btnDel" runat="server" OnClick="btnDel_Click" Text="Delete" Visible="False" />
    <br />
    <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" />
    <br />


</asp:Content>
