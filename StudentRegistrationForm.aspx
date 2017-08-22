<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentRegistrationForm.aspx.cs" Inherits="StudentRegistrationForm" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="JQuery/jquery-ui.css" />
    <script src="JQuery/jquery-1.12.4.js" ></script>
  <script src="JQuery/jquery-ui.js"></script>
   <script>
  $( function() {
      $("#tbDOB").datepicker({
      changeMonth: true,
      changeYear: true
    });
  } );
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
        <asp:Panel ID="Panel1"  runat="server" BackColor="#F7F6F8" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Width="60%" Height="100%">       
          
         
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Width="120px"><asp:Label ID="lbSName" runat="server" Font-Bold="true" Text="Student Name"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server" Width="180px"><asp:TextBox ID="tbSFName" runat="server" Width="140px"></asp:TextBox>
</asp:TableCell>
                    <asp:TableCell runat="server" Width="180px"><asp:TextBox ID="tbSMName" runat="server" Width="140px"></asp:TextBox>
</asp:TableCell>
                    <asp:TableCell runat="server" Width="180px"><asp:TextBox ID="tbSLName" runat="server" Width="140px"></asp:TextBox>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"><asp:Label ID="Label2" runat="server" ForeColor="#999999" Text="First Name"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"><asp:Label ID="Label3" runat="server" ForeColor="#999999" Text="Middle Name"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"><asp:Label ID="Label4" runat="server" ForeColor="#999999" Text="Last Name"></asp:Label>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" >
                <asp:Label ID="UserNameLabel" runat="server" Font-Bold="true" AssociatedControlID="UserName">User Name:</asp:Label>
                        </asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="2">  <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ForeColor="Red" Text="*"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" >
                          <asp:Label ID="PasswordLabel" runat="server" Font-Bold="true" AssociatedControlID="Password">Password:</asp:Label></asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="2">
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ForeColor="Red" Text="*"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Width="150px">
                        <asp:Label ID="ConfirmPasswordLabel" runat="server" Font-Bold="true" AssociatedControlID="ConfirmPassword" >Confirm Password:</asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="2">
                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    </asp:TableRow>

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Width="120px"><asp:Label ID="lblDOB" runat="server" Text="Date of Birth" Font-Bold="true"></asp:Label>
</asp:TableCell>
                   <asp:TableCell runat="server" Width="120px"><asp:TextBox ID="tbDOB" runat="server" Width="140px"></asp:TextBox>
</asp:TableCell>
                      <asp:TableCell runat="server" ColumnSpan="2"><asp:Label ID="lblGender" runat="server" Font-Bold="true" Text="Gender" ></asp:Label>
    
    &nbsp;          <asp:DropDownList ID="ddlGender" runat="server" Width="140px"><asp:ListItem></asp:ListItem>
<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem>
<asp:ListItem>NA</asp:ListItem>
</asp:DropDownList>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server"> <asp:TableCell runat="server"> </asp:TableCell></asp:TableRow>
                <asp:TableRow runat="server"> <asp:TableCell runat="server"> </asp:TableCell></asp:TableRow>

                <asp:TableRow runat="server" >                  
                    <asp:TableCell runat="server" VerticalAlign="Top" ><asp:Label ID="lblAddress" runat="server" Font-Bold="true" Text="Address"></asp:Label>
</asp:TableCell>
                      <asp:TableCell runat="server" ColumnSpan="3" >
                    <asp:Table ID="tblAddress" BorderStyle="Solid" BorderWidth="1" Width="100%" runat="server">
                        <asp:TableRow runat="server"> <asp:TableCell runat="server"> </asp:TableCell></asp:TableRow>
                            <asp:TableRow runat="server">
                           
                    <asp:TableCell runat="server">&nbsp;&nbsp;<asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                   
                    <asp:TableCell runat="server">&nbsp;&nbsp;<asp:Label ID="lblStreetAdd" runat="server" ForeColor="#999999" Text="Street Address"></asp:Label>
</asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">
                   
                    <asp:TableCell runat="server">&nbsp;&nbsp;<asp:TextBox ID="tbStreetAdd2" runat="server"></asp:TextBox>
</asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">                  
                    <asp:TableCell runat="server">&nbsp;&nbsp;<asp:Label ID="lblStreetAdd2" runat="server" ForeColor="#999999" Text="Street Address 2"></asp:Label>
</asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">
                   
                    <asp:TableCell runat="server">&nbsp;&nbsp;<asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
</asp:TableCell>
                    <asp:TableCell runat="server"><asp:TextBox ID="tbState" runat="server"></asp:TextBox>
</asp:TableCell>

                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">&nbsp;&nbsp;<asp:Label ID="lblCity" runat="server" ForeColor="#999999" Text="City"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"><asp:Label ID="lblState" runat="server" ForeColor="#999999" Text="State / Province"></asp:Label>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    
                    <asp:TableCell runat="server">&nbsp;&nbsp;<asp:TextBox ID="tbPostalCode" runat="server"></asp:TextBox>
</asp:TableCell>
                    <asp:TableCell runat="server"><asp:DropDownList ID="ddlCountry" runat="server"></asp:DropDownList>
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    
                    <asp:TableCell runat="server">&nbsp;&nbsp;<asp:Label ID="lblPostal" runat="server" ForeColor="#999999" Text="Postal / Zip Code"></asp:Label>
</asp:TableCell>
                    <asp:TableCell runat="server"><asp:Label ID="lblCountry" runat="server" ForeColor="#999999" Text="Country"></asp:Label>
</asp:TableCell>
                    
                </asp:TableRow>
                </asp:Table>
                        </asp:TableCell>
            </asp:TableRow>
                <asp:TableRow runat="server"> <asp:TableCell runat="server"> </asp:TableCell></asp:TableRow><asp:TableRow runat="server"> <asp:TableCell runat="server"> </asp:TableCell></asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><asp:Label ID="lblContactNo" runat="server" Font-Bold="true" Text="Contact No"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="2">   <asp:TextBox ID="tbAreaCode" runat="server"></asp:TextBox>&nbsp; &nbsp;&nbsp;<asp:TextBox ID="tbPhoneNo" runat="server"></asp:TextBox> </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="2">   <asp:Label ID="lblAreaCode" runat="server" ForeColor="#999999" Text="Area Code"></asp:Label> &nbsp; &nbsp&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="lblPhNo" runat="server" ForeColor="#999999" Text="Phone Number"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><asp:Label ID="lblAlternatNo" runat="server" Font-Bold="true" Text="Alternate no"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server">  <asp:TextBox ID="tbAlternateNo" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                      <asp:TableCell runat="server">   <asp:Label ID="lblMajor" runat="server" Font-Bold="True" Text="Major"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server"><asp:DropDownList ID="ddlMajor" runat="server">
            </asp:DropDownList></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><asp:Label ID="lblEnrollYear" runat="server" Font-Bold="true" Text="Enrollment Year"></asp:Label></asp:TableCell>
                    <asp:TableCell runat="server"><asp:DropDownList runat="server" ID="ddlEnrollYear"></asp:DropDownList></asp:TableCell>
                </asp:TableRow>
                 
                <asp:TableRow runat="server" Height="50px">
                    <asp:TableCell runat="server"></asp:TableCell>
                      </asp:TableRow>
                 <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"> <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Text="Submit" /></asp:TableCell>
                </asp:TableRow>

            </asp:Table>
            
            
           
            
            
        </asp:Panel>   
    
    </div>

       
      

       
        
        
     
      
        
      

       
      

       
    </form>
</body>
</html>
