<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="SalaryInformationSystem.Attendance" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
<div style="height:500px">


<asp:Panel style="position:absolute;margin-left:450px; top: 20px; left: -51px; width: 510px; height: 459px;" 
        runat="server" BorderStyle="Solid" BorderColor="Black" BackColor="#CCCCCC">
    <asp:Label ID="Label6" runat="server" Text="Attendance" 
        style="position:absolute; top: 4px; left: 202px; width: 108px;" 
        Font-Bold="True" Font-Italic="False" Font-Names="Andalus" Font-Size="X-Large" 
        Font-Underline="True" ForeColor="Red"></asp:Label>
<asp:Label ID="Label1" runat="server" Text="Date" 
        style="position:absolute; top: 91px; left: 52px;" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" 
        style="position:absolute; top: 151px; left: 52px;" Font-Size="Large">Employee ID</asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label" 
        style="position:absolute; top: 271px; left: 52px;" Font-Size="Large">In Time</asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label" 
        style="position:absolute; top: 211px; left: 52px;" Font-Size="Large">Employee Name</asp:Label>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            
            <ContentTemplate>
            <asp:TextBox ID="TextBox1" runat="server" 
        style="position:absolute; top: 91px; left: 208px; width: 215px;"></asp:TextBox>
        
        <asp:TextBox ID="TextBox2" runat="server" 
        style="position:absolute; top: 151px; left: 208px; width: 215px;" 
        AutoCompleteType="Disabled" AutoPostBack="true" ontextchanged="TextBox2_TextChanged" TabIndex="1"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" 
        style="position:absolute; top: 211px; left: 208px; width: 215px;"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" 
        style="position:absolute; top: 272px; left: 208px; width: 215px;"></asp:TextBox>
        </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Label ID="Label5" runat="server" Text="Label" 
        style="position:absolute; top: 331px; left: 52px;" Font-Size="Large">Out Time</asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" 
        style="position:absolute; top: 331px; left: 208px; width: 215px;" 
        TabIndex="2"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Log In" 
        
        
        style="position:absolute; top: 404px; left: 180px; width: 78px; height: 21px;" 
        onclick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="Log Out" 
        
        
        style="position:absolute; top: 404px; left: 330px; width: 78px; height: 21px;" 
        onclick="Button2_Click"/>
</asp:Panel>
</div>
    
</asp:Content>
