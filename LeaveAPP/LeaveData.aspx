<%@ Page Title="" Language="C#" MasterPageFile="~/HRData.Master" AutoEventWireup="true" CodeBehind="LeaveData.aspx.cs" Inherits="LeaveAPP.LeaveData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .background2{
            background-color:azure;
            margin:15px;
            width:600px;
            border-radius:10px;
            margin-top:75px;
        }
        .form-control
        {
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
        .button1{
            margin-left:10px;
            background:linear-gradient(to right,rgb(2,193,180),rgb(98, 203, 196));
            border:none;
            border-radius:5px;
            width:80px;
            height:40px;
            color:white;
        }
        .button1:hover{
            box-shadow:1px 3px 6px 0px rgb(154 153 153);
            color:black;
        }
        .button2{
            margin-left:10px;
            background:linear-gradient(to right,rgb(154, 237, 33),rgb(211, 238, 171));
            border:none;
            border-radius:5px;
            width:80px;
            height:40px;
            color:white;
        }
        .button2:hover{       
            box-shadow:1px 3px 6px 0px rgb(154 153 153);
            color:black;
        }
        .button3{
            margin-left:10px;
            background:linear-gradient(to right,rgb(255, 0, 0),rgb(254, 169, 169));
            border:none;
            border-radius:5px;
            width:80px;
            height:40px;
            color:white;
        }
        .button3:hover{       
            box-shadow:1px 3px 6px 0px rgb(154 153 153);
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
                <h4>LEAVE DATA</h4>
            </div>
            <div class="row">
                <div class="form-group col-sm-4">
                    <asp:Label ID="lbl_leaveID" runat="server" Text="Leave ID"></asp:Label>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="txt_leaveID" runat="server" placeholder="eg.101" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-4">
                    <asp:Label ID="lbl_leavetype" runat="server" Text="Leave Type"></asp:Label>
                </div>
                <div class="form-group col-sm-8">
                    <asp:DropDownList ID="Drp_LeaveType" runat="server">
                        <asp:ListItem>Casual Leave</asp:ListItem>
                        <asp:ListItem>Earned Leave</asp:ListItem>
                         <asp:ListItem>Leave Without Pay</asp:ListItem>
                         <asp:ListItem>Work From Home</asp:ListItem>
                         <asp:ListItem>Marriage Leave</asp:ListItem>
                         <asp:ListItem>Maternity Leave</asp:ListItem>
                        <asp:ListItem>paternity Leave</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <%--<div class="row">
                <div class="form-group col-sm-4">
                    <asp:Label ID="Label1" runat="server" Text="New Leave Name"></asp:Label>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="txt_NewLeaveType" runat="server" placeholder="" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>--%>
             <div class="row">
                <div class="form-group col-sm-4">
                    <asp:Label ID="lbl_noofleaves" runat="server" Text="Number of leaves"></asp:Label>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="txt_NoOfLeaves" runat="server" placeholder="eg.01" Class="form-control" TextMode="Number"> </asp:TextBox>
                </div>
            </div>
            <div class="text-center alert" width="200px">
                <asp:Label ID="lbl_message" runat="server" Text=""></asp:Label>
            </div>
             <div class="h-100 d-flex align-items-center justify-content-center">
                <asp:Button ID="Submit" runat="server" Text="Insert" Class="button1" OnClick="Insert_Click" />
                <asp:Button ID="Update" runat="server" Text="Update" Class="button2" OnClick="Update_Click"/>
                <asp:Button ID="Delete" runat="server" Text="Delete" Class="button3" OnClick="Delete_Click"/>
                <asp:Button ID="Clear" runat="server" Text="Clear" Class="button1" OnClick="Clear_Click"/>
             </div>
     </div>
 </div>
</asp:Content>
