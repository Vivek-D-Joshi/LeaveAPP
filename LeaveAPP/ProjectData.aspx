<%@ Page Title="" Language="C#" MasterPageFile="~/HRData.Master" AutoEventWireup="true" CodeBehind="ProjectData.aspx.cs" Inherits="LeaveAPP.ProjectData" %>
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
                <h4>PROJECT DATA</h4>
            </div>
            <%--<div class="row">
                <div class="form-group col-sm-4">
                    <asp:Label ID="lbl_projectid" runat="server" Text="Project ID"></asp:Label>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="txt_projectid" runat="server" placeholder="eg.101" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>--%>
            <div class="row">
                <div class="form-group col-sm-4">
                    <asp:Label ID="lbl_prijectname" runat="server" Text="Project Name"></asp:Label>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="txt_projectname" runat="server" placeholder="eg.John Smith" Class="form-control" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>
             <div class="row">
                <div class="form-group col-sm-4">
                    <asp:Label ID="lbl_clientid" runat="server" Text="Client ID"></asp:Label>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="txt_clientid" runat="server" placeholder="eg.101" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-4">
                    <asp:Label ID="lbl_projectmanager" runat="server" Text="Project Manager ID"></asp:Label>
                </div>
                <div class="form-group col-sm-8">
                    <asp:TextBox ID="txt_projectmanager" runat="server" placeholder="eg.John Smith" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="row">
            <div class="form-group col-sm-4">
                <asp:Label ID="Label5" runat="server" Text="Start Date"></asp:Label>
            </div>
            <div class="form-group col-sm-8">
                <asp:TextBox ID="txt_startDate" runat="server" placeholder=" " Class="form-control" TextMode="Date"></asp:TextBox>
            </div>           
         </div>
         <div class="row">
            <div class="form-group col-sm-4">
                <asp:Label ID="Label6" runat="server" Text="End Date"></asp:Label>
            </div>
            <div class="form-group col-sm-8">
                <asp:TextBox ID="txt_endDate" runat="server" placeholder=" " Class="form-control" TextMode="Date"></asp:TextBox>
            </div>
         </div>
         <div class="text-center alert" width="200px">
            <asp:Label ID="lbl_message" runat="server" Text=""></asp:Label>
         </div>
         <div class="h-100 d-flex align-items-center justify-content-center">
            <asp:Button ID="Submit" runat="server" Text="Submit" Class="button" OnClick="Submit_Click" />
            <asp:Button ID="Clear" runat="server" Text="Clear" Class="button" OnClick="Clear_Click"/>
         </div>
     </div>
 </div>
</asp:Content>
