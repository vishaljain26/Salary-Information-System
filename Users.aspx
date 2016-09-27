<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Users.aspx.cs" Inherits="SalaryInformationSystem.Users" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 500px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            Style="position: absolute; top: 136px; left: 291px; height: 273px; width: 648px;" 
            OnRowCommand="GridView1_RowCommand" DataSourceID="SqlDataSource1">
            <Columns>
             <asp:TemplateField HeaderText="Actions" ItemStyle-Width="11%">
                    <ItemTemplate>
                        <table width="100%">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="edit" CommandName="Edit" CommandArgument='<%#Eval("emp_id") %>' ImageUrl="~/Images/b.jpg"
                                        ToolTip="Edit" runat="server" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="Del" CommandName="Delete" CommandArgument='<%#Eval("emp_id") %>' ImageUrl="~/Images/delete_icon.jpg"
                                        ToolTip="Delete" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
               
                <asp:BoundField DataField="emp_id" HeaderText="Employee ID" 
                    SortExpression="emp_id" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="emp_name" HeaderText="Name" 
                    SortExpression="emp_name" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="designation" HeaderText="Designation" 
                    SortExpression="designation" ItemStyle-HorizontalAlign="Center" />
               
            </Columns>
        </asp:GridView>
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            SelectCommand="SELECT [emp_id], [emp_name], [designation] FROM [new_reg]">
        </asp:SqlDataSource>
     
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="MV Boli" 
            Font-Size="X-Large" Text="List Of Users" 
            style="position:absolute; top: 19px; left: 502px; height: 46px; width: 179px;" 
            ForeColor="Red"></asp:Label>
     
    </div>
</asp:Content>
