<%@ Page Title="" Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Resultat.Max_score.Max_score_alle" Codebehind="Max-score-alle.aspx.cs" %>

<asp:Content runat="server" contentplaceholderid="SideIndhold">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" 
            
            Caption="Max gennemsnit for alle (Sortér ved at trykke på søjle overskrift)" Font-Bold="True" 
        AutoGenerateColumns="False" PageSize="15" ShowFooter="True" 
            AllowSorting="True" CssClass="Resultat-Tabel">
        <FooterStyle BackColor="#CCCC99" />
        <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:BoundField DataField="Navn" HeaderText="Navn" 
                    SortExpression="Navn" >
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle CssClass="Resultat-Navn" />
                </asp:BoundField>
                <asp:BoundField DataField="Max gennemsnit" HeaderText="Gennemsnit" 
                    SortExpression="Max gennemsnit" DataFormatString="{0:F2}" >
                    <ItemStyle Font-Bold="False" CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max Spil1" HeaderText="Spil1" 
                    SortExpression="Max Spil1" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max Spil2" HeaderText="Spil2" 
                    SortExpression="Max Spil2" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max Spil3" HeaderText="Spil3" 
                    SortExpression="Max Spil3" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max Spil4" HeaderText="Spil4" 
                    SortExpression="Max Spil4" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max Spil5" HeaderText="Spil5" 
                    SortExpression="Max Spil5" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
            </Columns>
             <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
            
            
            SelectCommand="SELECT * FROM [V_resultat_max_alle] ORDER BY [Max gennemsnit] DESC">
        </asp:SqlDataSource>
    </p>
</asp:Content>


