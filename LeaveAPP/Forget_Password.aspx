<%@ Page Title="" Language="C#" MasterPageFile="~/Login&SignUp.Master" AutoEventWireup="true" CodeBehind="Forget_Password.aspx.cs" Inherits="LeaveAPP.Forget_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .background{
            background:linear-gradient(to right,rgb(191, 216, 215),rgb(171, 216, 215));
            margin:20px;
            padding:15px;
            width:444px;
            border-radius:10px;
        }
        .form-control{
            width:300px;
        }
        i{
            font-size:30px;
            padding-left:5px;
        }
        .text-center{
            margin-bottom:20px;
        }
        .button{
            margin-left:10px;
            background:linear-gradient(to right,rgb(2,193,180),rgb(98,203,196));
            border:none;
            border-radius:5px;
            width:80px;
            height:40px;
            color:white;
        }
         .button:hover{
            margin-left:10px;
            background:linear-gradient(to right,rgb(2,193,180),rgb(98,203,196));
            border:none;
            border-radius:5px;
            width:80px;
            height:40px;
            color:black;
            box-shadow:1px 3px 6px 0px rgb(154,153,153);
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="background">
            <div class="text-center">
                <h4>New Password</h4>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                    <i class="fa-solid fa-user-tie"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="Email" runat="server" placeholder="Email Address" Class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                   <i class="fa-solid fa-lock"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="Password" runat="server" placeholder="Enter Password" Class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                   <i class="fa-solid fa-key"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="Confirmpassword" runat="server" placeholder="Confirm Password" Class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="text-center">
                <asp:Label ID="lbl_message" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="h-100 d-flex align-items-center justify-content-center">
                <asp:Button ID="Submit" runat="server" Text="Submit" Class="button" OnClick="Submit_Click" />
                <asp:Button ID="Clear" runat="server" Text="Clear" Class="button" OnClick="Clear_Click" />
            </div>
        </div>
    </div>
</asp:Content>
