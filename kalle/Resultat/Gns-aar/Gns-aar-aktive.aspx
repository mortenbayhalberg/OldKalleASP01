﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Kalle.master" AutoEventWireup="true" Inherits="kalle.Resultat.Gns_aar.Gns_aar_aktive" Codebehind="Gns-aar-aktive.aspx.cs" %>

<asp:Content runat="server" contentplaceholderid="SideIndhold">
     
       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="chaSesson" 
            DataValueField="Sesson_valg" CssClass="Resultat-DropDown" Width="20%">
        </asp:DropDownList>
    <br />     
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        HorizontalAlign="Center" Caption="Sæson gennemsnit for aktive" Font-Bold="True" 
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
                <asp:BoundField DataField="GNS_AlleSpil" DataFormatString="{0:F2}" 
                    HeaderText="Gennemsnit" SortExpression="GNS_AlleSpil" >
                <ItemStyle Font-Bold="False" HorizontalAlign="Center" CssClass="Resultat-Num" />
                </asp:BoundField>
                <asp:BoundField DataField="GNS_Spil1" HeaderText="Spil1" ReadOnly="True" 
                    SortExpression="GNS_Spil1" DataFormatString="{0:F2}" >
                <ItemStyle Font-Bold="False" HorizontalAlign="Center" CssClass="Resultat-num" />
                </asp:BoundField>
                <asp:BoundField DataField="GNS_Spil2" HeaderText="Spil2" 
                    SortExpression="GNS_Spil2" DataFormatString="{0:F2}" >
                <ItemStyle Font-Bold="False" HorizontalAlign="Center" CssClass="Resultat-Num" />
                </asp:BoundField>
                <asp:BoundField DataField="GNS_Spil3" HeaderText="Spil3" 
                    SortExpression="GNS_Spil3" DataFormatString="{0:F2}" >
                <ItemStyle Font-Bold="False" HorizontalAlign="Center" CssClass="Resultat-Num" />
                </asp:BoundField>
                <asp:BoundField DataField="GNS_Spil4" HeaderText="Spil4" 
                    SortExpression="GNS_Spil4" DataFormatString="{0:F2}" >
                <ItemStyle Font-Bold="False" HorizontalAlign="Center" CssClass="Resultat-Num" />
                </asp:BoundField>
                <asp:BoundField DataField="GNS_Spil5" HeaderText="Spil5" 
                    SortExpression="GNS_Spil5" DataFormatString="{0:F2}" >
                <ItemStyle Font-Bold="False" HorizontalAlign="Center" CssClass="Resultat-Num" />
                </asp:BoundField>
            </Columns>
             <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="False" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="False" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView>

       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
            SelectCommand="SELECT [Sesson_valg], [chaSesson] FROM [V_resultat_drop_down_sesson] ORDER BY [Sesson_valg] DESC"></asp:SqlDataSource>
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KallekamConnectionString %>" 
            SelectCommand="P_resultat_gns_spil_pr_aar_aktive" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="Sesson" 
                    PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>


