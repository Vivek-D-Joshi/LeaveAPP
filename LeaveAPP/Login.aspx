<%@ Page Title="" Language="C#" MasterPageFile="~/Login&SignUp.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LeaveAPP.Login" %>
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
        <div class="container background">
            <div class="text-center">
                <h4>LOGIN</h4>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                    <i class="fa-solid fa-id-card"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="Txt_ID" runat="server" placeholder="Enter your Employee ID" Class="form-control" TextMode="SingleLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txt_ID" ErrorMessage="Please Enter ID"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                    <i class="fa-solid fa-user-tie"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="Txt_Email" runat="server" placeholder="Email Address" Class="form-control" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_Email" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                    <i class="fa-solid fa-lock"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="Txt_Password" runat="server" placeholder="Password" Class="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txt_Password" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="text-left">
                <asp:LinkButton ID="ForgotPassword" runat="server" PostBackUrl="~/Forget_Password.aspx">Forgot Password?</asp:LinkButton>
            </div>
            <div class="form-group text-center">
                <asp:Label ID="lbl_messege" runat="server" Text=""></asp:Label>
            </div>
            <div class="h-100 d-flex align-items-center justify-content-center">
                <asp:Button ID="Submit" runat="server" Text="Submit" Class="button" OnClick="Submit_Click" />
                <asp:Button ID="Clear" runat="server" Text="Clear" Class="button" OnClick="Clear_Click"/>
            </div>
             <div class="text-center">
               <asp:Label ID="NotMember" runat="server" Text="Not a member? "></asp:Label><asp:LinkButton ID="SignupNow" runat="server" PostBackUrl="~/SignUp.aspx">Signup Now</asp:LinkButton>
            </div>
        </div>
    </div>
</asp:Content>
