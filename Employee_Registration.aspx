<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Employee_Registration.aspx.cs" Inherits="SalaryInformationSystem.WebForm3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 1159px">
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="1078px" 
            style="margin-left: 201px" Width="891px">
        

        <asp:Label ID="Label2" runat="server" Text="Employee Name :" Style="position: absolute;
            top: 169px; left: 434px;"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Email ID :" Style="position: absolute;
            top: 442px; left: 434px;"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Contact No. :" Style="position: absolute;
            top: 491px; left: 431px;"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="Date of Birth :" Style="position: absolute;
            top: 399px; left: 431px;"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="Designation :" Style="position: absolute;
            top: 543px; left: 434px; height: 22px;"></asp:Label>
        <asp:Label ID="Label8" runat="server" Text="Password :" Style="position: absolute;
            top: 886px; left: 441px;"></asp:Label>
        <asp:Label ID="Label9" runat="server" Text="Username :" Style="position: absolute;
            top: 832px; left: 438px; height: 24px;"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Employee ID :" Style="position: absolute;
            top: 127px; left: 435px;"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="position: absolute; top: 125px;
            left: 616px; width: 300px;" TabIndex="1" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="position: absolute; top: 167px;
            left: 616px; width: 300px;" TabIndex="2"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Style="position: absolute; top: 205px;
            left: 616px; width: 300px;" TabIndex="3"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Style="position: absolute; top: 394px;
            left: 618px; width: 300px; height: 22px;" TabIndex="6"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Style="position: absolute; top: 439px;
            left: 617px; width: 300px;" TabIndex="7" TextMode="Email"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" Style="position: absolute; top: 487px;
            left: 616px; width: 300px; margin-top: 0px;" TabIndex="8" MaxLength="10" 
                TextMode="Phone"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" Style="position: absolute; top: 538px;
            left: 617px; width: 300px;" TabIndex="9"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit" Style="position: absolute;
            top: 1020px; left: 624px; width: 86px;" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" Style="position: absolute;
            top: 1021px; left: 815px; width: 96px;" OnClick="Button2_Click" />
        <asp:Label ID="Label1" runat="server" Text="Employee Registration Form" Style="position: absolute;
            top: 43px; left: 492px;" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="position: absolute; top: 283px;
            left: 618px; width: 300px; height: 85px;" TextMode="MultiLine" TabIndex="5"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" Text="Sex :" 
                Style="position: absolute; top: 242px; left: 437px;"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                Style="position: absolute; top: 243px; left: 617px; width: 99px;" 
                TabIndex="4">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label11" runat="server" Text="Father's Name :" 
                Style="position: absolute; top: 209px; left: 434px;"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text="Address :" 
                
                Style="position: absolute; top: 285px; left: 437px; height: 22px; bottom: 892px;"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" 
                
                Style="position: absolute; top: 589px; left: 619px; width: 300px; height: 85px;" 
                TextMode="MultiLine" TabIndex="10"></asp:TextBox>
            <asp:Label ID="Label13" runat="server" Text="Previous Experiences :" 
                Style="position: absolute; top: 717px; left: 433px;"></asp:Label>
            <asp:Label ID="Label14" runat="server" Text="Educational Qualifications :" 
                Style="position: absolute; top: 593px; left: 434px;"></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" 
                Style="position: absolute; top: 709px; left: 616px; width: 300px; height: 85px;" 
                TextMode="MultiLine" TabIndex="11"></asp:TextBox>
            <asp:TextBox ID="TextBox11" runat="server" 
                Style="position: absolute; top: 832px; left: 617px; width: 300px;" 
                TabIndex="12"></asp:TextBox>
            <asp:TextBox ID="TextBox12" runat="server" 
                Style="position: absolute; top: 881px; left: 617px; width: 300px;" 
                TabIndex="13"></asp:TextBox>
            <asp:Label ID="Label15" runat="server" Text="Salary :" 
                Style="position: absolute; top: 930px; left: 444px;"></asp:Label>
            <asp:TextBox ID="TextBox13" runat="server" 
                Style="position: absolute; top: 929px; left: 619px; width: 300px;" 
                TabIndex="14"></asp:TextBox>
            <asp:FileUpload runat="server" ID="FileUpload1"  
                    
                
                
                style="z-index:1;position:absolute; top: 968px; left: 621px; width: 220px; height: 25px;" 
                TabIndex="15" />
            <asp:Label ID="Label16" runat="server" Text="Resume :" 
                style="position:absolute; top: 970px; left: 442px;"></asp:Label>

            <asp:Label ID="Label17" runat="server" 
                style="position:absolute; top: 930px; left: 842px; width: 76px;" 
                Text="Per Annum" ForeColor="#CCCCCC"></asp:Label>

            <asp:Label ID="Label18" runat="server" Text="DD/MM/YYYY" 
                style="position:absolute; top: 397px; left: 925px; width: 106px;" 
                Font-Size="Small" ForeColor="#666666"></asp:Label>

            </asp:Panel>
    </div>
</asp:Content>
