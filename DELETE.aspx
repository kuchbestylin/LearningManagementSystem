<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DELETE.aspx.cs" Inherits="LearningManagementSystem.DELETE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="studentsID" HeaderText="studentsID" InsertVisible="False" ReadOnly="True" SortExpression="studentsID" />
                <asp:BoundField DataField="studentsFullname" HeaderText="studentsFullname" SortExpression="studentsFullname" />
                <asp:BoundField DataField="studentsSurname" HeaderText="studentsSurname" SortExpression="studentsSurname" />
                <asp:BoundField DataField="studentsEnrollmentDate" HeaderText="studentsEnrollmentDate" SortExpression="studentsEnrollmentDate" />
                <asp:BoundField DataField="fk_courseID" HeaderText="fk_courseID" SortExpression="fk_courseID" />
                <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
                <asp:BoundField DataField="supervisorsFullname" HeaderText="supervisorsFullname" SortExpression="supervisorsFullname" />
                <asp:BoundField DataField="supervisorsSurname" HeaderText="supervisorsSurname" SortExpression="supervisorsSurname" />
                <asp:BoundField DataField="programType" HeaderText="programType" SortExpression="programType" />
                <asp:BoundField DataField="companyName" HeaderText="companyName" SortExpression="companyName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwelvethPrototypeConnectionString %>" DeleteCommand="DeleteStudentRecord" DeleteCommandType="StoredProcedure" SelectCommand="sp_returnStudentsPriorToDeletion" SelectCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="studentsID" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p style="display:none;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ApplicationsHandler.aspx">CREATE[studentVersion]</a>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; <a href="Administration.aspx">READ</a>&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; <a href="Update.aspx">UPDATE</a>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; <a href="DELETE.aspx">DELETE</a></p>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

        </div>
    </form>
</body>
</html>
