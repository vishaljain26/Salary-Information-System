<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SalaryInformationSystem.WebForm4" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 743px">
 <asp:Label ID="Label1" runat="server" Text="Home Page" Style="position: absolute;
            top: 34px; left: 520px;" Font-Bold="True" Font-Italic="True" 
        Font-Size="XX-Large"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" Style="position: absolute; top: 391px;
            left: 107px; height: 25px; width: 154px;" Font-Bold="True" Font-Underline="True"
            NavigateUrl="~/Employee_Registration.aspx" ForeColor="Red" 
        Font-Size="Large">New Registration</asp:HyperLink>
        
        <asp:HyperLink ID="HyperLink3" runat="server" 
            Style="position: absolute; top: 391px; left: 975px;" Font-Size="Large" 
            NavigateUrl="~/Salary_Calculation.aspx" Font-Bold="True" 
        ForeColor="Red">Calculate Salary</asp:HyperLink>
    <asp:HyperLink ID="HyperLink4" 
        Style="position: absolute; top: 672px; left: 405px; width: 116px;" 
        runat="server" NavigateUrl="~/Attendance.aspx" Font-Bold="True" 
        Font-Size="Large" ForeColor="Red">Attendance</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" 
        Style="position: absolute; top: 672px; left: 718px; width: 116px; height: 20px;" 
        runat="server" NavigateUrl="~/Users.aspx" Font-Bold="True" 
        Font-Size="Large" ForeColor="Red">UserAccounts</asp:HyperLink>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        style= "position: absolute; top: 431px; left: 338px; width: 237px; height: 222px;;" 
        ImageUrl="~/Images/download (8).jpg" PostBackUrl="~/Attendance.aspx"/>
          <asp:ImageButton ID="ImageButton2" runat="server" 
        style= "position: absolute; top: 431px; left: 649px; width: 237px; height: 222px;;" 
        ImageUrl="~/Images/download (5).jpg" PostBackUrl="~/Users.aspx"/>
          <asp:ImageButton ID="ImageButton3" runat="server" 
        style= "position: absolute; top: 151px; left: 58px; width: 237px; height: 222px;;" 
        ImageUrl="~/Images/download.jpg" 
        PostBackUrl="~/Employee_Registration.aspx"/>
          <asp:ImageButton ID="ImageButton4" runat="server" 
        style= "position: absolute; top: 151px; left: 912px; width: 237px; height: 222px;" 
        ImageUrl="~/Images/p.jpg" PostBackUrl="~/Salary_Calculation.aspx"/>
    <asp:Image ID="Image2" runat="server" 
        style="position:absolute; top: 74px; left: 501px; height: 170px; width: 191px;" 
        ImageUrl="~/Images/download (1).jpg"/>
</div>

</asp:Content>
