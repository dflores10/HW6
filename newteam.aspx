﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newteam.aspx.vb" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Add a New Team:</h2>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_TeamsWebSite %>" DeleteCommand="DELETE FROM [TeamInfo] WHERE [TeamId] = @TeamId" InsertCommand="INSERT INTO [TeamInfo] ([TeamName], [HeadCoach], [Conference], [Division], [Wins], [Losses], [Percent]) VALUES (@TeamName, @HeadCoach, @Conference, @Division, @Wins, @Losses, @Percent)" SelectCommand="SELECT * FROM [TeamInfo] WHERE ([TeamId] = @TeamId)" UpdateCommand="UPDATE [TeamInfo] SET [TeamName] = @TeamName, [HeadCoach] = @HeadCoach, [Conference] = @Conference, [Division] = @Division, [Wins] = @Wins, [Losses] = @Losses, [Percent] = @Percent WHERE [TeamId] = @TeamId">
        <DeleteParameters>
            <asp:Parameter Name="TeamId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TeamName" Type="String" />
            <asp:Parameter Name="HeadCoach" Type="String" />
            <asp:Parameter Name="Conference" Type="String" />
            <asp:Parameter Name="Division" Type="String" />
            <asp:Parameter Name="Wins" Type="Int16" />
            <asp:Parameter Name="Losses" Type="Int16" />
            <asp:Parameter Name="Percent" Type="Double" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="TeamId" QueryStringField="TeamId" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TeamName" Type="String" />
            <asp:Parameter Name="HeadCoach" Type="String" />
            <asp:Parameter Name="Conference" Type="String" />
            <asp:Parameter Name="Division" Type="String" />
            <asp:Parameter Name="Wins" Type="Int16" />
            <asp:Parameter Name="Losses" Type="Int16" />
            <asp:Parameter Name="Percent" Type="Double" />
            <asp:Parameter Name="TeamId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView 
        ID="DetailsView1" 
        runat="server" 
        AutoGenerateRows="False" 
        DataKeyNames="TeamId" 
        DataSourceID="SqlDataSource1" 
        Height="50px" 
        Width="344px" 
        DefaultMode="Insert"
        HeaderText="Team Details"
        CssClass="cssdetailsview"
        HeaderStyle-CssClass="header"
        FieldHeaderStyle-CssClass="fieldheader">

<AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>

        <Fields>
            <asp:BoundField DataField="TeamName" HeaderText="Team Name:" SortExpression="TeamName" />
            <asp:BoundField DataField="HeadCoach" HeaderText="Head Coach:" SortExpression="HeadCoach" />
            <asp:BoundField DataField="Conference" HeaderText="Conference:" SortExpression="Conference" />
            <asp:BoundField DataField="Division" HeaderText="Division:" SortExpression="Division" />
            <asp:BoundField DataField="Wins" HeaderText="Wins:" SortExpression="Wins" />
            <asp:BoundField DataField="Losses" HeaderText="Losses:" SortExpression="Losses" />
            <asp:BoundField DataField="Percent" HeaderText="W-L Percentage:" SortExpression="Percent" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>
    </asp:DetailsView>
    <br />
</asp:Content>

