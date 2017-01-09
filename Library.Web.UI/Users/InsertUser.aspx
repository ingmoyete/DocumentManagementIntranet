﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertUser.aspx.cs" Inherits="Library.Web.UI.Users.InsertUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Insert User</title>

    <!-- Latest compiled and minified CSS and style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <link href="../css.css" rel="stylesheet" />
    <!-- End Latest compiled and minified CSS and style -->
</head>
<body>
    <form id="InsertUser" runat="server">
        <!-- navbar =========================================================== -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../Default.aspx" id="brand">Library</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="../Book/MainList.aspx">Books</a></li>
                        <li class="active"><a href="MainList.aspx">Users</a></li>
                        <li><a href="../Loan/MainListLoan.aspx">Loans</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>

        <!-- Error message =========================================================== -->
        <div class="container">
            <asp:Panel ID="PanelInsertUser" Visible="false" CssClass="alert alert-danger" runat="server">
                <p>
                    <asp:Literal ID="LiteralInsertUser" runat="server"></asp:Literal></p>
            </asp:Panel>
        </div>

        <!-- Page Header =========================================================== -->
        <div class="container">
            <div class="page-header">
                <h1>Insert</h1>
            </div>
        </div>

        <div class="container lastItem">
            <p>Fill all the mandatory fields</p>
        </div>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <!-- Form =========================================================== -->
        <div class="container removePaddingLeft lastItem">
            <%this.boxName.Attributes.Add("minlength", "3"); %>
            <div class="col-sm-4">
                <p>Name</p>
                <asp:TextBox ID="boxName" runat="server" ClientIDMode="Static" CssClass="required"></asp:TextBox>
                <div class="errorContainer"></div>
            </div>

            <%this.boxLastName.Attributes.Add("minlength", "2"); %>
            <div class="col-sm-4">
                <p>Last Name</p>
                <asp:TextBox ID="boxLastName" runat="server" ClientIDMode="Static" CssClass="required"></asp:TextBox>
                <div class="errorContainer"></div>
            </div>

            <%this.boxDNI.Attributes.Add("minlength", "3"); %>
            <%this.boxDNI.Attributes.Add("maxlength", "6"); %>
            <div class="col-sm-4">
                <p>DNI</p>
                <asp:TextBox ID="boxDNI" runat="server" CssClass="required digits" ClientIDMode="Static"></asp:TextBox>
                <div class="errorContainer"></div>
            </div>

            <div class="clearfix"></div>

            <%this.boxUserName.Attributes.Add("minlength", "3"); %>
            <div class="col-sm-4">
                <p>User Name</p>
                <asp:TextBox ID="boxUserName" runat="server" CssClass="required" ClientIDMode="Static"></asp:TextBox>
                <div class="errorContainer"></div>
            </div>

            <%this.boxPass.Attributes.Add("minlength", "4"); %>
            <div class="col-sm-4">
                <p>PassWord</p>
                <asp:TextBox ID="boxPass" runat="server" CssClass="required" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                <div class="errorContainer"></div>

            </div>

            <div class="col-sm-4">
                <p>Region</p>
                <asp:DropDownList ID="DdlRegion" runat="server"></asp:DropDownList>
                <div class="errorContainer"></div>

            </div>

            <div class="clearfix"></div>

            <div class="col-sm-4">
                <p>SignUpDate</p>
                <asp:TextBox ID="boxSignUp" runat="server" CssClass="required australianDate datePick" ClientIDMode="Static"></asp:TextBox>
                <div class="errorContainer"></div>

            </div>

            <div class="col-sm-4">
                <p>RenewalDate</p>
                <asp:TextBox ID="boxRenewal" runat="server" CssClass="required australianDate datePick" ClientIDMode="Static"></asp:TextBox>
                <div class="errorContainer"></div>

            </div>
        </div>

        <!-- Insert and Cancel Button =========================================================== -->
        <div class="container lastItem">
            <asp:Button ID="ButInsertUser" CssClass="insertButton btn btn-sm btn-warning" runat="server" Text="Insert" OnClick="ButInsertUser_Click" />
            <a href="MainList.aspx" class="btn btn-sm btn-default">Cancel</a>
        </div>

        <!-- End of form =========================================================== -->
    </form>

    <div class="clearfix lastItemDouble"></div>

    <!-- Footer =========================================================== -->
    <div class="footer container-fluid navbar navbar-inverse">
        <div class="col-xs-12 ">
            <p class="footerBrand text-center">Library (c)  - 2015</p>
        </div>
    </div>
    <!-- Js files =========================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

    <%-- Include plugins here --%>
    <script src="../jsFiles/jquery.validate.min.js"></script>
    <script src="../jsFiles/additional-methods.min.js"></script>

    <%-- End plugins --%>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <!-- Js validation =========================================================== -->

    <%-- Date picker --%>
    <script>
        $(function () {
            $(".datePick").datepicker({
                dateFormat: 'dd/mm/yy'
            }).on('change', function () { $(".datePick").valid(); })
        });
    </script>

    <%-- Add Custom validations --%>
    <script>
        $.validator.addMethod(
        "australianDate",
        function (value, element) {
            // put your own logic here, this is just a (crappy) example
            return value.match(/^(((((0[1-9])|(1\d)|(2[0-8]))\/((0[1-9])|(1[0-2])))|((31\/((0[13578])|(1[02])))|((29|30)\/((0[1,3-9])|(1[0-2])))))\/((20[0-9][0-9])|(19[0-9][0-9])))|((29\/02\/(19|20)(([02468][048])|([13579][26]))))$/);
        },
        "Please enter a date in the format dd/mm/yyyy."
        );
    </script>

    <%-- Client Validations --%>
    <script type="text/javascript">

        $("#boxName").on('change', function () { $("#boxName").valid(); })
        $("#boxLastName").on('change', function () { $("#boxLastName").valid(); })
        $("#boxDNI").on('change', function () { $("#boxDNI").valid(); })
        $("#boxUserName").on('change', function () { $("#boxUserName").valid(); })
        $("#boxPass").on('change', function () { $("#boxPass").valid(); })
        $("#SignUpDate").on('change', function () { $("#SignUpDate").valid(); })

    </script>

</body>
</html>
