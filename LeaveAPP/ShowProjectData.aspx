<%@ Page Title="" Language="C#" MasterPageFile="~/HRData.Master" AutoEventWireup="true" CodeBehind="ShowProjectData.aspx.cs" Inherits="LeaveAPP.ShowProjectData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .background2
        {
            position:relative;
            top: 87px;
            left:100px;
            background-color:azure;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="background2" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" Width="1000px">
    <Columns>
        <asp:BoundField DataField="ProjectID" HeaderText="ProjectID" InsertVisible="False" ReadOnly="True" SortExpression="ProjectID" />
        <asp:BoundField DataField="Project_Name" HeaderText="Project_Name" SortExpression="Project_Name" />
        <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
        <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
        <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
        <asp:BoundField DataField="Project_Manager" HeaderText="Project_Manager" SortExpression="Project_Manager" />
    </Columns>
        <HeaderStyle HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_Leave_ManagementConnectionProjectData %>" SelectCommand="SELECT * FROM [Project_master]"></asp:SqlDataSource>
</asp:Content>
