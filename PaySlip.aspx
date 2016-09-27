<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaySlip.aspx.cs" Inherits="SalaryInformationSystem.WebForm6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 693px">
    
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" 
            
            
            style="position: absolute; top: 99px; left: 134px; width: 873px; height: 507px;" 
            BackColor="#CCCCFF">
            <asp:Label ID="Label1" runat="server" Text="V.S.G ENTERPRISES" 
                style="position:absolute; top: 49px; left: 318px; width: 390px;" 
                Font-Bold="False" Font-Names="Cooper Black" Font-Size="X-Large" 
                Font-Underline="True"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="EMP ID :" 
                style="position: absolute; top: 99px; left: 256px;" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="EMP NAME :" 
                style="position: absolute; top: 136px; left: 254px;" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="DESIGNATION :" 
                style="position: absolute; top: 172px; left: 255px;" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="LEAVES TAKEN :" 
                style="position: absolute; top: 213px; left: 256px;" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="SALARY TO BE WITHDRAWN :" 
                style="position: absolute; top: 421px; left: 255px;" Font-Bold="True"></asp:Label>

                <asp:Label ID="Label7" runat="server" Text="" 
                style="position: absolute; top: 98px; left: 555px;" ></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="" 
                style="position: absolute; top: 138px; left: 555px;" ></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="" 
                style="position: absolute; top: 172px; left: 558px; height: 25px;" ></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="" 
                style="position: absolute; top: 214px; left: 555px;" ></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="" 
                style="position: absolute; top: 421px; left: 555px;" ></asp:Label>
                <asp:Label ID="Label14" runat="server" Text="ESIC :" 
                style="position: absolute; top: 346px; left: 254px; width: 151px;" 
                Font-Bold="True"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="PF :" 
                style="position: absolute; top: 384px; left: 255px; width: 151px;" 
                Font-Bold="True"></asp:Label>
                <asp:Label ID="Label16" runat="server" Text="" 
                style="position: absolute; top: 347px; left: 555px;" ></asp:Label>
                <asp:Label ID="Label17" runat="server" Text="" 
                style="position: absolute; top: 382px; left: 555px;" ></asp:Label>

            <asp:Label ID="Label12" runat="server" Text="PAYSLIP" style="position:absolute; top: 9px; left: 378px; width: 149px;" 
                Font-Bold="False" Font-Names="Cooper Black" Font-Size="X-Large" 
                Font-Underline="True"></asp:Label>

            <asp:Label ID="Label13" runat="server" Text="Label" style="position:absolute; top: 49px; left: 737px; width: 120px;" 
                Font-Bold="False" 
                Font-Underline="True"></asp:Label>

            <asp:Label ID="Label18" runat="server" Text="SALARY PER DAY :" 
                style="position:absolute; top: 248px; left: 255px;" Font-Bold="True"></asp:Label>

            <asp:Label ID="Label19" runat="server" Text="BASIC :" style="position:absolute;top: 279px; left: 255px;" 
                Font-Bold="True"></asp:Label>

            <asp:Label ID="Label20" runat="server" Text="DA :"
                style="position:absolute; top: 311px; left: 255px;" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label21" runat="server" Text="" 
                style="position: absolute; top: 281px; left: 556px;" ></asp:Label>
                <asp:Label ID="Label22" runat="server" Text="" 
                style="position: absolute; top: 246px; left: 555px; height: 20px;" ></asp:Label>
                <asp:Label ID="Label23" runat="server"
                style="position:absolute; top: 311px; left: 554px;" Font-Bold="False"></asp:Label>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
