<%@ Page Title="" Language="C#" MasterPageFile="~/HRData.Master" AutoEventWireup="true" CodeBehind="ClientData.aspx.cs" Inherits="LeaveAPP.ClientData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .background2{
            background-color:azure;
            margin:20px;
            padding:15px;
            width:600px;
            border-radius:10px;
            margin-top:75px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex align-items-center justify-content-center">
        <div class="col-sm-2"></div>
        <div class="background2">
            <div class="text-center">
                <h4>CLIENT DATA</h4>
            </div>
           <%-- <div class="row"> 
                <div class="form-group col-sm-4 text-left">
                  <asp:Label ID="lbl_clientid" runat="server" Text="Client ID" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-8 text-left">             
                 <asp:TextBox ID="txt_clientid" runat="server" placeholder="eg.101" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>--%>
             <div class="row">    
                <div class="form-group col-sm-4 text-left">
                  <asp:Label ID="lbl_clientname" runat="server" Text="Client Name" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-8 text-left">             
                 <asp:TextBox ID="txt_clientname" runat="server" placeholder="eg.John Smith" Class="form-control" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>
             <div class="row">      
                <div class="form-group col-sm-4 text-left">
                  <asp:Label ID="lbl_clientaddress" runat="server" Text="Client Address" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-8 text-left">             
                 <asp:TextBox ID="txt_clientaddress" runat="server" placeholder=" " Class="form-control" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
             <div class="row">        
                <div class="form-group col-sm-4 text-left">
                  <asp:Label ID="lbl_officeemail" runat="server" Text="Office Email" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-8 text-left">             
                 <asp:TextBox ID="txt_officeemail" runat="server" placeholder="eg.abc@gmail.com" Class="form-control" TextMode="Email"></asp:TextBox>
                </div>
            </div>
            <div class="row">        
                <div class="form-group col-sm-4 text-left">
                  <asp:Label ID="lbl_officephoneno" runat="server" Text="Office Phone No." Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-8 text-left">             
                 <asp:TextBox ID="txt_officephoneno" runat="server" placeholder="eg.9876543210" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="row">       
                <div class="form-group col-sm-4 text-left">
                  <asp:Label ID="lbl_contactpersonname" runat="server" Text="Contact Person Name" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-8 text-left">             
                    <asp:TextBox ID="txt_contactpersonname" runat="server" placeholder="eg.John Smith" Class="form-control" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>
            <div class="row">       
                <div class="form-group col-sm-4 text-left">
                    <asp:Label ID="lbl_contactpersonemail" runat="server" Text="Contact Person Email" Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-8 text-left">             
                    <asp:TextBox ID="txt_contactpersonemail" runat="server" placeholder="eg.abc@gmail.com" Class="form-control" TextMode="Email"></asp:TextBox>
                </div>
            </div>
            <div class="row">       
                <div class="form-group col-sm-4 text-left">
                    <asp:Label ID="lbl_contactpersonphoneno" runat="server" Text="Contact Person Phone No." Class="label"></asp:Label>
                </div>
                <div class="form-group col-sm-8 text-left">             
                    <asp:TextBox ID="txt_contactpersonphoneno" runat="server" placeholder="eg.9876543210" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>
             <div class="text-center alert" width="200px">
                <asp:Label ID="lbl_message" runat="server" Text=""></asp:Label>
            </div>
             <div class="h-100 d-flex align-items-center justify-content-center">
                <asp:Button ID="Submit" runat="server" Text="Submit" Class="button" OnClick="Submit_Click" />
                <asp:Button ID="Clear" runat="server" Text="Clear" Class="button"/>
            </div>
        </div>
    </div>
</asp:Content>
