﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewEvents.aspx.cs" Inherits="guionlineticketing.NewEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>New Events</h1>
    After Designing database and adding events we will show some New events here.
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1"  >
    <Columns>
        
        <asp:BoundField HeaderText="id" DataField="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField HeaderText="eventname" DataField="eventname" SortExpression="eventname" />
        <asp:BoundField HeaderText="eventcategory" DataField="eventcategory" SortExpression="eventcategory" />
        <asp:BoundField HeaderText="auditoriumid" DataField="auditoriumid" SortExpression="auditoriumid" />
        <asp:TemplateField HeaderText="view event">
             <ItemTemplate>
                <asp:Button ID="btnview" runat="server" text="view" OnClick="btnview_Click" CommandArgument='<%#Eval("id")%>' />
             </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineticketingConnectionString %>" SelectCommand="SELECT * FROM [eventtable]"></asp:SqlDataSource>
</asp:Content>
