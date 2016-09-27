<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Salary_Calculation.aspx.cs" Inherits="SalaryInformationSystem.WebForm2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height: 325px">
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="331px" 
        style="margin-left: 216px" Width="760px">
   


    <asp:Label ID="Label3" runat="server" Text="Number of days worked :" 
        style="position:absolute; top: 162px; left: 376px;" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="SALARY CALCULATION" 
        style="position:absolute; top: 31px; left: 468px; margin-bottom: 1px; width: 312px;" 
        Font-Bold="True" Font-Size="X-Large"></asp:Label>
<asp:Label ID="Label4" runat="server" Text="Salary per day :" 
        style="position:absolute; top: 210px; left: 379px;" Font-Bold="True"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Calculate Salary" 
        style="position:absolute; top: 277px; left: 533px;" onclick="Button1_Click" 
            TabIndex="2"/>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="position:absolute; top: 108px; left: 573px; width: 240px;" 
            AutoCompleteType="Disabled" AutoPostBack="True" 
            ontextchanged="TextBox1_TextChanged" TabIndex="1"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="position:absolute; top: 160px; left: 573px; width: 240px;"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="position:absolute; top: 209px; left: 573px; width: 240px;"></asp:TextBox>



<asp:Label ID="Label2" runat="server" Text="Employee ID :" 
        style="position:absolute; top: 113px; left: 377px;" Font-Bold="True"></asp:Label>
         <asp:Label ID="Label5" runat="server" Text="Label" 
            style="position:absolute; top: 273px; left: 794px;" Font-Bold="True"></asp:Label>
         <asp:Button ID="Button2" runat="server" Text="Generate PaySlip" 
            style="position:absolute; top: 207px; left: 823px; height: 26px; width: 154px;" 
            onclick="Button2_Click"/>
         <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
         </asp:Panel>

</div>
    
    
</asp:Content>
