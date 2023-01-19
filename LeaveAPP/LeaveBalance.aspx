<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeData.Master" AutoEventWireup="true" CodeBehind="LeaveBalance.aspx.cs" Inherits="LeaveAPP.LeaveBalance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .background2 {
            background-color: azure;
            margin: 20px;
            padding: 15px;
            width:600px;
            border-radius: 10px;
            position: relative;
            top:55px;
        }
        .form-control{
            width:300px;
        }
        .label{
            font-size:20px;
        }
        .text-center{
            margin-bottom:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex alian-items-center justify-content-center container">
        <div class="col-sm-2"></div>
        <div class="background2">
            <div class="text-center">
                <h4>Leave Balance</h4>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>        
                <div class="form-group col-sm-6 text-left">
                  <asp:Label ID="lbl_EarnedLeave" runat="server" Text="Earned Leave" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-3 text-left">             
                  <asp:Label ID="txt_EarnedLeave" runat="server" Text="0"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>    
                <div class="form-group col-sm-6 text-left">
                    <asp:Label ID="lbl_Leavewithoutpay" runat="server" Text="Leave Without Pay" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-3">
                    <asp:Label ID="txt_Leavewithoutpay" runat="server" Text="0"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>    
                <div class="form-group col-sm-6 text-left">
                    <asp:Label ID="lbl_CausalLeave" runat="server" Text="Causal Leave" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-3">
                   <asp:Label ID="txt_CausalLeave" runat="server" Text="0"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>    
                <div class="form-group col-sm-6 text-left">
                   <asp:Label ID="lbl_WorkFromHome" runat="server" Text="Work From Home" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-3">
                   <asp:Label ID="txt_WorkFromHome" runat="server" Text="0"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>    
                <div class="form-group col-sm-6 text-left">
                   <asp:Label ID="lbl_MaternityLeave" runat="server" Text="Maternity Leave" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-3">
                    <asp:Label ID="txt_MaternityLeave" runat="server" Text="0"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>    
                <div class="form-group col-sm-6 text-left">
                   <asp:Label ID="lbl_PaternityLeave" runat="server" Text="Paternity Leave" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-3">
                    <asp:Label ID="txt_PaternityLeave" runat="server" Text="0"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>    
                <div class="form-group col-sm-6 text-left">
                   <asp:Label ID="lbl_MarriageLeave" runat="server" Text="Marriage Leave" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-3">
                   <asp:Label ID="txt_MarriageLeave" runat="server" Text="0"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
