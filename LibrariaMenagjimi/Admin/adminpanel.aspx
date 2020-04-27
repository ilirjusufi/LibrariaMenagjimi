<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="LibrariaMenagjimi.Admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
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
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
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
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts"
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
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="listo.aspx">Kerko Lista</a><a class="nav-link" href="listo.aspx">kerko Lista Autor</a></nav>
                                
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
                        
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                      <h1 class="mt-4">Paneli</h1>
                      <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">
                                        Libra te regjistruar: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Autor te regjistruar: <asp:Label ID="labelautort" runat="server" Text=""></asp:Label> </div>
                                    
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Auntori i fundit: <asp:Label ID="labelautorifundit" runat="server" Text=""></asp:Label></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Libra e fundit: <asp:Label ID="labellibraefundit" runat="server" Text=""></asp:Label></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4"> </div>
                            </div>
                            <div class="col-xl-6"> </div>
                        </div>
                        <div class="card mb-4">
<div class="card-body">
              <div class="table-responsive">
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="libraria" ForeColor="#333333" GridLines="None" Width="1118px" AllowSorting="True">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:CommandField ShowDeleteButton="True" />
                          <asp:BoundField DataField="TitulliLibri" HeaderText="TitulliLibri" SortExpression="TitulliLibri" />
                          <asp:BoundField DataField="Pershkrimi" HeaderText="Pershkrimi" SortExpression="Pershkrimi" />
                          <asp:BoundField DataField="GjiniaLetrare" HeaderText="GjiniaLetrare" SortExpression="GjiniaLetrare" />
                          <asp:BoundField DataField="Autori" HeaderText="Autori" SortExpression="Autori" />
                          <asp:BoundField DataField="Shteti" HeaderText="Shteti" SortExpression="Shteti" />
                      </Columns>
                      <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                      <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                      <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                      <SortedAscendingCellStyle BackColor="#FDF5AC" />
                      <SortedAscendingHeaderStyle BackColor="#4D0000" />
                      <SortedDescendingCellStyle BackColor="#FCF6C0" />
                      <SortedDescendingHeaderStyle BackColor="#820000" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="libraria" runat="server" ConnectionString="<%$ ConnectionStrings:librariaConnectionString %>" SelectCommand="select TitulliLibri,Pershkrimi,GjiniaLetrare, Autori,Shteti from Librat inner join Autort on Librat.AutoriID=Autort.AutoriID" DeleteCommand="DELETE FROM Librat WHERE (TitulliLibri = @original_TitulliLibri)" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                      <DeleteParameters>
                          <asp:Parameter Name="original_TitulliLibri" Type="String" />
                      </DeleteParameters>
                  </asp:SqlDataSource>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:librariaConnectionString %>" DeleteCommand="DELETE FROM [Librat] WHERE [LibraID] = @original_LibraID AND (([TitulliLibri] = @original_TitulliLibri) OR ([TitulliLibri] IS NULL AND @original_TitulliLibri IS NULL)) AND (([Pershkrimi] = @original_Pershkrimi) OR ([Pershkrimi] IS NULL AND @original_Pershkrimi IS NULL)) AND (([AutoriID] = @original_AutoriID) OR ([AutoriID] IS NULL AND @original_AutoriID IS NULL)) AND (([GjiniaLetrare] = @original_GjiniaLetrare) OR ([GjiniaLetrare] IS NULL AND @original_GjiniaLetrare IS NULL))" InsertCommand="INSERT INTO [Librat] ([TitulliLibri], [Pershkrimi], [AutoriID], [GjiniaLetrare]) VALUES (@TitulliLibri, @Pershkrimi, @AutoriID, @GjiniaLetrare)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Librat]" UpdateCommand="UPDATE [Librat] SET [TitulliLibri] = @TitulliLibri, [Pershkrimi] = @Pershkrimi, [AutoriID] = @AutoriID, [GjiniaLetrare] = @GjiniaLetrare WHERE [LibraID] = @original_LibraID AND (([TitulliLibri] = @original_TitulliLibri) OR ([TitulliLibri] IS NULL AND @original_TitulliLibri IS NULL)) AND (([Pershkrimi] = @original_Pershkrimi) OR ([Pershkrimi] IS NULL AND @original_Pershkrimi IS NULL)) AND (([AutoriID] = @original_AutoriID) OR ([AutoriID] IS NULL AND @original_AutoriID IS NULL)) AND (([GjiniaLetrare] = @original_GjiniaLetrare) OR ([GjiniaLetrare] IS NULL AND @original_GjiniaLetrare IS NULL))">
                      <DeleteParameters>
                          <asp:Parameter Name="original_LibraID" Type="Int32" />
                          <asp:Parameter Name="original_TitulliLibri" Type="String" />
                          <asp:Parameter Name="original_Pershkrimi" Type="String" />
                          <asp:Parameter Name="original_AutoriID" Type="Int32" />
                          <asp:Parameter Name="original_GjiniaLetrare" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="TitulliLibri" Type="String" />
                          <asp:Parameter Name="Pershkrimi" Type="String" />
                          <asp:Parameter Name="AutoriID" Type="Int32" />
                          <asp:Parameter Name="GjiniaLetrare" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="TitulliLibri" Type="String" />
                          <asp:Parameter Name="Pershkrimi" Type="String" />
                          <asp:Parameter Name="AutoriID" Type="Int32" />
                          <asp:Parameter Name="GjiniaLetrare" Type="String" />
                          <asp:Parameter Name="original_LibraID" Type="Int32" />
                          <asp:Parameter Name="original_TitulliLibri" Type="String" />
                          <asp:Parameter Name="original_Pershkrimi" Type="String" />
                          <asp:Parameter Name="original_AutoriID" Type="Int32" />
                          <asp:Parameter Name="original_GjiniaLetrare" Type="String" />
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
                            <div class="text-muted">Copyright &copy; Menagjimi i libraris 2020</div>
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
