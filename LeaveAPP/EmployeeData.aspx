<%@ Page Title="" Language="C#" MasterPageFile="~/HRData.Master" AutoEventWireup="true" CodeBehind="EmployeeData.aspx.cs" Inherits="LeaveAPP.EmployeeData1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .background2{
            background-color:azure;
            margin:15px;
            padding:30px;
            width:600px;
            border-radius:10px;
            margin-top:75px;
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
                <h4>EMPLOYEE DATA</h4>
            </div>
            <div class="row">
                <div class="form-group col-sm-3">
                    <asp:Label ID="lbl_EmployeeID" runat="server" Text="Employee ID"></asp:Label>
                </div>
                <div class="form-group col-sm-9">
                    <asp:TextBox ID="txt_EmpID" runat="server" placeholder="eg.101" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-3">
                    <asp:Label ID="lbl_Employeename" runat="server" Text="Employee Name"></asp:Label>
                </div>
                <div class="form-group col-sm-9">
                    <asp:TextBox ID="txt_Empname" runat="server" placeholder="eg.John Smith" Class="form-control" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>
             <div class="row">
                <div class="form-group col-sm-3">
                    <asp:Label ID="lbl_Address" runat="server" Text="Employee Address"></asp:Label>
                </div>
                <div class="form-group col-sm-9">
                    <asp:TextBox ID="txt_EmpAdd" runat="server" placeholder="eg.Pune" Class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-3">
                    <asp:Label ID="lbl_EmployeeEmail" runat="server" Text="Employee Email"></asp:Label>
                </div>
                <div class="form-group col-sm-9">
                    <asp:TextBox ID="txt_employeemail" runat="server" placeholder="eg.john@gmail.com" Class="form-control" TextMode="Email"></asp:TextBox>
                </div>
            </div>
            <div class="row">
            <div class="form-group col-sm-3">
                <asp:Label ID="lbl_EmployeePhone" runat="server" Text="Employee Phone"></asp:Label>
            </div>
            <div class="form-group col-sm-9">
                <asp:TextBox ID="Txt_EmpPhone" runat="server" placeholder="+910987654321" Class="form-control" TextMode="Number" MaxLength="10"></asp:TextBox>
            </div>           
         </div>
         <div class="row">
            <div class="form-group col-sm-3">
                <asp:Label ID="lbl_Designation" runat="server" Text="Designation"></asp:Label>
            </div>
            <div class="form-group col-sm-9">
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
