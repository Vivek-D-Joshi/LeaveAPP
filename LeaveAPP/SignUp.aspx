<%@ Page Title="" Language="C#" MasterPageFile="~/Login&SignUp.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LeaveAPP.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .background{
            background:linear-gradient(to right,rgb(191, 216, 215),rgb(171, 216, 215));
            margin:20px;
            padding:15px;
            width:406px;
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
        .link{
            color:rgb(0,154,239);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="d-flex align-items-center justify-content-center">
        <div class="background ">
            <div class="text-center">
                <h4>SIGN UP</h4>
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
                    <asp:TextBox ID="Txt_Name" runat="server" placeholder="Enter Full Name" Class="form-control" TextMode="SingleLine"  ></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                    <i class="fa-solid fa-circle-user"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="Txt_Username" runat="server" placeholder="Enter Email as Username" Class="form-control" TextMode="Email"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                    <i class="fa-solid fa-briefcase"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:DropDownList ID="Drp_Designation" runat="server">
                        <asp:ListItem>HR</asp:ListItem>
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Developer</asp:ListItem>
                        <asp:ListItem>Accountant</asp:ListItem>
                        <asp:ListItem>Project Head</asp:ListItem>
                        <asp:ListItem>Trainee Engineer</asp:ListItem>
                        <asp:ListItem>Project Lead</asp:ListItem>
                        <asp:ListItem>Tester</asp:ListItem>
                        <asp:ListItem>Cloud Engineer</asp:ListItem>
                        <asp:ListItem>UI Developer</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                    <i class="fa-solid fa-lock"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="Txt_Password" runat="server" placeholder="Enter Password" Class="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-2">
                    <i class="fa-solid fa-key"></i>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="Txt_ConfirmPassword" runat="server" placeholder="Confirm Password" Class="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="text-center">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matched" ControlToCompare="Txt_Password" ControlToValidate="Txt_ConfirmPassword" Display="Dynamic"></asp:CompareValidator>
            </div>
            <div class="text-center">
                <asp:LinkButton ID="AlreadyUser" runat="server" PostBackUrl="~/Login.aspx" CssClass="link">Already a user?</asp:LinkButton>
            </div>
            <div class="h-100 d-flex align-items-center justify-content-center">
                <asp:Button ID="Submit" runat="server" Text="Submit" class="button" OnClick="Submit_Click"/>
                <asp:Button ID="Clear" runat="server" Text="Clear" class="button" OnClick="Clear_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
