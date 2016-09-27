<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="MyAccount.aspx.cs" Inherits="SalaryInformationSystem.MyAccount" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 644px">
        <asp:Label ID="Label1" runat="server" Text="USER INFORMATION " Style="position: absolute;
            font-style: oblique; font-size: xx-large; left: 495px; top: 15px; width: 361px;"></asp:Label>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderColor="Black" Width="1245px"
            Style="margin-top: 90px">
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow BorderStyle="Solid" BorderColor="Black">
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1" BackColor="Aqua">ID</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="2" BackColor="Aqua">NAME</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1" BackColor="Aqua">SEX</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="Black" BorderStyle="Solid">
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="id" Font-Bold="false"
                        BackColor="White" ColumnSpan="1"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="name" Font-Bold="false"
                        BackColor="White" ColumnSpan="2"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="sex" Font-Bold="false"
                        BackColor="White" ColumnSpan="1"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="black" BorderStyle="Solid">
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="TableCell1" Font-Bold="false"
                        BackColor="black" ColumnSpan="4"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="black" BorderStyle="Solid">
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1" BackColor="Aqua">FATHER'S NAME</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="f_name" Font-Bold="false"
                        BackColor="White" ColumnSpan="1"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1" BackColor="Aqua">CONTACT NUMBER</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="ph_no" Font-Bold="false"
                        BackColor="White" ColumnSpan="1"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="Black" BorderStyle="Solid">
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1" BackColor="Aqua">DESIGNATION</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="designation" Font-Bold="false"
                        BackColor="White" ColumnSpan="1"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1" BackColor="Aqua">D.O.B</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="dob" Font-Bold="false"
                        BackColor="White" ColumnSpan="1"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="Black" BorderStyle="Solid">
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1" BackColor="Aqua">E-MAIL ID</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="email" Font-Bold="false"
                        BackColor="White" ColumnSpan="1"></asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="360px" Font-Bold="true" ColumnSpan="1" BackColor="Aqua">SALARY</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="salary" Font-Bold="false"
                        BackColor="White" ColumnSpan="1"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="black" BorderStyle="Solid">
                    <asp:TableCell BorderWidth="1" Width="350px" Height="20px" ID="TableCell2" Font-Bold="false"
                        BackColor="black" ColumnSpan="4"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="Black" BorderStyle="Solid">
                    <asp:TableCell BorderWidth="1" Height="85px" Width="360px" Font-Bold="true" ColumnSpan="1"
                        BackColor="Aqua">ADDRESS</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Height="85px" Width="350px" ID="address" Font-Bold="false"
                        BackColor="White" ColumnSpan="3"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="Black" BorderStyle="Solid">
                    <asp:TableCell BorderWidth="1" Height="85px" Width="360px" Font-Bold="true" ColumnSpan="1"
                        BackColor="Aqua">EDUCATIONAL QUALIFICATION</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="85px" ID="edu_qual" Font-Bold="false"
                        BackColor="White" ColumnSpan="3">
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="Black" BorderStyle="Solid">
                    <asp:TableCell BorderWidth="1" Height="85px" Width="360px" Font-Bold="true" ColumnSpan="1"
                        BackColor="Aqua" RowSpan="10">PREVIOUS EXPERIENCES</asp:TableCell>
                    <asp:TableCell BorderWidth="1" Width="350px" Height="85px" ID="pre_exp" Font-Bold="false"
                        BackColor="White" ColumnSpan="3"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="Button1" runat="server" Text="UPDATE" 
                style="position:absolute; top: 566px; left: 330px; width: 139px;" 
                onclick="Button1_Click"/>
        </asp:Panel>
    </div>
</asp:Content>
