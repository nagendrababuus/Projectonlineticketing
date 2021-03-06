﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="guionlineticketing.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 238px;
        }
        .auto-style3 {
            height: 27px;
            width: 238px;
        }
        .auto-style6 {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Search Events</h1>    
    <table style="width:100%;">
        <tr>
            <td class="auto-style6" >
                <asp:Label ID="lbl_eventname" runat="server" Text="Event Name "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txteventname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" >
                <asp:Label ID="lbl_eventdate" runat="server" Text="Event Date"></asp:Label>
            </td>
            <td >
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" >
                <asp:Label ID="lbl_eventlocation" runat="server" Text="Event Location"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" >
                <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="Search" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
        <%--<asp:CustomValidator ID="cvtextboxes" runat="server" ErrorMessage="Enter any input" ValidationGroup="search" ClientValidationFunction="Validate"
         ValidateEmptyText="true"></asp:CustomValidator>
            </tr>

<script language="JavaScript">
  function Validate(sender, args) {
    var txt1 = document.getElementById("<%= txteventname.ClientID %>");
    var txt2 = document.getElementById("<%= txtlocation.ClientID%>");
      var txt3 = document.getElementById("<%= Calendar1.ClientID%>");
      args.IsValid = (txt1.value != "") || (txt2.value != "") || (txt3.value != Calender1.MinValue.Date);
  }
</script>--%>
    </table>
    
    
    
    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
    
    
    
    <br />
    
    
    
<asp:GridView ID="grdevents" runat="server" AutoGenerateColumns="False" DataKeyNames="id"   >
    <Columns>
        
        <asp:BoundField HeaderText="id" DataField="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="false" />
        <asp:BoundField HeaderText="Event Name" DataField="eventname" SortExpression="eventname" />
        <asp:BoundField HeaderText="Event Category" DataField="eventcategory" SortExpression="eventcategory" />
        <asp:BoundField HeaderText="Auditorium Name" DataField="auditoriumname" SortExpression="auditoriumname" />
        <asp:BoundField HeaderText="Event Date" DataField="eventdate" SortExpression="eventdate" />
        <asp:BoundField HeaderText="Fare " DataField="fare" SortExpression="fare" />
        <asp:BoundField HeaderText="Seats Available" DataField="noofseats" SortExpression="noofseats" />
        <asp:TemplateField HeaderText="view event">
             <ItemTemplate>
                <asp:Button ID="btnview" runat="server" text="view" OnClick="btnview_Click" CommandArgument='<%#Eval("id")%>' />
             </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
    <br />
</asp:Content>
