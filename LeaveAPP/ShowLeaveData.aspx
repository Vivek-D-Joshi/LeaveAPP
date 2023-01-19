<%@ Page Title="" Language="C#" MasterPageFile="~/HRData.Master" AutoEventWireup="true" CodeBehind="ShowLeaveData.aspx.cs" Inherits="LeaveAPP.ShowLeaveData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .background3
        {
            position:relative;
            top: 87px;
            left:100px;
            background-color:azure;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Emp_LeaveApp" CssClass="background3" Font-Size="20px" HorizontalAlign="Center" Width="600px">
        <Columns>
            <asp:BoundField DataField="LeaveID" HeaderText="LeaveID" SortExpression="LeaveID" />
            <asp:BoundField DataField="Leave_type" HeaderText="Leave_type" SortExpression="Leave_type" />
            <asp:BoundField DataField="No_of_Leaves" HeaderText="No_of_Leaves" SortExpression="No_of_Leaves" />
        </Columns>
        <HeaderStyle Height="30px" HorizontalAlign="Center" />
        <RowStyle Height="30px" HorizontalAlign="Center" />
    </asp:GridView>
    <asp:SqlDataSource ID="Emp_LeaveApp" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_Leave_ManagementConnectionString %>" SelectCommand="SELECT * FROM [Leave_master]" UpdateCommand="UPDATE [Leave_master] SET [LeaveID] = @LeaveID, [Leave_type] = @Leave_type, [No_of_Leaves] = @No_of_Leaves "></asp:SqlDataSource>
</asp:Content>
