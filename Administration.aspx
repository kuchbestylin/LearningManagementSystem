<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="LearningManagementSystem.Administration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<br />
<br />
<h2>Return All students enrolled in a particular course</h2>
<br />
<br />
<br />



<asp:Label ID="Label1" runat="server" Text="Course"></asp:Label>: <asp:DropDownList ID="Course" runat="server" DataSourceID="SqlDataSource1" DataTextField="courseName" DataValueField="courseName">
<asp:ListItem Selected="True">Select</asp:ListItem>
</asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwelvethPrototypeConnectionString %>" SelectCommand="SelectAllCourseNames" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label3" runat="server" Text="Program"></asp:Label>: <asp:DropDownList ID="Program" runat="server" DataSourceID="SqlDataSource2" DataTextField="programType" DataValueField="programType">
<asp:ListItem Selected="True">Select</asp:ListItem>
</asp:DropDownList>



        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TwelvethPrototypeConnectionString %>" SelectCommand="SelectAllProgramTypes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>



&nbsp;&nbsp;&nbsp;
<asp:Button ID="BtnFind" runat="server" OnClick="Button3_Click" Text="Find" />
<br />



<br />
<br />



<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="74px" Width="744px">
<AlternatingRowStyle BackColor="#CCCCCC" />
<Columns>
<asp:BoundField DataField="studentsFullname" HeaderText="studentsFullname" SortExpression="studentsFullname" />
<asp:BoundField DataField="studentsSurname" HeaderText="studentsSurname" SortExpression="studentsSurname" />
<asp:BoundField DataField="fk_courseID" HeaderText="fk_courseID" SortExpression="fk_courseID" />
<asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
<asp:BoundField DataField="programMode" HeaderText="programMode" SortExpression="programMode" />
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




        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TwelvethPrototypeConnectionString %>" SelectCommand="sp_returnStudentsByNameCourseProgram" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="Course" Name="courseName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="Program" Name="programType" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>




<h2>&nbsp;</h2>
<h2>&nbsp;</h2>
<h2>Find Strudent By ID</h2>
<p>&nbsp;</p>
<asp:Label ID="Label4" runat="server" Text="Enter Student ID:"></asp:Label>&nbsp;<asp:TextBox ID="txtbxSTUDENTID" runat="server"></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="Find Student Info" OnClick="Button1_Click" />
<br />
<br />
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="studentsID" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="76px" Width="743px">
<AlternatingRowStyle BackColor="#CCCCCC" />
<Columns>
<asp:BoundField DataField="studentsID" HeaderText="studentsID" InsertVisible="False" ReadOnly="True" SortExpression="studentsID" />
<asp:BoundField DataField="studentsFullname" HeaderText="studentsFullname" SortExpression="studentsFullname" />
<asp:BoundField DataField="studentsSurname" HeaderText="studentsSurname" SortExpression="studentsSurname" />
<asp:BoundField DataField="companyName" HeaderText="companyName" SortExpression="companyName" />
<asp:BoundField DataField="supervisorsFullname" HeaderText="supervisorsFullname" SortExpression="supervisorsFullname" />
<asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
<asp:BoundField DataField="programType" HeaderText="programType" SortExpression="programType" />
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TwelvethPrototypeConnectionString %>" SelectCommand="SelectStudentByID" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtbxSTUDENTID" Name="studentsID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="REGISTRATION.aspx">CREAT(STUDENTVERSION)</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; <a href="Administration.aspx">READ</a>&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; <a href="Update.aspx">UPDATE</a>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; <a href="DELETE.aspx">DELETE</a><br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
    </form>
</body>zzz
</html>
