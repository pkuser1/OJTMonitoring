<?php
include("connect.php");
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Company Profile</title>
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
                                <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Students <span class="caret"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                    <li><a href="index.php"><span class="fa fa-user space blue"></span>View Students</a></li>
                                    <li><a href="add.php"><span class="fa fa-user-plus space green"></span>Add Student</a></li>
                                  </ul>
                                </li>

                                <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Company <span class="caret"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                    <li><a href="company.php"><span class="fa fa-building blue space"></span>View Companies</a></li>
                                    <li><a href="addcompany.php"><span class="fa fa-plus green space"></span>Add Company</a></li>
                                  </ul>
                                </li>

                                <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Advisers <span class="caret"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                    <li><a href="adviser.php"><span class="fa fa-vcard blue space"></span>View Advisers</a></li>
                                    <li><a href="changeadviser.php"><span class="fa fa-user-plus green space"></span>Change Adviser</a></li>
                                    <li><a href="editvisit.php"><span class="fa fa-pencil-square-o orange space"></span>Edit Visit Status</a></li>
                                  </ul>
                                </li>

                                <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                    <li><a href="import_csv.php"><span class="fa fa-upload green space"></span>Import Data</a></li>
                                    <li><a href="export_csv.php"><span class="fa fa-download orange space"></span>Export Data to CSV</a></li>
                                    <li><a href="reset.php"><span class="fa fa-repeat red space"></span>Master Reset</a></li>
                                  </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <!--/ nav-->
        </div>
    </header>
    <!--/ header-->

    <section class="section-padding">
        <div class="container padding-top">

            <div class="col text-center">
                <h1 class="top-title">
                    <span class="title">
                        <?php 
                            $coid = $_GET['coid'];
                            $sql = mysqli_query($connect, "SELECT * from company WHERE coid='$coid'");
                            $row = mysqli_fetch_assoc($sql);
                            if (substr($row ['coname'], -1) == "s") {
                                echo strip_tags(htmlentities($row ['coname']))."'";
                            } else if (substr($row ['coname'], -1) != "s"){
                                 echo strip_tags(htmlentities($row ['coname']));
                            }
                        ?> 
                    </span> 
                Profile</h1>           
            </div>

            <a href="javascript:" id="return-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>

            <?php
            $coid = $_GET['coid'];
            
            $sql = mysqli_query($connect, "SELECT * from company WHERE coid='$coid'");
            if(mysqli_num_rows($sql) == 0){
                header("Location: company.php");
            }else{
                $row = mysqli_fetch_assoc($sql);
            }
            

            if(isset($_GET['action']) == 'delete'){
                $coid = $_GET['coid'];
                $con = mysqli_query($connect, "SELECT * FROM company NATURAL JOIN students WHERE company.coid=".$coid);
                if (mysqli_num_rows($con) == 0) {
                    $delete = mysqli_query($connect, "DELETE FROM company WHERE coid='$coid'");
                    if($delete){
                        echo '<div class="alert alert-danger alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> <span class = "fa fa-check-circle"></span> You have successfully <strong> deleted </strong> the company!
                                </div>';
                    }  
                } else {
                     echo '<div class="alert alert-warning alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> <span class="fa fa-exclamation-triangle"></span> You <strong> cannot delete a company </strong> with present OJT students.</div>';
    
                    }
                }
            ?>

            <table class="table table-striped table-bordered table-hover">
                <tr>
                    <th scope="row" class="info col-md-2">Company Name</th>
                    <td class="col-md-5"><?php echo strip_tags(htmlentities($row['coname'])); ?></td>
                </tr>
                <tr>
                    <th scope="row" class="info">Address</th>
                    <td><?php echo strip_tags(htmlentities($row['coaddress'])); ?></td>
                </tr>
                <tr>
                    <th scope="row" class="info">Type</th>
                    <td><?php echo $row['typeofcompany']; ?></td>
                </tr>
                <tr>
                    <th scope="row" class="info">Company Head</th>
                    <td><?php echo strip_tags(htmlentities($row['company_head'])); ?></td>
                </tr>
                <tr>
                    <th scope="row" class="info">Position</th>
                    <td><?php echo strip_tags(htmlentities($row['position'])); ?></td>
                </tr>
                <tr>
                    <th scope="row" class="info">Contact Person</th>
                    <td><?php echo strip_tags(htmlentities($row['contact_person'])); ?></td>
                </tr>
                <tr>
                    <th scope="row" class="info">Position</th>
                    <td><?php echo strip_tags(htmlentities($row['cp_position'])); ?></td>
                </tr> 
                <tr>
                    <th scope="row" class="info">Number of Students</th>
                    <?php
                     $con = mysqli_query($connect, "SELECT count(idnum) AS countidnum FROM students JOIN company ON students.coid = company.coid where coname = '".mysqli_real_escape_string($connect,$row['coname'])."'");
                        while ($row1 = mysqli_fetch_assoc($con)) {
                            echo '
                                <td><a class="touch" type="button" data-toggle="modal" data-target="#'.$row['coid'].'"><span class="countNumber">'.$row1['countidnum'].'</span></a></td>
                                    <div id="'.$row['coid'].'" class="modal fade" role="dialog">
                                      <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title text-center">'.strip_tags(htmlentities($row['coname'])).'</h4>
                                          </div>
                                          <div class="modal-body text-center">
                                            <h2 class="infoStudent">Practicum Student/s</h2>
                                        ';
                                            $con1 = mysqli_query($connect, "SELECT * from students JOIN company ON students.coid = company.coid where coname = '".mysqli_real_escape_string($connect,$row['coname'])."' ORDER BY last_name, first_name");
                                                while ($row2 = mysqli_fetch_assoc($con1)) {
                                                echo '
                                                <p class="student"><a href="profile.php?idnum='.$row2['idnum'].'">'.strip_tags(htmlentities($row2['last_name'])).", ".strip_tags(htmlentities($row2['first_name'])).'</a></p>
                                                ';
                                            }
                                         echo '
                                          </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                                          </div>
                                        </div>

                                      </div>
                                    </div>
                            ';
                        } 
                    ?>
                    
                </tr>
                <tr>
                    <tr>
                        <th scope="row" class="bg-danger text-white">Memorandum of Agreement</th>
                            <?php
                            echo '
                                <td class="col-md-6">
                                    <a class="help" data-html="true" data-toggle="tooltip" 
                                        title=" 
                                            Date Released: '.$row ['release_moa'].' 
                                            <br> 
                                            Date Received: '.$row ['receive_moa'].' 
                                            <br> Remarks: '.strip_tags($row ['remark_moa']).' " >
                                ';
                            if($row['moa'] == 'yes'){
                                echo '  
                                        <span class="glyphicon glyphicon-ok fontGlyphiconOk"></span>
                                    </a>
                                </td>';
                            }
                            else if ($row['moa'] == 'no' ){
                                    echo '  
                                        <span class="glyphicon glyphicon-remove fontGlyphiconNo"></span>
                                        </a>
                                    </td>';
                            }
                            ?>
                    </tr>
                </tr>  
            </table>

            <div class="text-center">
            <?php
                $previous = "javascript:history.go(-1)";
                if(isset($_SERVER['HTTP_REFERER'])) {
                    $previous = $_SERVER['HTTP_REFERER'];
                }
                ?>
            <a href="<?= $previous ?>" class="disableHighlight btn btn-md btn-primary"><span class="glyphicon glyphicon-menu-left space" aria-hidden="true"></span> Back</a>
            <a href="editcompany.php?coid=<?php echo $row['coid']; ?>" class="disableHighlight btn btn-md btn-success"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Edit</a>
            <?php
            echo '<a href="profilecompany.php?action=delete&coid='.$row['coid'].'" title="Delete Company" ';
            $con = mysqli_query($connect, "SELECT * FROM company NATURAL JOIN students WHERE company.coid=".$row['coid']);
            if(mysqli_num_rows($con) == 0){
            echo ' data-text="Are you sure you want to delete '.strip_tags(htmlentities($row['coname'])).
                '" data-confirm-button="Yes"
                data-cancel-button="No"
                data-confirm-button-class= "btn-success"
                data-cancel-button-class= "btn-danger"
                data-title="Delete Company" class="confirm btn btn-danger btn-sm">'; 
            } else {
                echo '
                class="btn btn-danger btn-sm disableHighlight">';
            }
            echo '<span class="glyphicon glyphicon-trash space" aria-hidden="true"></span>
                    Delete</a>
            ';
            ?>
            </div>

            
        </div> <!--End of Container Fluid-->
    </section>
    <!---->
    <!---->
    <footer class="footer">
        <div class="row text-center">
            <img class="footerLogo" src="img/newLogo.png">
            <p class="credits">Copyright © 2018 - Developed by Ismael Langit and Designed by John Allen Basco</p>
        </div>
    </footer>
    <!---->
    </div>
    <!-- end-->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/smoothScroll.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/tooltip.js"></script>
    <script src="js/jquery.confirm.js"></script>
    <script src="js/alertFade.js"></script>
    <script src="js/dropdown.js"></script>

    <script>
    $('.date').datepicker({
        format: 'yyyy-mm-dd',
    })
    </script>
        <script>
        $(".confirm").confirm();
    </script>
    
  </body>
</html>