<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UPDATE.aspx.cs" Inherits="LearningManagementSystem.UPDATE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

    <p>
    </p>
    <br />
    Enter Students I.D:&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Find" OnClick="Button1_Click" />
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="studentsID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="404px" Width="797px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="studentsID" HeaderText="studentsID" InsertVisible="False" ReadOnly="True" SortExpression="studentsID" />
            <asp:BoundField DataField="studentsFullname" HeaderText="studentsFullname" SortExpression="studentsFullname" />
            <asp:BoundField DataField="studentsSurname" HeaderText="studentsSurname" SortExpression="studentsSurname" />
            <asp:BoundField DataField="studentsAge" HeaderText="studentsAge" SortExpression="studentsAge" />
            <asp:BoundField DataField="studentsGender" HeaderText="studentsGender" SortExpression="studentsGender" />
            <asp:BoundField DataField="studentsDOB" HeaderText="studentsDOB" SortExpression="studentsDOB" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwelvethPrototypeConnectionString %>" SelectCommand="SelectsStudentRecordsPriorToUpdate" SelectCommandType="StoredProcedure" UpdateCommand="UpdateStudentRecords" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="NULL" Name="studentsID" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="studentsID" Type="Int32" />
            <asp:Parameter Name="studentsFullname" Type="String" />
            <asp:Parameter Name="studentsSurname" Type="String" />
            <asp:Parameter Name="studentsAge" Type="Int32" />
            <asp:Parameter Name="studentsGender" Type="String" />
            <asp:Parameter DbType="Date" Name="studentsDOB" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ApplicationsHandler.aspx">CREATE[studentVersion]</a>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; <a href="Administration.aspx">READ</a>&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; <a href="Update.aspx">UPDATE</a>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; <a href="DELETE.aspx">DELETE</a><br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

        </div>
    </form>
</body>
</html>
