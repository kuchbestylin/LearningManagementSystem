<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTRATION.aspx.cs" Inherits="LearningManagementSystem.REGISTRATION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    .asterix {
        color: red
    }
</style>
<body>
    <form id="form1" runat="server">
        <center>
            <div style="display: flex; flex-direction: column; background-color: lightgray;">
                <div style="display: block; background-color: gray">
                    <header>
                        <h1>BIOGRAPHICAL INFORMATION</h1>
                        <p>
                            Step 1: Please complete your Personal Information as requested below. All fields indicated with a * must be completed.</br>
                Step 2: Submit your Personal Information by clicking the 'APPLY' button or click the 'Clear Form' button to clear the inserted values.
                        </p>
                    </header>
                    <br />
                    <br />
                </div>
                <div style="display: block; border: 1px solid gray; width: 100%">
                    <center>
                        <div style="margin: 0; display: inline-flex">
                            <div style="margin: 0px 0px 0px 30px; display: inline-block; border-right: 2px solid gray; padding-right: 150px">
                                <table style="align-content: center">
                                    <tr>
                                        <td>
                                            <p>
                                            Upload Profile Photo:
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="ProfilePhoto" runat="server" CssClass="form-control" AutoPostBack="False" />
                                            <asp:Label ID="Label24" runat="server"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <p>
                                            Fullname:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="StdsFullName" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label8" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Surname:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="stdsSurname" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label9" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            &nbsp;</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Gender:
                                        </td>
                                        <td style="margin-left: 40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label10" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            <asp:RadioButtonList ID="StdsGender" runat="server" AutoPostBack="True" Height="16px" Width="76px">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:RadioButtonList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            D.O.B:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="StdsDOB" runat="server" TextMode="Date" CssClass="form-control" AutoPostBack="True" OnTextChanged="StdsDOB_TextChanged"></asp:TextBox><asp:Label ID="Label11" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            <asp:Label ID="Label23" runat="server" Visible="false" Text="A valid D.O.B should be provided" Style="color: orangered"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Cellphone Number:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="stdsCellnumber" runat="server" TextMode="Number" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label12" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Postal Address:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Postalstreet" runat="server" placeholder="e.g 7057 John Knox" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label13" runat="server" Text=" *" CssClass="asterix"></asp:Label><br />
                                            <asp:TextBox ID="Postalcity" runat="server" placeholder="City..." CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label14" runat="server" Text=" *" CssClass="asterix"></asp:Label><br />
                                            <asp:TextBox ID="Postalcountry" runat="server" placeholder="Country..." CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label15" runat="server" Text=" *" CssClass="asterix"></asp:Label>

                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Home Address:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Homestreet" runat="server" placeholder="e.g 7057 John Knox" CssClass="form-control" AutoPostBack="True"></asp:TextBox><br />
                                            <asp:TextBox ID="Homecity" runat="server" placeholder="City..." CssClass="form-control" AutoPostBack="True"></asp:TextBox><br />
                                            <asp:TextBox ID="Homecountry" runat="server" placeholder="Country..." CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Email:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="StdsEmail" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="man" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Degree:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CourseName" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label2" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Program Duration:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ProgramDuration" runat="server" CssClass="form-control" AutoPostBack="True">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>3-months</asp:ListItem>
                                                <asp:ListItem>6-months</asp:ListItem>
                                            </asp:DropDownList><asp:Label ID="Label4" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Program Type:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ProgramType" runat="server" CssClass="form-control" AutoPostBack="True">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Internship</asp:ListItem>
                                                <asp:ListItem>Project</asp:ListItem>
                                            </asp:DropDownList><asp:Label ID="Label3" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            &nbsp;</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Program Mode:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ProgramMode" runat="server" CssClass="form-control" AutoPostBack="True">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Full-Time</asp:ListItem>
                                                <asp:ListItem>Part-Time</asp:ListItem>
                                            </asp:DropDownList><asp:Label ID="Pmode" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>

                                </table>
                            </div>

                            <div style="display: inline; margin-left: 150px">
                                <h2><b>Company Details</b></h2>
                                <br />


                                <table>
                                    <tr>
                                        <td>
                                            <p>
                                            Company Name:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CompanyName" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label5" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Department:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CompanyDepartment" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label6" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Company Address:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CompanysAddress" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label7" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Fax Number:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CompanysFaxNumber" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label16" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                </table>

                                <br />
                                <h2><b>Supervisor Details</b></h2>
                                <br />

                                <table>
                                    <tr>
                                        <td>
                                            <p>
                                            Supervisors Name:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SupervisorsName" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label17" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Supervisors Surname:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SupervisorsSurname" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label18" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Supervisors Cellnumber:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SupervisorsCellNumber" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label19" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Supervisors Email:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SupervisorsEmail" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox><asp:Label ID="Label20" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                </table>


                                <br />
                                <br />

                                <table>
                                    <tr>
                                        <td>
                                            <p>
                                            New Password:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NewPassword" runat="server" TextMode="Password" AutoPostBack="False"></asp:TextBox><asp:Label ID="Label21" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                            Verify Password:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="VerifyPassword" runat="server" TextMode="Password" AutoPostBack="False"></asp:TextBox><asp:Label ID="Label22" runat="server" Text=" *" CssClass="asterix"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>

                                </table>
                                <br />
                                <p>
                                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-control" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                    I accept all terms and conditions
                                </p>

                                <aside>
                                    <asp:Button ID="Button1" runat="server" Text="Submit" Height="" Width="" Enabled="false" OnClick="Button1_Click" />
                                    <asp:Label ID="Label1" runat="server" Style="color: orangered"></asp:Label>
                                    <asp:Button ID="ClearButton" runat="server" Text="Clear Form" Height="" Width="" CssClass="form-control" OnClick="ClearButton_Click" AutoPostBack="True" />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TwelvethPrototypeConnectionString %>" InsertCommand="DetailCollectionLink" InsertCommandType="StoredProcedure" OnInserted="SqlDataSource1_Inserted" SelectCommand="RETURNEVERYTHING" SelectCommandType="StoredProcedure">
                                        <InsertParameters>
                                            <asp:Parameter Direction="ReturnValue" Name="RETURN_VALUE" Type="Int32" />
                                            <asp:ControlParameter ControlID="CompanyName" ConvertEmptyStringToNull="False" Name="companyName" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="CompanysAddress" ConvertEmptyStringToNull="False" Name="companyAddress" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="CompanysFaxNumber" ConvertEmptyStringToNull="False" Name="companyFaxNumber" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="CompanyDepartment" ConvertEmptyStringToNull="False" Name="department" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="StdsEmail" ConvertEmptyStringToNull="False" Name="email" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="VerifyPassword" ConvertEmptyStringToNull="False" Name="password" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="CourseName" ConvertEmptyStringToNull="False" Name="degree" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="Homestreet" DefaultValue="N/A" ConvertEmptyStringToNull="False" Name="HStreetName" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="Homecity" DefaultValue="N/A" ConvertEmptyStringToNull="False" Name="Hcity" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="Homecountry" DefaultValue="N/A" ConvertEmptyStringToNull="False" Name="Hcountry" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="Postalstreet" ConvertEmptyStringToNull="False" Name="Pstreet" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="Postalcity" ConvertEmptyStringToNull="False" Name="Pcity" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="Postalcountry" ConvertEmptyStringToNull="False" Name="Pcountry" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="ProgramMode" ConvertEmptyStringToNull="False" Name="programMode" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="ProgramType" ConvertEmptyStringToNull="False" Name="programType" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="ProgramDuration" ConvertEmptyStringToNull="False" Name="programDuration" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="StdsFullName" ConvertEmptyStringToNull="False" Name="studentsFullname" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="stdsSurname" ConvertEmptyStringToNull="False" Name="studentsSurname" PropertyName="Text" Type="String" />
                                            <asp:Parameter ConvertEmptyStringToNull="False" DefaultValue="N/A" Name="studentsPhoto" Type="String" />
                                            <asp:ControlParameter ControlID="StdsGender" ConvertEmptyStringToNull="False" Name="studentsGender" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="StdsDOB" ConvertEmptyStringToNull="False" DbType="Date" Name="studentsDOB" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="stdsCellnumber" ConvertEmptyStringToNull="False" Name="number" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="SupervisorsName" ConvertEmptyStringToNull="False" Name="supervisorsFullname" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="SupervisorsSurname" ConvertEmptyStringToNull="False" Name="supervisorsSurname" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="SupervisorsCellNumber" ConvertEmptyStringToNull="False" Name="supervisorsPhoneNumbers" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="SupervisorsEmail" ConvertEmptyStringToNull="False" Name="supervisorsEmail" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="NewPassword" ConvertEmptyStringToNull="False" Name="passwordCheck" PropertyName="Text" Type="String" />
                                            <asp:Parameter Direction="Output" Name="OUTMASSAGE" Size="255" Type="String" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </aside>
                            </div>
                        </div>
                    </center>
                </div>
            </div>
        </center>
    </form>
    <div>
    </div>
    </form>
</body>
</html>
