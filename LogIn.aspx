<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="LearningManagementSystem.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div>

    <br />
    <center>
    <div  style="border: 1px solid lightgray;border-radius:10px 10px 0 0px; height:650px; width:700px;">
        <div style="display:block; height:320px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/fonts/avatar.png" CssClass="profile-img-card rounded-circle"  style="height:100%;width:100%;" />
        </div>
        <div style="display:block">
        <div style="display:block;border-top:1px solid white; border-bottom: 1px solid black;width:100%;background-color:lightgray;margin:0px;height:"><center><h2>LOGIN</h2></center></div>
        <table style="margin:14px 60px 8px 0px; justify-content:space-around;text-align:end">
            <tr>
                <td>
                    <p><strong>Email:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td><td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="289px" placeholder="e.g database@example.com" Height="25px" AutoPostBack="true" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><strong>Password:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td><td>
                            <asp:TextBox ID="pwd" TextMode="Password" runat="server"></asp:TextBox>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><strong>Choose User Type:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td><td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Enabled="false" Height="27px" Width="287px">
                                <asp:ListItem Selected="True">Student</asp:ListItem>
                                <asp:ListItem>Supervisor</asp:ListItem>
                            </asp:DropDownList>
                    </p>
                </td>
            </tr>
        </table>
        <hr />
        <div style="display:block; justify-content:space-between;">
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" />Remember Email?
            <br />
            <asp:Button ID="Button1" class="submit" style="background-color:lightgrey" runat="server" Text="LOG IN" CssClass="btn btn-primary btn-block" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Style="color:orangered" ></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=KUCHBESTYLIN;Initial Catalog=TwelvethPrototype;Integrated Security=True" InsertCommandType="StoredProcedure" InsertCommand="LoginAuthentication" OnInserted="SqlDataSource1_Inserted" ProviderName="System.Data.SqlClient" DataSourceMode="DataReader" SelectCommand="[dbo].[StudentsPhotoAtLogin]" SelectCommandType="StoredProcedure">
                <InsertParameters>
                    <asp:Parameter Direction="ReturnValue" Name="RETURN_VALUE" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox1" Name="emailAddress" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="pwd" Name="password" PropertyName="Text" Type="String" />
                    <asp:Parameter Direction="Output" Name="Feedback" Size="255" Type="String" />
                    <asp:Parameter Direction="InputOutput" Name="studentID" Size="10000" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Direction="ReturnValue" Name="RETURN_VALUE" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox1" Name="email" PropertyName="Text" Type="String" />
                    <asp:Parameter Direction="Output" Name="path" Size="255" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        </div>

    </div>

    </center>


        </div>
    </form>
</body>
</html>
