<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SalaryInformationSystem.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script language="javascript" type="text/javascript">
    function OnWindowLoad() {
        document.getElementById("TextBox1").focus();
    }
    </script>
    <title></title>
</head>
<body background="Images/back.png" onload="OnWindowLoad()">
    <form id="form1" runat="server">
    <p>
        &nbsp;</p>
        <asp:Image ID="Image1" runat="server" 
        style="z-index:1;position:absolute; top: 91px; left: 524px; width: 209px; height: 103px;" 
        ImageUrl="~/Images/logo.png"  />
    <div style="height: 247px; width: 488px; margin-left: 377px; margin-top: 232px; background-image: url('Images/login.png')">
    
        <asp:TextBox ID="TextBox1" runat="server" 
            
            style="position:absolute; top: 347px; left: 579px; height: 28px; width: 244px;" 
            BackColor="#A96526" BorderStyle="Solid" ForeColor="Black"></asp:TextBox>
    
        <asp:TextBox ID="TextBox2" runat="server" 
            
            style="position:absolute; top: 407px; left: 578px; width: 244px; height: 28px;" 
            BackColor="#935926" BorderStyle="Solid" TextMode="Password"></asp:TextBox>
    
        <asp:ImageButton ID="ImageButton1" runat="server" 
            style="position:absolute; top: 483px; left: 764px; width: 60px; height: 20px;" 
            ImageUrl="~/Images/abc.png" onclick="ImageButton1_Click"/>
    
    </div>
    </form>
    </body>
</html>
