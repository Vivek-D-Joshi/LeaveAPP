<%@ Page Title="" Language="C#" MasterPageFile="~/HRData.Master" AutoEventWireup="true" CodeBehind="ShowClientData.aspx.cs" Inherits="LeaveAPP.ShowClientData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .background2
        {
            position:relative;
            top: 87px;
            left:150px;
            background-color:azure;
        }
        .auto-style1 {
            position: relative;
            top: 87px;
            left: -5px;
            background-color: azure;
            width: 900px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_Leave_ManagementConnectionString %>" DeleteCommand="DELETE FROM [Client_master] WHERE [ClientID] = @ClientID" InsertCommand="INSERT INTO [Client_master] ([Client_Name], [Address], [Office_Email], [Office_Phone], [Contact_Person], [Contact_Person_Email], [Contact_Person_Mobile]) VALUES (@Client_Name, @Address, @Office_Email, @Office_Phone, @Contact_Person, @Contact_Person_Email, @Contact_Person_Mobile)" SelectCommand="SELECT * FROM [Client_master]" UpdateCommand="UPDATE [Client_master] SET [Client_Name] = @Client_Name, [Address] = @Address, [Office_Email] = @Office_Email, [Office_Phone] = @Office_Phone, [Contact_Person] = @Contact_Person, [Contact_Person_Email] = @Contact_Person_Email, [Contact_Person_Mobile] = @Contact_Person_Mobile WHERE [ClientID] = @ClientID">
        <DeleteParameters>
            <asp:Parameter Name="ClientID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Client_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Office_Email" Type="String" />
            <asp:Parameter Name="Office_Phone" Type="String" />
            <asp:Parameter Name="Contact_Person" Type="String" />
            <asp:Parameter Name="Contact_Person_Email" Type="String" />
            <asp:Parameter Name="Contact_Person_Mobile" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Client_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Office_Email" Type="String" />
            <asp:Parameter Name="Office_Phone" Type="String" />
            <asp:Parameter Name="Contact_Person" Type="String" />
            <asp:Parameter Name="Contact_Person_Email" Type="String" />
            <asp:Parameter Name="Contact_Person_Mobile" Type="String" />
            <asp:Parameter Name="ClientID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ClientID" DataSourceID="SqlDataSource1" CssClass="auto-style1" Width="900px" Height="30px" HorizontalAlign="Right">
        <Columns>
            <asp:BoundField DataField="ClientID" HeaderText="ClientID" InsertVisible="False" ReadOnly="True" SortExpression="ClientID" />
            <asp:BoundField DataField="Client_Name" HeaderText="Client_Name" SortExpression="Client_Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Office_Email" HeaderText="Office_Email" SortExpression="Office_Email" />
            <asp:BoundField DataField="Office_Phone" HeaderText="Office_Phone" SortExpression="Office_Phone" />
            <asp:BoundField DataField="Contact_Person" HeaderText="Contact_Person" SortExpression="Contact_Person" />
            <asp:BoundField DataField="Contact_Person_Email" HeaderText="Contact_Person_Email" SortExpression="Contact_Person_Email" />
            <asp:BoundField DataField="Contact_Person_Mobile" HeaderText="Contact_Person_Mobile" SortExpression="Contact_Person_Mobile" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <EditRowStyle Wrap="True" Width="900px" Height="50px" HorizontalAlign="Left" />
        <HeaderStyle Wrap="False" Width="1000px" HorizontalAlign="Center" />
        <RowStyle Wrap="True" HorizontalAlign="Center" />
    </asp:GridView>

</asp:Content>
