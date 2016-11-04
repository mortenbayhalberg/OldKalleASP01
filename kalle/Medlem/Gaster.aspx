<%@ Page Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Medlem.Gaster" Title="Untitled Page" Codebehind="Gaster.aspx.cs" %>


<asp:Content ContentPlaceHolderID="SideIndhold" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
        SelectCommand="SELECT * FROM [V_medlem_gaster] ORDER BY [Stam_Navn]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" Caption="Gæster" Font-Bold="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="20" 
        CssClass="Resultat-Tabel">
        <FooterStyle BackColor="#CCCC99" />
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="Stam_Navn" HeaderText="Navn" 
                SortExpression="Stam_Navn">
            <ItemStyle CssClass="Resultat-Navn" />
            </asp:BoundField>
            <asp:BoundField DataField="Stam_E_Mail" 
                HeaderText="E-Mail">
            <ItemStyle CssClass="Resultat-Txt" />
            </asp:BoundField>
        </Columns>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </asp:Content>

