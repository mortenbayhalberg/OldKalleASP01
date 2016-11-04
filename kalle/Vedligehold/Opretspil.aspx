<%@ Page Title="" Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Vedligehold.Opretspil" Codebehind="Opretspil.aspx.cs" %>

<asp:Content ContentPlaceHolderID="SideIndhold" Runat="Server">
     
    <!-- Dato -->
    <asp:Label class="udv-label" runat="server" Text=" Dato:"></asp:Label>
    <asp:TextBox class="udv-data" ID="TextBoxDato"
        runat="server" AutoPostBack="True" ontextchanged="TextBoxDato_TextChanged"></asp:TextBox>
    <br /><br />

    <!-- Valg af spiller -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=localhost;Initial Catalog=Kallekamel;Persist Security Info=True;User ID=sa;Password=10Xblank" 
        ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT * FROM [V_vedligehold_drop_down_navn] ORDER BY [Stam_Navn]">
    </asp:SqlDataSource>
    
    <asp:Label class="udv-label" runat="server" Text="Spiller:"></asp:Label>

    <asp:DropDownList class="udv-data" ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="Stam_Navn" 
        DataValueField="Stam_Auto1" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
     <asp:Label class="udv-label" ID="Label_valgt" runat="server" Text="Spil1:"></asp:Label>
    <!-- Spil 1 -->
   
    <asp:TextBox class="udv-data" ID="TextBoxSpil1" runat="server" AutoPostBack="True" 
        ontextchanged="TextBoxSpil1_TextChanged"></asp:TextBox>
    <br />

    <!-- Spil 2 -->
    <asp:Label class="udv-label" runat="server" Text="Spil2:"></asp:Label>
    <asp:TextBox class="udv-data" ID="TextBoxSpil2" runat="server" AutoPostBack="True" 
        ontextchanged="TextBoxSpil2_TextChanged"></asp:TextBox>
    <br />

    <!-- Spil 3 -->
    <asp:Label class="udv-label" runat="server" Text="Spil3:"></asp:Label>
    <asp:TextBox class="udv-data" ID="TextBoxSpil3" runat="server" AutoPostBack="True" 
        ontextchanged="TextBoxSpil3_TextChanged"></asp:TextBox>
    <br />

    <!-- Spil 4 -->
    <asp:Label class="udv-label" runat="server" Text="Spil4:"></asp:Label>
    <asp:TextBox class="udv-data" ID="TextBoxSpil4" runat="server" AutoPostBack="True"
        ontextchanged="TextBoxSpil4_TextChanged"></asp:TextBox>
    <br />

    <!-- Spil 5 -->
    <asp:Label class="udv-label" runat="server" Text="Spil5:"></asp:Label>
    <asp:TextBox class="udv-data" ID="TextBoxSpil5" runat="server" AutoPostBack="True"
        ontextchanged="TextBoxSpil5_TextChanged"></asp:TextBox>
    <br />

    <!-- Gennemsnit -->
    <asp:Label class="udv-label" runat="server" Text="Gennemsnit:"></asp:Label>
    <asp:TextBox class="udv-data" ID="LabelGennemsnit" runat="server"></asp:TextBox>
    <br /><br />

    
    <!-- Placering -->
    <asp:Label class="udv-label" runat="server" Text="Placering:"></asp:Label>
    <asp:TextBox class="udv-data" ID="TextBoxPlacering" runat="server" 
        ontextchanged="TextBoxPlacering_TextChanged"></asp:TextBox>
    <br />

    <!-- Kamelpasser -->
    <asp:Label class="udv-label" runat="server" Text="Kamelpasser:"></asp:Label>
    <asp:CheckBox class="udv-data" ID="CheckBoxKalle" runat="server" OnCheckedChanged="CheckBoxKalle_OnCheckedChanged" AutoPostBack="True" />
       <br /> <br />

    <!-- Opret spil button -->
    <asp:Button class="udv-ok" ID="Opret" runat="server" Text="Opret" onclick="Opret_Click" />
   
</asp:Content>
