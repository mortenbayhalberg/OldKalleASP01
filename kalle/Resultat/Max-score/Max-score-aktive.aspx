<%@ Page Title="" Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Resultat.Max_score.Max_score_aktive" Codebehind="Max-score-aktive.aspx.cs" %>

<asp:Content runat="server" contentplaceholderid="SideIndhold">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" 
            
            Caption="Max gennemsnit for aktive (Sortér ved at trykke på søjle overskrift)" Font-Bold="True" 
        AutoGenerateColumns="False" PageSize="15" ShowFooter="True" 
            AllowSorting="True" CssClass="Resultat-Tabel">
        <FooterStyle BackColor="#CCCC99" />
        <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:BoundField DataField="Navn" HeaderText="Navn" 
                    SortExpression="Navn" >
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle Font-Bold="True" CssClass="Resultat-Navn" />
                </asp:BoundField>
                <asp:BoundField DataField="Max_gennemsnit" HeaderText="Gennemsnit" 
                    SortExpression="Max_gennemsnit" DataFormatString="{0:F2}" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max_Spil1" HeaderText="Spil1" 
                    SortExpression="Max_Spil1" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max_Spil2" HeaderText="Spil2" 
                    SortExpression="Max_Spil2" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max_Spil3" HeaderText="Spil3" 
                    SortExpression="Max_Spil3" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max_Spil4" HeaderText="Spil4" 
                    SortExpression="Max_Spil4" >
                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" 
                    CssClass="Resultat-Num"/>
                </asp:BoundField>
                <asp:BoundField DataField="Max_Spil5" HeaderText="Spil5" 
                    SortExpression="Max_Spil5" >
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
            
            
            
            SelectCommand="SELECT [Navn], [Max gennemsnit] AS Max_gennemsnit, [Max Spil1] AS Max_Spil1, [Max Spil3] AS Max_Spil3, [Max Spil2] AS Max_Spil2, [Max Spil4] AS Max_Spil4, [Max Spil5] AS Max_Spil5 FROM [V_resultat_max_aktive] ORDER BY [Max gennemsnit] DESC">
        </asp:SqlDataSource>
    </p>
</asp:Content>


