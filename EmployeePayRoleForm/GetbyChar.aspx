<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetbyChar.aspx.cs" Inherits="EmployeePayRoleForm.GetbyChar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Enter a character"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get" />
        </p>
         <center>
     <asp:GridView ID="GridView1" runat="server" BackColor="skyblue" BorderColor="White" ForeColor="Black" Width="1000px" AutoGenerateColumns="False">
         <HeaderStyle BackColor="red" />

         <Columns>
             <asp:BoundField DataField="Id" HeaderText="ID" SortExpression="StudentId" Visible="true" />
             <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="StudentName" Visible="true" />
             <asp:TemplateField HeaderText="Student Image" Visible="true">
                 <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProfileImage") %>' />
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="Gender" HeaderText="Address" SortExpression="Student_Address" Visible="true" />
             <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Email" Visible="true" />
             <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Branch" Visible="true" />
             <asp:BoundField DataField="StartDate" HeaderText="Date" SortExpression="Reg_Date" Visible="true" />
             <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Reg_Date" Visible="true" />


         </Columns>
     </asp:GridView>
    </form>
</body>
</html>
