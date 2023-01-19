<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeData.Master" AutoEventWireup="true" CodeBehind="LeaveApplication.aspx.cs" Inherits="LeaveAPP.LeaveApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .background2{
            background-color:azure;
            margin:15px;
            padding:30px;
            width:600px;
            border-radius:10px;
            position:relative;
            top:60px;
        }
         .form-control{
            width:300px;
        }
        i{
            font-size:30px;
            padding-left:5px;
        }
        .text-left{
            margin-bottom:20px;
            margin-left:76px;
        }
        .button{
            margin-left:10px;
            background:linear-gradient(to right,rgb(2,193,180),rgb(98, 203, 196));
            border:none;
            border-radius:5px;
            width:80px;
            height:40px;
            color:white;
        }
        .button:hover{
            margin-left:10px;
            background:linear-gradient(to right,rgb(2,193,180),rgb(98, 203, 196));
            border:none;
            border-radius:5px;
            box-shadow:1px 3px 6px 0px rgb(154 153 153);
            width:80px;
            height:40px;
            color:black;
        }
        .text-center{
            margin-top:20px;
        }
        h4{
            margin-bottom:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="col-sm-2"></div>
        <div class="background2">
            <div class="text-center">
                <h4>Leave Application</h4>
            </div>
            <div class="row">
                <div class="form-group col-sm-3">
                    <asp:Label ID="lbl_EmpID" runat="server" Text="EmpID"></asp:Label>
                </div>
                <div class="form-group col-sm-9">
                    <asp:Label ID="lblin_EmpID" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-3">
                    <asp:Label ID="lbl_Name" runat="server" Text="Emp Name"></asp:Label>
                </div>
                <div class="form-group col-sm-9">
                    <asp:Label ID="lblin_EmpName" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-3">
                    <asp:Label ID="Label3" runat="server" Text="Leave Type"></asp:Label>
                </div>
            <div class="col-sm-9">
                <asp:DropDownList ID="Drp_LeaveType" runat="server">
                    <asp:ListItem>Casual Leave</asp:ListItem>
                    <asp:ListItem>Earned Leave</asp:ListItem>
                    <asp:ListItem>Leave Without Pay</asp:ListItem>
                    <asp:ListItem>Work From Home</asp:ListItem>
                    <asp:ListItem>Marriage Leave</asp:ListItem>
                    <asp:ListItem>Patternity Leave</asp:ListItem>
                    <asp:ListItem>Matternity Leave</asp:ListItem>
                </asp:DropDownList>
            </div>
            </div>
            <div class="row">
            <div class="form-group col-sm-3">
                <asp:Label ID="Label5" runat="server" Text="Start Date"></asp:Label>
            </div>
            <div class="form-group col-sm-9">
                <asp:TextBox ID="txt_startDate" runat="server" placeholder=" " Class="form-control" TextMode="Date"></asp:TextBox>
            </div>           
         </div>
         <div class="row">
            <div class="form-group col-sm-3">
                <asp:Label ID="Label6" runat="server" Text="End Date"></asp:Label>
            </div>
            <div class="form-group col-sm-9">
                <asp:TextBox ID="txt_endDate" runat="server" placeholder=" " Class="form-control" TextMode="Date"></asp:TextBox>
            </div>
         </div>
         <div class="text-center alert">
            <asp:Label ID="lbl_message" runat="server"></asp:Label>
         </div>
         <div class="h-100 d-flex align-items-center justify-content-center">
            <asp:Button ID="Submit" runat="server" Text="Submit" Class="button" OnClick="Submit_Click" />
            <asp:Button ID="Clear" runat="server" Text="Clear" Class="button" OnClick="Clear_Click"/>
         </div>
      </div>
</div>
</asp:Content>
 