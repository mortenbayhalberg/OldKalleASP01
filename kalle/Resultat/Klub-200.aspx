<%@ Page Title="" Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Resultat.Klub_200" Codebehind="Klub-200.aspx.cs" %>

<asp:Content ContentPlaceHolderID="SideIndhold" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
        
        SelectCommand="SELECT [Expr_Navn], [MaxAll] FROM [V_resultat_klub_200] ORDER BY [MaxAll] DESC">
    </asp:SqlDataSource>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" Caption="Klub 200" Font-Bold="True" 
        AutoGenerateColumns="False" PageSize="15" ShowFooter="True" CssClass="Resultat-Tabel">
        <FooterStyle BackColor="#CCCC99" />
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="Expr_Navn" HeaderText="Navn" 
                SortExpression="Expr_Navn" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle CssClass="Resultat-Navn" />
            </asp:BoundField>
            <asp:BoundField DataField="MaxAll" HeaderText="Max score i et spil" 
                SortExpression="MaxAll" ReadOnly="True">
                <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                CssClass="Resultat-Num"/>
            </asp:BoundField>
        </Columns>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</asp:Content>

