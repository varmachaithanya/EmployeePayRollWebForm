<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="EmployeePayRoleForm.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="bootstrap.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 38px;
        }
        .auto-style4 {
            height: 66px;
        }
        .container1{
    background-color:aliceblue;
    width:650px;
}
#Label8{
    background-color:aquamarine;

}
    </style>
            <link href="../bootstrap.css" rel="stylesheet" />

</head>
<body>
<nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" runat="server" href="~/">EMPLOYEE PAR ROLE</a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" title="Toggle navigation" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
            <ul class="navbar-nav flex-grow-1">
                <li class="nav-item"><a class="nav-link" runat="server" href="Default.aspx"><--BACK</a></li>
            </ul>
        </div>
    </div>
</nav>
     <br />
 <br />
 <br />
    <center>
 <div class="container1">

     <div class="row">
         <div class="col-8" style="margin: 0px auto;">
             <form id="form1" style="margin: 0px auto;" runat="server">
                 <div>
                 </div>
                 <table class="auto-style1">
                     <tr>
                         <td class="auto-style4" colspan="2">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="EMPLOYEE PAY ROLE FORM"></asp:Label>
                         </td>
                         <td class="auto-style4"></td>
                         <td class="auto-style4"></td>
                         <td class="auto-style4"></td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                         </td>
                         <td>
                             <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">
                             <asp:Label ID="Label2" runat="server" Text="ProfileImage"></asp:Label>
                         </td>
                         <td class="auto-style2">
                             <asp:RadioButton ID="RadioButton1" runat="server" />
                             <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/profile1.png" />
                             <asp:RadioButton ID="RadioButton2" runat="server" />
                             <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/profile2.png" />
                             <asp:RadioButton ID="RadioButton3" runat="server" />
                             <asp:Image ID="Image3" runat="server" ImageUrl="~/Assets/profile3.png" />
                             <asp:RadioButton ID="RadioButton4" runat="server" />
                             <asp:Image ID="Image4" runat="server" ImageUrl="~/Assets/profile4.png" />
                         </td>
                         <td class="auto-style2"></td>
                         <td class="auto-style2"></td>
                         <td class="auto-style2"></td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                         </td>
                         <td>
                             <asp:RadioButtonList ID="RadioButtonList1" CssClass="form-control border-0" runat="server" RepeatDirection="Horizontal">
                                 <asp:ListItem>Male</asp:ListItem>
                                 <asp:ListItem>Female</asp:ListItem>
                             </asp:RadioButtonList>
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
                         </td>
                         <td>
                             <asp:RadioButtonList ID="RadioButtonList2" runat="server"  RepeatDirection="Horizontal" Width="305px">
                                 <asp:ListItem>MCA</asp:ListItem>
                                 <asp:ListItem>CSE</asp:ListItem>
                                 <asp:ListItem>IT</asp:ListItem>
                                 <asp:ListItem>MBA</asp:ListItem>
                             </asp:RadioButtonList>
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style3">
                             <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
                         </td>
                         <td class="auto-style3">
                             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                         </td>
                         <td class="auto-style3"></td>
                         <td class="auto-style3"></td>
                         <td class="auto-style3"></td>
                     </tr>
                     <tr>
                         <td class="auto-style2">
                             <asp:Label ID="Label6" runat="server" Text="StartDate"></asp:Label>
                         </td>
                         <td class="auto-style2">
                             <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                         </td>
                         <td class="auto-style2"></td>
                         <td class="auto-style2"></td>
                         <td class="auto-style2"></td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label7" runat="server" Text="Notes"></asp:Label>
                         </td>
                         <td>
                             <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Button ID="Button1" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button_Update" Text="Update" />
                         </td>
                         <td>
                             &nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>&nbsp;</td>
                         <td>
                             &nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
             </form>
         </div>
     </div>
 </div>
       
        </div>
    </div>
     <div style="clear:both;height:4px"></div>
    </ItemTemplate>
 </asp:Repeater>
</center>
</body>
</html>
