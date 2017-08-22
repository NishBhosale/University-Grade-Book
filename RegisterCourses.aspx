<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterCourses.aspx.cs" Inherits="RegisterCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="plTerm" runat="server">
            <asp:Table ID="tblTerm" runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><asp:Label ID="lblTerm" runat="server" Font-Bold="True" Text="Select a Term"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server">       <asp:DropDownList ID="ddlTerm" runat="server" >
            <asp:ListItem Value="NA">--Select Term--</asp:ListItem>
            
<asp:ListItem>Spring 2017</asp:ListItem>
            
<asp:ListItem>Summer 2017</asp:ListItem>
            
<asp:ListItem>Fall 2017</asp:ListItem>
        
</asp:DropDownList>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ColumnSpan="2">     
        <asp:Button ID="btnTermSubmit" runat="server" Font-Bold="True" Height="35px" Text="Submit" Width="88px" OnClick="btnTermSubmit_Click" /></asp:TableCell>
                    <asp:TableCell runat="server" ></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
           <asp:Panel ID="pnltblCourseMain" runat="server">        
       
        <asp:Table ID="tblCourseMain" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" VerticalAlign="Top"><asp:Label ID="lblCourses" runat="server" Text="Courses" Font-Bold="true" ></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"> <asp:ListBox ID="lstbCourses" runat="server">
                    <asp:ListItem Value="ALL">ALL</asp:ListItem>
            <asp:ListItem Value="CEG">Computer Engineering - CEG</asp:ListItem>
            <asp:ListItem Value=" CS">Computer Science - CS</asp:ListItem>
            <asp:ListItem Value="EE">Electrical Engineering - EE</asp:ListItem>
            <asp:ListItem Value="ME">Mechanical and Materials eng- ME</asp:ListItem>
            <asp:ListItem Value="IHE">Industrial &amp; Hum Fac Engr - IHE</asp:ListItem>
            <asp:ListItem Value="ISE">Industrial and System Engr -ISE</asp:ListItem>
        </asp:ListBox>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" VerticalAlign="Top"><asp:Label ID="lblCourseLevel" runat="server" Font-Bold="True" Text="Course Level"></asp:Label> </asp:TableCell>
           <asp:TableCell runat="server">    <asp:ListBox ID="lstbCourseLevel" runat="server" Height="56px">
            <asp:ListItem>ALL</asp:ListItem>
            <asp:ListItem Value="Grad">Graduate</asp:ListItem>
            <asp:ListItem Value="Undergrad">Undergraduate</asp:ListItem>
        </asp:ListBox>

           </asp:TableCell>
                     </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">   <asp:Button ID="btnCourseSearch" runat="server" Font-Bold="True" Height="27px" Text="Search" Width="72px" OnClick="btnCourseSearch_Click" />
            </asp:TableCell>
                    </asp:TableRow>
            <asp:TableRow runat="server">
            </asp:TableRow>
            <asp:TableRow runat="server">
            </asp:TableRow>
            <asp:TableRow runat="server">
            </asp:TableRow>
        </asp:Table>
            </asp:Panel>
        
        
        
 
   
        
        
        
 
        
        
     
        
        
        
 
   
        
        
        
 
        
      
        
        
        
 
   
        
        
        
 
        
        
     
        
        
        
 
   
        
        
        
 
        
        <asp:GridView ID="gvCourselist" runat="server" GridLines="None"   HeaderStyle-BorderStyle="NotSet" HeaderStyle-BackColor="#79CAFF" AutoGenerateColumns="False" Width="100%">
            <AlternatingRowStyle BackColor="#D9ECFF" BorderStyle="None" BorderWidth="0px" />
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("COURSE_NO") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="Course_No" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="COURSE_NO" HeaderText="Course Number"></asp:BoundField>
                <asp:BoundField DataField="COURSE_NAME" HeaderText="Course Name" />
                <asp:BoundField DataField="CREDITS" HeaderText="Credits" />
                <asp:BoundField DataField="DEPT_ID" HeaderText="Department" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5px" />

<HeaderStyle BackColor="#79CAFF"></HeaderStyle>

            <RowStyle BackColor="#F2FBFF" HorizontalAlign="Center" VerticalAlign="Middle" Height="30px" />
        </asp:GridView>
        
       
        
    </form>
</body>
</html>
