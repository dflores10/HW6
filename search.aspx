<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Search for a Team:</h2>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_TeamsWebSite %>" SelectCommand="SELECT * FROM [TeamInfo]"></asp:SqlDataSource>
<br />

<% If Not IsPostBack Then%>
    Enter a Team Name or Head Coach:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbTeam" runat="server"></asp:TextBox>
    <br />
    <br />

<%Else%>
   Enter another Team Name or Head Coach:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbTeam2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:GridView 
        ID="GridView1" 
        runat="server" 
        AllowSorting="True" 
        AutoGenerateColumns="False" 
        DataKeyNames="TeamId" 
        DataSourceID="SqlDataSource1" 
        Width="874px"
        Gridlines="None"
        CssClass="cssgridview2"
        AlternatingRowStyle-CssClass="alt"
        PagerStyle-CssClass="pgr">

        <Columns>
            <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
            <asp:BoundField DataField="HeadCoach" HeaderText="Head Coach" SortExpression="HeadCoach" />
            <asp:BoundField DataField="Conference" HeaderText="Conference" SortExpression="Conference" />
            <asp:BoundField DataField="Division" HeaderText="Division" SortExpression="Division" />
            <asp:BoundField DataField="Wins" HeaderText="Wins" SortExpression="Wins" />
            <asp:BoundField DataField="Losses" HeaderText="Losses" SortExpression="Losses" />
            <asp:BoundField DataField="Percent" HeaderText="W-L Percent" SortExpression="Percent" />
        </Columns>
    </asp:GridView>
<%End If%>

<br />
</asp:Content>

