<%@ Page Title="" Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Resultat.Spil_pr_dag" Codebehind="Spil-pr-dag.aspx.cs" %>

<asp:Content runat="server" contentplaceholderid="SideIndhold">
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="chaDato" 
            DataValueField="Dato_valg" CssClass="Resultat-DropDown">
        </asp:DropDownList>
        
        <br />
        <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" Caption="Resultat for en spille dag" Font-Bold="True" 
        AutoGenerateColumns="False" PageSize="15" ShowFooter="True" 
            CssClass="Resultat-Tabel">
        <FooterStyle BackColor="#CCCC99" />
        <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:BoundField DataField="Stam_Navn" HeaderText="Navn" 
                    SortExpression="Stam_Navn" >
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle CssClass="Resultat-Navn" />
                </asp:BoundField>
                <asp:BoundField DataField="Placering" HeaderText="Placering" 
                    SortExpression="Placering" >
                    <ItemStyle CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Gennemsnit" HeaderText="Gennemsnit" 
                    SortExpression="Gennemsnit" DataFormatString="{0:F2}" >
                    <ItemStyle CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Spil1" HeaderText="Spil1" 
                    SortExpression="Spil1" >
                    <ItemStyle CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Spil2" HeaderText="Spil2" 
                    SortExpression="Spil2" >
                    <ItemStyle CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Spil3" HeaderText="Spil3" 
                    SortExpression="Spil3" >
                    <ItemStyle CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Spil4" HeaderText="Spil4" 
                    SortExpression="Spil4" >
                    <ItemStyle CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Spil5" HeaderText="Spil5" 
                    SortExpression="Spil5" >
                    <ItemStyle CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:CheckBoxField DataField="Kamel_passer" HeaderText="Kamel_passer" 
                    SortExpression="Kamel_passer">
                <ControlStyle Font-Bold="True" />
                <ItemStyle CssClass="Resultat-CheckBox" Font-Bold="False" />
                </asp:CheckBoxField>
            </Columns>
             <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        </p>
    <p>    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
            
            SelectCommand="SELECT [Dato_valg], [chaDato] FROM [V_resultat_drop_down_dato] ORDER BY [Dato_valg] DESC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
            
            SelectCommand="P_resultat_spil_pr_gang" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="IndtastSpilledato" 
                    PropertyName="SelectedValue" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>


