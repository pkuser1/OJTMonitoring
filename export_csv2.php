<?php
    include("connect.php");
    ob_start();
    if(isset($_POST['export'])){
    $typeofcompany           = $_POST['typeofcompany'];
    $endorsement           = $_POST['endorsement'];
    $waiver           = $_POST['waiver'];
    $moa           = $_POST['moa'];
    $evaluation           = $_POST['evaluation'];
    $course           = $_POST['course'];
    $year           = $_POST['year'];
    $selecttable           = $_POST['selecttable'];
    $col_idnum= $_POST['col_idnum'];
    $col_name= $_POST['col_name'];
    $col_courseyear= $_POST['col_courseyear'];
    $col_mobile_number= $_POST['col_mobile_number'];
    $col_email= $_POST['col_email'];
    $col_status= $_POST['col_status'];
    $col_release_endorsement= $_POST['col_release_endorsement'];
    $col_receive_endorsement= $_POST['col_receive_endorsement'];
    $col_remark_endorsement= $_POST['col_remark_endorsement'];
    $col_endorsement= $_POST['col_endorsement'];
    $col_release_waiver= $_POST['col_release_waiver'];
    $col_receive_waiver= $_POST['col_receive_waiver'];
    $col_remark_waiver= $_POST['col_remark_waiver'];
    $col_waiver= $_POST['col_waiver'];
    $col_release_evaluation= $_POST['col_release_evaluation'];
    $col_receive_evaluation= $_POST['col_receive_evaluation'];
    $col_remark_evaluation= $_POST['col_remark_evaluation'];
    $col_evaluation= $_POST['col_evaluation'];   
    $col_coname= $_POST['col_coname'];
    $col_coaddress= $_POST['col_coaddress'];
    $col_company_head= $_POST['col_company_head'];
    $col_position= $_POST['col_position'];
    $col_contact_person= $_POST['col_contact_person'];
    $col_cp_position= $_POST['col_cp_position'];
    $col_typeofcompany= $_POST['col_typeofcompany'];
    $col_release_moa= $_POST['col_release_moa'];
    $col_receive_moa= $_POST['col_receive_moa'];
    $col_remark_moa= $_POST['col_remark_moa'];
    $col_moa= $_POST['col_moa'];

    if($col_idnum == "yes") { $selectable1 = "id_num AS 'ID No.'";} 
    if($col_name == "yes") { $selectable2 = "concat(last_name, ', ', first_name) AS Name";} 
    if($col_courseyear == "yes") { $selectable3 = "courseyear AS 'Course - Year'";} 
    if($col_mobile_number == "yes") {$selectable4 = "mobile_number AS 'Mobile No.'";} 
    if($col_email == "yes") { $selectable5 = "Email";} 
    if($col_status == "yes") { $selectable6 = "Status";} 
    if($col_release_endorsement == "yes") { $selectable7 = "release_endorsement AS Released'";} 
    if($col_receive_endorsement == "yes") { $selectable8 = "receive_endorsement AS Received";}
    if($col_remark_endorsement == "yes") { $selectable9 = "remark_endorsement AS Remarks";}
    if($col_endorsement == "yes") { $selectable10 = "endorsement AS Endorsement";}
    if($col_release_waiver == "yes") { $selectable11 = "release_waiver AS Released";} 
    if($col_receive_waiver == "yes") { $selectable12 = "receive_waiver AS Received"; } 
    if($col_remark_waiver == "yes") { $selectable13 = "remark_waiver AS Remarks";} 
    if($col_waiver == "yes") { $selectable14 = "waiver AS Waiver";} 
    if($col_release_evaluation == "yes") {$selectable15 = "release_evaluation AS Released";} 
    if($col_receive_evaluation == "yes") {$selectable16 = "receive_evaluation AS Received";} 
    if($col_remark_evaluation == "yes") {$selectable17 = "remark_evaluation AS Remarks";} 
    if($col_evaluation == "yes") {$selectable18 = "evaluation AS Evaluation";} 
    if($col_coname == "yes") {$selectable19 = "coname AS 'Company Name'";} 
    if($col_coaddress == "yes") {$selectable20 = "coaddress AS Address";} 
    if($col_company_head == "yes") {$selectable21 = "company_head AS 'Company Head'";} 
    if($col_position == "yes") {$selectable22 = "position AS Position";} 
    if($col_contact_person == "yes") {$selectable23 = "contact_person AS 'Contact Person'";} 
    if($col_cp_position == "yes") {$selectable24 = "cp_position AS Position";} 
    if($col_typeofcompany == "yes") {$selectable25 = "typeofcompany AS 'Company Type'";} 
    if($col_release_moa == "yes") {$selectable26 = "release_moa AS Released";}
    if($col_receive_moa == "yes") {$selectable27 = "receive_moa AS Received";} 
    if($col_remark_moa == "yes") {$selectable28 = "remark_moa AS Remarks";} 
    if($col_moa == "yes") {$selectable29 = "MOA";}

    $selecttable = "";

    for($i = 1 ; $i < 30 ; $i++) {
        if($selectable.$i) {

        }
    }

    // filename for export
    $csv_filename = 'db_export_'.$selecttable .'_'.date('Y-m-d').'.csv';

     if($endorsement == "All") {
        $where_endorsement = '(endorsement = "yes" or endorsement = "no" or endorsement = "")';
    } else {
        $where_endorsement = ' endorsement = "'.$endorsement.'" ';
    }

    if($waiver == "All") {
       $where_waiver = '(waiver = "yes" or waiver = "no" or waiver = "")';
    }else {
        $where_waiver = ' waiver = "'.$waiver.'" ';
    }

    if($moa == "All") {
        $where_moa = '(moa = "yes" or moa = "no") or moa = ""';
    }else {
        $where_moa = ' moa = "'.$moa.'" ';
    }

    if($evaluation == "All") {
       $where_evaluation = '(evaluation = "yes" or evaluation = "no" or evaluation = "")';
    }else {
        $where_evaluation = ' evaluation = "'.$evaluation.'" ';
    }

    if($typeofcompany == "All") {
       $where_typeofcompany = '(typeofcompany = "Private" or typeofcompany = "Government" or typeofcompany = "")';
    }else {
        $where_typeofcompany = ' typeofcompany = "'.$typeofcompany.'" ';
    }

    if($course == "All") {
       $where_course = 'courseyear LIKE "BS%"';
    }else {
        $where_course = 'courseyear LIKE "'.$courseyear.'%"';
    }

    if($year == "All") {
       $where_year = 'courseyear LIKE "BS%"';
    }else {
        $where_year = 'courseyear LIKE "%'.$year.'"';
    }

    if ($selecttable == "Students") {
        $selecttable = 'idnum, concat(last_name, ", ", first_name) as name, courseyear, mobile_number, email, release_endorsement, receive_endorsement, remark_endorsement, endorsement, release_waiver, receive_waiver, remark_waiver, waiver, release_evaluation, receive_evaluation, remark_evaluation, evaluation, release_moa, receive_moa, remark_moa, moa, status, coname, typeofcompany';
        $where = 'WHERE '.$where_endorsement.' AND '.$where_waiver.' AND '.$where_moa.' AND '.$where_evaluation.' AND '.$where_typeofcompany.' AND '.$where_course.' AND '.$where_year." ORDER BY last_name, first_name";     
    } else if ($selecttable == "Company") { 
        $selecttable = 'count(students.coid) as "countstudent",coid, coname, coaddress, company_head, position, typeofcompany';
        $where = 'WHERE coname != "No Company AND '.$where_moa.' AND '.$where_typeofcompany." ORDER BY coname";
    } else {
        $selecttable = '*';
        $where = 'WHERE '.$where_endorsement.' AND '.$where_waiver.' AND '.$where_moa.' AND '.$where_evaluation.' AND '.$where_typeofcompany.' AND '.$where_course.' AND '.$where_year." ORDER BY coname, last_name, first_name";
    }
    // create empty variable to be filled with export data
    $csv_export = '';
    // query to get data from database
    $query = mysqli_query($connect, "SELECT ".$selecttable." FROM students LEFT JOIN company on students.coid = company.coid ".$where);
    $field = mysqli_field_count($connect);
    // create line with field names
    for($i = 0; $i < $field; $i++) {
    $csv_export.= mysqli_fetch_field_direct($query, $i)->name.';';
    }
    // newline (seems to work both on Linux & Windows servers)
    $csv_export.= '
    ';
    // loop through database query and fill export variable
    while($row = mysqli_fetch_array($query)) {
    // create line with field values
    for($i = 0; $i < $field; $i++) {
    $csv_export.= '"'.$row[mysqli_fetch_field_direct($query, $i)->name].'";';
    }
    $csv_export.= '
    ';
    }
    ob_end_clean();
    // Export the data and prompt a csv file for download
    header("Content-type: text/x-csv");
    header("Content-Disposition: attachment; filename=".$csv_filename."");
    echo($csv_export);
    exit();
}
?>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Company</title>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,300|Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="css/datepicker.css">
    <link rel="icon" href="img/scisLogo.png">
  </head>
      <header class="main-header" id="header">
        <div class="bg-color wrapper">
            <!--nav-->
            <nav class="nav navbar-default navbar-fixed-top stroke">
                <div class="container-fluid">
                    <div class="col-md-12">
                        <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mynavbar" aria-expanded="false" aria-controls="navbar">
                            <span id="bars" class="fa fa-bars"></span>
                        </button>
                            <a href="index.php" class="navbar-brand"><img class="logoNav img-responsive" src="img/NewLogo.png"></a>
                        </div>
                        <div class="collapse navbar-collapse navbar-right borderXwidth" id="mynavbar">
                            <ul class="nav navbar-nav ">
                                <li><a href="index.php"><span class="fa fa-user space"></span>List of Students</a></li>
                                <li><a href="add.php"><span class="fa fa-plus space"></span>Add Student</a></li>
                                <li><a href="company.php"><span class="fa fa-building space"></span>list of Companies</a></li>
                                <li><a href="addcompany.php"><span class="fa fa-plus space"></span>Add Company</a></li>
                                <li class="active"><a href="export_csv.php"><span class="fa fa-download space"></span>Export Data</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <!--/ nav-->
        </div>
    </header>
  <body>
    <section class="section-padding">
    <div class="container">
        <div class="row">
                <div class="col text-center">
                    <h1 class="top-title"><span class="title">Export </span>Data</h1>
                </div>
                <a href="javascript:" id="return-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>

                <form method="post" action="">

                    <div class="row">
                        <div class="form-group">
                            <h2 class="head-title titleFont">Tables</h2>

                            <div class="col-md-2 text-center">
                                <select name="selecttable" class="form-control touch">
                                    <?php $selecttable = (isset($_POST['selecttable']) ? strtolower($_POST['selecttable']) : NULL);  ?>
                                    <option value="Students" <?php if($selecttable == 'students'){ echo 'selected'; } ?>>Students</option>
                                    <option value="Company" <?php if($selecttable == 'company'){ echo 'selected'; } ?>>Company</option>
                                    <option value="Students+Company" <?php if($selecttable == 'students+Company'){ echo 'selected'; } ?>>Students + Company</option>
                                </select>
                            </div>
                            <div class="col-md-3 text-center">
                                <h3>STUDENT COLUMN</h3>
                                <input type = "checkbox" name = "col_idnum" value = "yes" checked> <span>ID No.</span> <br>
                                <input type = "checkbox" name = "col_name" value = "yes" checked> <span>Name</span> <br>
                                <input type = "checkbox" name ="col_courseyear" value = "yes" checked><span> Course And Year</span> <br>
                                <input type = "checkbox" name ="col_mobile_number" value = "yes" checked> <span>Mobile No.</span> <br>
                                <input type = "checkbox" name ="col_email" value = "yes" checked> <span>Email</span> <br>
                                <h4>REQUIREMENT COLUMN</h4>
                                <input type = "checkbox" name ="col_status" value = "yes"> <span>Overall Status</span> <br>
                                <h5>ENDORSEMENT</h5>
                                <input type = "checkbox" name ="col_release_endorsement" value = "yes"> <span> Date Released</span> <br>
                                <input type = "checkbox" name ="col_receive_endorsement" value = "yes"> <span> Date Received </span> <br>
                                <input type = "checkbox" name ="col_remark_endorsement" value = "yes"> <span> Remarks </span> <br>
                                <input type = "checkbox" name ="col_endorsement" value = "yes" checked> <span>Status</span> <br>
                                <h5>WAIVER</h5>
                                <input type = "checkbox" name ="col_release_waiver" value = "yes"> <span>Date Released</span> <br>
                                <input type = "checkbox" name ="col_receive_waiver" value = "yes"> <span>Date Received</span> <br>
                                <input type = "checkbox" name ="col_remark_waiver" value = "yes"> <span>Remarks</span> <br>
                                <input type = "checkbox" name ="col_waiver" value = "yes" checked> <span>  </span>Status<br>
                                <h5>EVALUATION</h5>
                                <input type = "checkbox" name ="col_release_evaluation" value = "yes"> <span>Date Released</span> <br>
                                <input type = "checkbox" name ="col_receive_evaluation" value = "yes"> <span>Date Received</span> <br>
                                <input type = "checkbox" name ="col_remark_evaluation" value = "yes"> <span>Remarks</span> <br>
                                <input type = "checkbox" name ="col_evaluation" value = "yes" checked> <span>  </span>Status<br>
                            


                            </div>
                            <div class="col-md-3 text-center">
                                <h4>COMPANY COLUMN</h4>
                                <input type = "checkbox" name "col_coname" value = "yes" checked> <span> Company Name </span> <br>
                                <input type = "checkbox" name "col_coaddress" value = "yes" checked> <span> Address </span> <br>
                                <input type = "checkbox" name "col_company_head" value = "yes"> <span> Company Head </span> <br>
                                <input type = "checkbox" name "col_position" value = "yes"> <span>  </span> CH Position <br>
                                <input type = "checkbox" name "col_contact_person" value = "yes" checked> <span> Contact Person </span> <br>
                                <input type = "checkbox" name "col_cp_position" value = "yes" checked> <span> CP Position </span> <br>
                                <input type = "checkbox" name "col_typeofcompany" value = "yes"> Type of Company <span>  </span> <br>
                                <h5>MOA</h5>
                                <input type = "checkbox" name "col_release_moa" value = "yes"> <span>Date Released </span> <br>
                                <input type = "checkbox" name "col_receive_moa" value = "yes"> <span>Date Received</span> <br>
                                <input type = "checkbox" name "col_remark_moa" value = "yes"> <span>Remarks</span> <br>
                                <input type = "checkbox" name "col_moa" value = "yes"> <span> </span>Status<br>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <h2 class="head-title titleFont">Student Information</h2>
                        <hr class="style-four">

                        <div class="form-group">
                            <div class="col-md-3">
                                <h4> COURSE </h4>
                                <input type="radio" name="course" value="All" required checked> All<br>    
                                <input type="radio" name="course" value="BSCS" required> BSCS<br>
                                <input type="radio" name="course" value="BSIT" required> BSIT<br>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-3">
                                <h4> YEAR LEVEL </h4>
                                <input type="radio" name="year" value="All" required checked> All<br>    
                                <input type="radio" name="year" value="BSCS" required> 3rd year<br>
                                <input type="radio" name="year" value="BSIT" required> 4th year<br>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-3">
                                <h4> ENDORSEMENT </h4>
                                <input type="radio" name="endorsement" value="All" required checked> All<br>    
                                <input type="radio" name="endorsement" value="yes" required> Submitted<br>
                                <input type="radio" name="endorsement" value="no" required> Not Submitted<br>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-3">
                                <h4> WAIVER </h4>                                  
                                <input type="radio" name="waiver" value="All" required checked> All<br>    
                                <input type="radio" name="waiver" value="yes" required> Submitted<br>
                                <input type="radio" name="waiver" value="no" required> Not Submitted<br>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-3">
                                <h4> EVALUATION </h4>                                     
                                <input type="radio" name="evaluation" value="All" required checked> All<br>    
                                <input type="radio" name="evaluation" value="yes" required> Submitted<br>
                                <input type="radio" name="evaluation" value="no" required> Not Submitted<br>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <h2 class="head-title titleFont paddingTopSlight">Company Information</h2>
                        <hr class="style-four">

                        <div class="form-group">
                            <div class="col-md-3">
                                <h4> COMPANY TYPE </h4>  
                                <input type="radio" name="typeofcompany" value="All" required checked> All<br>    
                                <input type="radio" name="typeofcompany" value="Private" required> Private<br>
                                <input type="radio" name="typeofcompany" value="Government" required> Government<br>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-3">
                                <h4> MEMORANDUM OF AGREEMENT </h4>  
                                <input type="radio" name="moa" value="All" required checked> All<br>    
                                <input type="radio" name="moa" value="yes" required> Submitted<br>
                                <input type="radio" name="moa" value="no" required> Not Submitted<br> 
                            </div>
                        </div>
                    </div>

                    <div class="form-group text-center paddingTopSlight">
                        <button type="submit" name="export" class="btn btn-md btn-success paddingTopSlight" value="Export data"><span class="fa fa-download space"></span> Export Data</button>
                    </div>

                </form>

        </div>
    </div>
    </section>
    <!---->
    <!---->

    <!---->
    <!-- end-->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/smoothScroll.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/datepicker.js"></script>
    <script src="js/jquery.are-you-sure.js"></script>

    <script>
        $('form').areYouSure();
    </script>
    <script>
    $('.date').datepicker({
        format: 'MM dd yyyy',
    })
    </script>
  </body>
</html>