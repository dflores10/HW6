<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_TeamsWebSite %>" SelectCommand="SELECT * FROM [TeamInfo]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TeamId" DataSourceID="SqlDataSource1" Width="649px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
            <asp:BoundField DataField="HeadCoach" HeaderText="Head Coach" SortExpression="HeadCoach" />
            <asp:BoundField DataField="Conference" HeaderText="Conference" SortExpression="Conference" />
            <asp:BoundField DataField="Division" HeaderText="Division" SortExpression="Division" />
            <asp:HyperLinkField DataNavigateUrlFields="TeamId" DataNavigateUrlFormatString="teamdetails.aspx?TeamId={0}" Text="View Standings" />
        </Columns>
    </asp:GridView>

</asp:Content>

