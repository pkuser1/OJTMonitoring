<?php
include("connect.php");
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Student Profile</title>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,300|Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="icon" href="img/scisLogo.png">
  </head>
  <body>

    <div class="main-container">

    <header class="main-header" id="header">
        <div class="bg-color wrapper">
            <!--nav-->
            <nav class="nav navbar-default navbar-fixed-top stroke">
                <div class="container-fluid">
                    <div class="col-md-12">
                        <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mynavbar" aria-expanded="false" aria-controls="navbar">
                            <span class="fa fa-bars"></span>
                        </button>
                            <a href="index.php" class="navbar-brand"><img class="logoNav img-responsive" src="img/NewLogo.png"></a>
                        </div>
                        <div class="collapse navbar-collapse navbar-right borderXwidth" id="mynavbar">
                            <ul class="nav navbar-nav ">
                                <li><a href="index.php"><span class="fa fa-user space"></span>Students</a></li>
                                <li><a href="add.php"><span class="fa fa-plus space"></span>Add Student</a></li>
                                <li><a href="company.php"><span class="fa fa-building space"></span>Companies</a></li>
                                <li><a href="addcompany.php"><span class="fa fa-plus space"></span>Add Company</a></li>
                                <li><a href="adviser.php"><span class="fa fa-address-book space"></span>Advisers</a></li>
                                <li><a href="changeadviser.php"><span class="fa fa-exchange space"></span>Change Adviser</a></li>
                                <li><a href="export_csv.php"><span class="fa fa-download space"></span>Export Data</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!--/ header-->

    <section class="section-padding">
        <div class="container">

            <div class="col text-center">
                <h1 class="top-title">
                      <span class="title">
                        <?php 
                            $ad_id = $_GET['ad_id'];
                            $sql = mysqli_query($connect, "SELECT * from advisers NATURAL JOIN students NATURAL JOIN company WHERE ad_id='$ad_id'");
                            $row = mysqli_fetch_assoc($sql);
                            if (substr($row ['lname'], -1) == "s") {
                                echo htmlentities($row ['title'])." ";
                                echo htmlentities($row ['lname'])."'";
                            } else if (substr($row ['lname'], -1) != "s"){
                                 echo htmlentities($row ['title'])." ";
                                 echo htmlentities($row ['lname'])."'s";
                            }
                        ?>
                    </span>  
                Profile</h1>
            </div>

            <a href="javascript:" id="return-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>

        
            
        </div> <!--End of Container Fluid-->
    </section>
    <!---->
    <!-- end-->
    <footer id="footer" class="footer">
        <div class="row text-center">
            <img class="footerLogo" src="img/newLogo.png">
            <p class="credits">Designed and Developed by OJT2 2016-2017</p>
        </div>
    </footer>

    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/smoothScroll.js"></script>
    <script src="js/tooltip.js"></script>
    <script src="js/jquery.confirm.js"></script>

    <script>
        $(".confirm").confirm();
    </script>

    <script>
    $('.date').datepicker({
        format: 'yyyy-mm-dd',
    })
    </script>
    
  </body>
</html>