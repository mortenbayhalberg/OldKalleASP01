<%@ Page Title="" Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Resultat.Antal_spilledage" Codebehind="Antal-spilledage.aspx.cs" %>

<asp:Content ContentPlaceHolderID="SideIndhold" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
        
        
    SelectCommand="SELECT [Antal Kampdage] AS Antal_Kampdage, [Stam_Navn] FROM [V_resultat_Antal_Kampdage_Alle] ORDER BY [Antal Kampdage] DESC">
    </asp:SqlDataSource>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" Caption="Antal spillede mandage" Font-Bold="True" 
        AutoGenerateColumns="False" PageSize="15" ShowFooter="True" CssClass="Resultat-Tabel">
        <FooterStyle BackColor="#CCCC99" />
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="Stam_Navn" HeaderText="Navn" 
                SortExpression="Stam_Navn">
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle CssClass="Resultat-Navn" />
            </asp:BoundField>
            <asp:BoundField DataField="Antal_Kampdage" HeaderText="Antal" 
                SortExpression="Antal_Kampdage" >
                <ItemStyle Font-Bold="False" CssClass="Resultat-Num"/>
            </asp:BoundField>
        </Columns>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</asp:Content>

