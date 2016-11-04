<%@ Page Title="" Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Resultat.Kamel_Passer" Codebehind="Kamel-passer.aspx.cs" %>

<asp:Content ContentPlaceHolderID="SideIndhold" Runat="Server">
   
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="chaSesson" 
            DataValueField="Sesson_valg" CssClass="Resultat-DropDown">
        </asp:DropDownList>
        
        <br />
        
   <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" Caption="Kamel passer" Font-Bold="True" 
        AutoGenerateColumns="False" PageSize="15" ShowFooter="True" CssClass="Resultat-Tabel">
        <FooterStyle BackColor="#CCCC99" />
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="Navn" HeaderText="Navn" SortExpression="Navn" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle CssClass="Resultat-Navn" />
            </asp:BoundField>
            <asp:BoundField DataField="Sæson" HeaderText="Sæson" SortExpression="Sæson">
            <ItemStyle Font-Bold="False" CssClass="Resultat-Num"/>
            </asp:BoundField>
            <asp:BoundField DataField="Antal gange" HeaderText="Antal gange" 
                SortExpression="Antal gange">
            <ItemStyle Font-Bold="False" CssClass="Resultat-Num"/>
            </asp:BoundField>
        </Columns>
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
            SelectCommand="SELECT [Sesson_valg], [chaSesson] FROM [V_resultat_drop_down_sesson] ORDER BY [Sesson_valg] DESC"></asp:SqlDataSource>
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
            SelectCommand="P_resultat_Kalle_Kamel_passer" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="Sesson" 
                    PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
        </asp:SqlDataSource> 
    </p>
</asp:Content>

