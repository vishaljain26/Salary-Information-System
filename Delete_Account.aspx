<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Delete_Account.aspx.cs" Inherits="SalaryInformationSystem.WebForm5" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="height: 546px">
     <asp:Panel ID="Panel2" runat="server" BackColor="Silver" BorderStyle="Solid" 
         Height="535px" style="margin-left: 256px" Width="653px">
     
     <asp:Label ID="Label1" runat="server" Text="DELETE USER" 
         style="position:absolute; top: 33px; left: 488px; width: 222px;" 
         Font-Bold="True" Font-Italic="True" Font-Names="Andalus" Font-Size="XX-Large" 
         ForeColor="#0066CC"></asp:Label>
     <asp:Label ID="Label2" runat="server" Text="Employee ID:" 
         style="position:absolute; top: 145px; left: 321px;"></asp:Label>
     <asp:Label ID="Label3" runat="server" Text="Employee Name:" 
         style="position:absolute; top: 205px; left: 321px;"></asp:Label>
     <asp:Label ID="Label4" runat="server" Text="Designation:" 
         style="position:absolute; top: 265px; left: 321px;"></asp:Label>
     <asp:Label ID="Label5" runat="server" Text="Reason For Leave:" 
         style="position:absolute; top: 325px; left: 321px;"></asp:Label>
     <asp:TextBox ID="TextBox1" runat="server" 
         style="position:absolute; top: 144px; left: 495px; width: 271px;"></asp:TextBox>
         <asp:TextBox ID="TextBox2" runat="server" 
         style="position:absolute; top: 204px; left: 495px; width: 271px;"></asp:TextBox>
         <asp:TextBox ID="TextBox3" runat="server" 
         style="position:absolute; top: 264px; left: 495px; width: 271px;"></asp:TextBox>
         <asp:TextBox ID="TextBox4" runat="server" 
         
         style="position:absolute; top: 324px; left: 495px; width: 271px; height: 104px;" 
         TextMode="MultiLine"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" 
             style="position:absolute; top: 470px; left: 498px; width: 99px;" 
             Text="Continue" onclick="Button1_Click" />
             <asp:Button ID="Button2" runat="server" 
             style="position:absolute; top: 470px; left: 664px; width: 99px;" 
             Text="Cancel" onclick="Button2_Click" />
     </asp:Panel>
 </div>
</asp:Content>
