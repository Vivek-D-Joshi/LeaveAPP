<%@ Page Title="" Language="C#" MasterPageFile="~/HRData.Master" AutoEventWireup="true" CodeBehind="LeaveStatusHR.aspx.cs" Inherits="LeaveAPP.LeaveStatusHR" %>
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
   
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="background2" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand" Width="1000px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="ApplicationID" HeaderText="ApplicationID" InsertVisible="False" ReadOnly="True" SortExpression="ApplicationID" />
            <asp:BoundField DataField="EmpID" HeaderText="EmpID" SortExpression="EmpID" />
            <asp:BoundField DataField="Leave_Type" HeaderText="Leave_Type" SortExpression="Leave_Type" />
            <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
            <asp:BoundField DataField="End_Date" HeaderText="End_Date" SortExpression="End_Date" />
            <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:ButtonField CommandName="cmdApprove" Text="Approve" />
            <asp:ButtonField CommandName="cmdReject" Text="Reject" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle HorizontalAlign="Center" BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_Leave_ManagementConnectionString %>" SelectCommand="SELECT * FROM [Leave_Application]"></asp:SqlDataSource>
   
</asp:Content>
