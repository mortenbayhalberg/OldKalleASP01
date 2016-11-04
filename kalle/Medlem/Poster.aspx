<%@ Page Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Medlem.Poster" Title="Untitled Page" Codebehind="Poster.aspx.cs" %>

<asp:Content ContentPlaceHolderID="SideIndhold" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
        SelectCommand="SELECT * FROM [V_medlem_poster] ORDER BY [Stam_Navn]"></asp:SqlDataSource>
    <asp:GridView ID="GridView" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" Caption="Medlemsposter" Font-Bold="True" 
        AutoGenerateColumns="False" CssClass="Resultat-Tabel">
        <FooterStyle BackColor="#CCCC99" />
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="Stam_Navn" HeaderText="Navn" 
                SortExpression="Stam_Navn">
            <ItemStyle CssClass="Resultat-Navn" />
            </asp:BoundField>
<asp:BoundField DataField="Stam_init" HeaderText="Init" SortExpression="Stam_init">
            <ItemStyle CssClass="Resultat-Txt" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="Stam_Formand" HeaderText="Formand" 
                SortExpression="Stam_Formand">
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-CheckBox" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="Stam_Nastformand" HeaderText="Næstformand" 
                SortExpression="Stam_Nastformand">
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-CheckBox" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="Stam_Kasser" HeaderText="Kasser" 
                SortExpression="Stam_Kasser">
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-CheckBox" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="Stam_Revisor" HeaderText="Revisor" 
                SortExpression="Stam_Revisor">
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-CheckBox" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="Stam_Skema_ansvarlig" HeaderText="Skema ansvarlig" 
                SortExpression="Stam_Skema_ansvarlig">
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-CheckBox" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="Stam_Web" HeaderText="Web ansvarlig" 
                SortExpression="Stam_Web">
            <ItemStyle HorizontalAlign="Center" CssClass="Resultat-CheckBox" />
            </asp:CheckBoxField>
            <asp:BoundField DataField="Stam_E_Mail" HeaderText="E-Mail" 
                SortExpression="Stam_E_Mail" >
            <ItemStyle CssClass="Resultat-Txt" />
            </asp:BoundField>
        </Columns>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </asp:Content>

