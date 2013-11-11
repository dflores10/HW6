<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="about.aspx.vb" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2> About the NBA Teams Website: </h2>

    <p> This website includes information about all 30 NBA teams. Specifically, we keep track of every team's 
        name, head coach, conference, division, number of wins, number of losses and win-loss percentage 
        for the 2013-2014 season. Our main goal is to keep users up to date with the current standings 
        of each team throughout the season.
    </p>
    <br />
    <asp:Image class="teamlogos_img" ID="Image1" runat="server" ImageUrl="~/images/teamlogos.jpg" />
    <br />
    <br />
</asp:Content>

