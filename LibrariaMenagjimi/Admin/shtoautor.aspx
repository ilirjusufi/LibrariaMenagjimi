<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shtoautor.aspx.cs" Inherits="LibrariaMenagjimi.Admin.shtoautor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>ShtoAutor</title>
        <link href="styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
    <form id="form1" runat="server">
                <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="adminpanel.aspx">Menagjimi i Libraris</a><button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button
            ><!-- Navbar Search-->
                </nav>
                <div class="input-group">
                   vendi i searqi
                    <div class="input-group-append">
                       vendi i butonit
                    </div>
                </div>
            <!-- Navbar-->
           
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Kontrolli</div>
                            <a class="nav-link" href="adminpanel.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Paneli</a
                            >
                            <div class="sb-sidenav-menu-heading">Interfsi</div>
                            <a class="nav-link collapsed" href="adminpanel.aspx" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i> Regjistro</div>
                                
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="shtoautor.aspx">Shto Autor</a><a class="nav-link" href="shtolibra.aspx">Shto Libra</a></nav>
                                
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i> Gjenero</div>
                                
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="listo.aspx">Kerko Lista</a><a class="nav-link" href="listo.aspx">Kerko lista Autor</a></nav>
                                
                            </div>
                            
<div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
              <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
<div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="login.html">Login</a><a class="nav-link" href="register.html">Register</a><a class="nav-link" href="password.html">Forgot Password</a></nav>
                                    </div>
<div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="401.html">401 Page</a><a class="nav-link" href="404.html">404 Page</a><a class="nav-link" href="500.html">500 Page</a></nav>
                                    </div>
                                </nav>
                            </div>
</div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small"></div>
                        
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                      <h1 class="mt-4">Shto edito dhe fshij autor</h1>
                      <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                           
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4"> </div>
                            </div>
                            <div class="col-xl-6"> </div>
                        </div>
                        <div class="card mb-4">
<div class="card-body">
             <dic>Emri i plot i autorit</dic>
             <div><asp:TextBox ID="Emriautorittxt" runat="server" Width="1120px"></asp:TextBox>
             </div>
             <br>
             
             <dic>Shteti i Autorit</dic>
             
             <div>
                 <asp:TextBox ID="shtetiautorittxt" runat="server" Width="1120px"></asp:TextBox></div>
             <br>
             <div>
                 <asp:Button ID="Button1" runat="server" Width="1120px" Text="Shto Autor" class="btn-success" OnClick="Button1_Click" />
             </div>
    <center>
        <br />
             <asp:Label ID="textlabel" runat="server" Text="" class="text-danger"></asp:Label></center>
             <br>

              <div class="table-responsive"><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AutoriID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1120px">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="AutoriID" HeaderText="AutoriID" InsertVisible="False" ReadOnly="True" SortExpression="AutoriID" />
                      <asp:BoundField DataField="Autori" HeaderText="Autori" SortExpression="Autori" />
                      <asp:BoundField DataField="Shteti" HeaderText="Shteti" SortExpression="Shteti" />
                  </Columns>
                  <EditRowStyle BackColor="#7C6F57" />
                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#E3EAEB" />
                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F8FAFA" />
                  <SortedAscendingHeaderStyle BackColor="#246B61" />
                  <SortedDescendingCellStyle BackColor="#D4DFE1" />
                  <SortedDescendingHeaderStyle BackColor="#15524A" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:librariaConnectionString %>"  DeleteCommand="DELETE FROM [Autort] WHERE [AutoriID] = @original_AutoriID AND (([Autori] = @original_Autori) OR ([Autori] IS NULL AND @original_Autori IS NULL)) AND (([Shteti] = @original_Shteti) OR ([Shteti] IS NULL AND @original_Shteti IS NULL))" InsertCommand="INSERT INTO [Autort] ([Autori], [Shteti]) VALUES (@Autori, @Shteti)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Autort]" UpdateCommand="UPDATE [Autort] SET [Autori] = @Autori, [Shteti] = @Shteti WHERE [AutoriID] = @original_AutoriID AND (([Autori] = @original_Autori) OR ([Autori] IS NULL AND @original_Autori IS NULL)) AND (([Shteti] = @original_Shteti) OR ([Shteti] IS NULL AND @original_Shteti IS NULL))">
                      <DeleteParameters>
                          <asp:Parameter Name="original_AutoriID" Type="Int32" />
                          <asp:Parameter Name="original_Autori" Type="String" />
                          <asp:Parameter Name="original_Shteti" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="Autori" Type="String" />
                          <asp:Parameter Name="Shteti" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="Autori" Type="String" />
                          <asp:Parameter Name="Shteti" Type="String" />
                          <asp:Parameter Name="original_AutoriID" Type="Int32" />
                          <asp:Parameter Name="original_Autori" Type="String" />
                          <asp:Parameter Name="original_Shteti" Type="String" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
             </div>
                          
                           
                           
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Menagjimi i libraris</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </form>
</body>
</html>
