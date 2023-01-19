<%@ Page Title="" Language="C#" MasterPageFile="~/HRData.Master" AutoEventWireup="true" CodeBehind="ShowEmployeeData.aspx.cs" Inherits="LeaveAPP.ShowEmployeeData" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" CssClass="background2" HorizontalAlign="Center" CellSpacing="5" Width="1150px">
        <AlternatingRowStyle Wrap="True" />
        <Columns>
            <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True" SortExpression="EmpId" />
            <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" Wrap="True" />
        <HeaderStyle BorderStyle="Solid" BorderWidth="1px" Height="30px" HorizontalAlign="Center" />
        <RowStyle BorderColor="#4FAEA3" BorderStyle="Solid" BorderWidth="1px" Wrap="False" Height="30px" HorizontalAlign="Center" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeData_SourceConnection %>" SelectCommand="SELECT * FROM [Employee_master]" DeleteCommand="DELETE FROM [Employee_master] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Employee_master] ([EmpName], [Address], [Email], [Phone], [Designation]) VALUES (@EmpName, @Address, @Email, @Phone, @Designation)" UpdateCommand="UPDATE [Employee_master] SET [EmpName] = @EmpName, [Address] = @Address, [Email] = @Email, [Phone] = @Phone, [Designation] = @Designation WHERE [EmpId] = @EmpId">
    <DeleteParameters>
        <asp:Parameter Name="EmpId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="EmpName" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Designation" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="EmpName" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Designation" Type="String" />
        <asp:Parameter Name="EmpId" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
