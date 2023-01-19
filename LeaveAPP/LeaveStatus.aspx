<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeData.Master" AutoEventWireup="true" CodeBehind="LeaveStatus.aspx.cs" Inherits="LeaveAPP.LeaveStatus" %>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" CssClass="background2" AllowPaging="True" AllowSorting="True" Width="1000px">
        <Columns>
            <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" SortExpression="EmpID" />
            <asp:BoundField DataField="Leave_Type" HeaderText="Leave_Type" SortExpression="Leave_Type" />
            <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
            <asp:BoundField DataField="End_Date" HeaderText="End_Date" SortExpression="End_Date" />
            <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <HeaderStyle HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_Leave_ManagementConnectionString %>" SelectCommand="SELECT * FROM [Leave_Application] WHERE ([EmpID] = @EmpID)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="EmpID" SessionField="EmpID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
