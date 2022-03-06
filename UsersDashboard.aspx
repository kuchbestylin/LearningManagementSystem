<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersDashboard.aspx.cs" Inherits="LearningManagementSystem.UsersDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
        .someclass {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            text-align-last:auto;
            font-size:large;
        }
        .someclass td, .someclass th{
            border: 1px double #ddd;
            padding: 8px;
        }
        .someclass tr:nth-child(odd){background-color:lightgray;}
        .someclass tr:hover{background-color:#ddd;}

        .someclass th {
            padding-top:12px;
            padding-bottom:12px;
            text-align: center;
            background-color:gray;
            color:white;
        }
        
        .someclass2 {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            text-align-last:auto;
            font-size:large;
        }
        .someclass2 td, .someclass2 th{
            border: 1px double #ddd;
            padding: 8px;
        }
        .someclass2 tr:nth-child(odd){background-color:lightgray;}
        .someclass2 tr:hover{background-color:#ddd;}

        .someclass2 th.heading {
            padding-top:12px;
            padding-bottom:12px;
            text-align: center;
            background-color:gray;
            color:white;
        }
        .someclass2 th, .someclass2 td {

            text-align: center;

            
        }
        *{box-sizing:border-box;}
        .imghw 
        {
            padding-top:20px;
            height:290px;
            width:320px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Visible="false" ></asp:Label>


    <center>
    <div style="border:1px solid gray; height:auto;width:900px;">
        <div style="height:auto; width: 100%; background-color:gray;">
            <center>
                <asp:Image ID="Image1" style="border-radius=8px" runat="server" ImageUrl="~/fonts/avatar.png" CssClass="profile-img-card rounded-circle imghw"/></center>
            <div style="position:relative; padding: 3px 0px">
                <strong>sign-in:</strong>&nbsp; <asp:Button ID="Button1" runat="server" Text="Present" OnClick="Button1_Click" />
            </div>
        </div ><br />
        <table class="someclass">
            <tr><th colspan="2"><asp:Label ID="student" runat="server" ></asp:Label></th></tr>
            <tr><td>Student id</td><td><asp:Label ID="studentsID" runat="server" ></asp:Label></td></tr>
            <tr><td>Email</td><td><asp:Label ID="studentsEmail" runat="server" ></asp:Label></td></tr>
            <tr><td>Gender</td><td><asp:Label ID="studentsGender" runat="server" ></asp:Label></td></tr>
            <tr><td>D.O.B</td><td><asp:Label ID="studentsDOB" runat="server" ></asp:Label></td></tr>
            <tr><td>Address</td><td><asp:Label ID="studentsAddress" runat="server" ></asp:Label></td></tr>
            <tr><td>Enrolment Date</td><td><asp:Label ID="studentsEnrollmentDat" runat="server" ></asp:Label></td></tr>
            <tr><td>Employing Company</td><td><asp:Label ID="companyName" runat="server" ></asp:Label></td></tr>
            <tr><td>Course</td><td><asp:Label ID="courseName" runat="server" ></asp:Label></td></tr>
            <tr><td>Supervisor</td><td><asp:Label ID="supervisor" runat="server" ></asp:Label></td></tr>
            <tr><td>Cellphone</td><td><asp:Label ID="studentsNumber" runat="server" ></asp:Label></td></tr>
        </table>
        <div style="height:100px;width:100%;background-color:black;"></div><br /><br /><br />
    </div>

    <div style="border-top:3px solid gray;border:1px solid gray; height:auto; width:900px">
        <table class="someclass">
            <tr><th colspan="2"><h2>Progress</h2></th></tr>
            <tr colspan ="2" style="">
                <th><asp:Label ID="Label2" runat="server" Text="Upload Report:"></asp:Label></th>
                <td style="display:flex" class="auto-style1"><asp:FileUpload ID="FileUpload1" runat="server" /><span>["Week1 day3"]</span>
                </td>
            </tr>
            <tr>
                <th>Days Covered:</th>
                <td class="auto-style1">27days 7hours 3mins 28seconds</td>
            </tr>
            <tr>
                <th>Days Left:</th>
                <td class="auto-style1">2months 3days</td>
            </tr>
            <tr>
                <th>Attendance:</th>
                <td class="auto-style1">100% in 28days</td>
            </tr>
            <tr>
                <th>Completion Status:</th>
                <td class="auto-style1">Credit level</td>
            </tr>
        </table>
        <div style="height:100px;width:100%;background-color:black;"></div><br /><br /><br />
    </div>
    
    <div style="height:auto; width:900px">
    <table class="someclass2">
        <tr><th class="heading" colspan="2">Change Password</th></tr>
        <tr><th>Current Password:</th><td><input type="password" id="pwd" name="pwd" minlength="8"></td></tr>
        <tr><th>New Password:</th><td><input type="password" id="pwd" name="pwd" minlength="8"></td></tr>
        <tr><th>Verify New Password:</th><td><input type="password" id="pwd" name="pwd" minlength="8"></td></tr>
        <tr><th style="padding-left:35%" colspan="2"><asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn btn-primary btn-block" OnClick="Button2_Click" /></th></tr>
    </table>
    </div>

    </center>


        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwelvethPrototypeConnectionString %>" DataSourceMode="DataReader" SelectCommand="StudentsDashboardRecordSelect" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="studentsID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
