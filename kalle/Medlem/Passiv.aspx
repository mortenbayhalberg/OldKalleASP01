<%@ Page Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Medlem.Passiv" Title="Untitled Page" Codebehind="Passiv.aspx.cs" %>


<asp:Content ContentPlaceHolderID="SideIndhold" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
        SelectCommand="SELECT * FROM [V_medlem_passiv] ORDER BY [Stam_Navn]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" Caption="Passive medlemmer &amp; Æresmedlemmer" Font-Bold="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        CssClass="Resultat-Tabel">
        <FooterStyle BackColor="#CCCC99" />
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="Stam_Navn" HeaderText="Navn" 
                SortExpression="Navn">
            <ItemStyle CssClass="Resultat-Navn" />
            </asp:BoundField>
            <asp:BoundField DataField="Stam_init" HeaderText="Init" 
                SortExpression="init" >
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-Txt" />
            </asp:BoundField>
            <asp:BoundField DataField="Stam_Opt_dato" DataFormatString="{0:dd-MMM-yyyy}" 
                HeaderText="Opt. dato" SortExpression="Stam_Opt_dato">
            <ItemStyle CssClass="Resultat-Date" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="Stam_Passiv" HeaderText="Passiv" 
                SortExpression="Stam_Passiv" >
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-CheckBox" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="Stam_Aresmedlem" HeaderText="Æresmedlem" >
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-CheckBox" />
            </asp:CheckBoxField>
            <asp:BoundField DataField="Stam_E_Mail" HeaderText="E-Mail" 
                SortExpression="Stam_E-Mail" >
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-Txt" />
            </asp:BoundField>
        </Columns>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </asp:Content>

