<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
    <meta charset="UTF-8" />
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
    <title>CATHOLIC CHURCH MEMBERSHIP SYSTEM</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Church Manager" />
    <meta name="keywords" content="Church, Manager, Member registration, Donation, Tithe Manager" />
    <meta name="author" content="Codrops" />
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/style3.css" />
    <link rel="stylesheet" type="text/css" href="css/animate-custom.css" />

    <style>
        .bg {
            width: 100%;
            height: 100%;
            background: url("members/images/parish.jpg")no-repeat center center fixed;
    -webkit-background-size: cover; /* For WebKit*/
    -moz-background-size: cover;    /* Mozilla*/
    -o-background-size: cover;      /* Opera*/
    background-size: cover;         /* Generic*/
        }
    </style>
</head>
<?php include_once('members/dbconn.php'); ?>

<body class="bg">
    <div class="container">
        <!-- Codrops top bar -->
        <div class="codrops-top">


            <div class="clr"></div>
        </div>
        <!--/ Codrops top bar -->
        <header>
            <h1>CATHOLIC MEMBERS <span>ACCESS POINT</span></h1>

        </header>
        <section>
            <div id="container_demo">
                <a class="hiddenanchor" id="toregister"></a>
                <a class="hiddenanchor" id="tologin"></a>
                <a class="hiddenanchor" id="tovisitoroffering"></a>

                <div id="wrapper">
                    <div id="login" class="animate form">
                        <form action="#" method="POST" autocomplete="on">
                            <h1>Log in</h1>
                            <p>
                                <label for="username" class="uname"> Username </label>
                                <input id="username" name="username" required="required" type="text" placeholder="Mobile Number" />
                            </p>
                            <p>
                                <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" />
                            </p>
                            <p class="keeplogin">
                                <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" />
                                <label for="loginkeeping">Keep me logged in</label>
                            </p>
                           
                            <p class="login button">
                                <input type="submit" value="Login" name="login" />
                            </p>
                            <a href="visitoroffering.php" class="to_register" style="text-decoration:none;">Are you visitor? return your offering/giving</a>

                        </form>
                        </br>
                        <div class="error">
                            <?php
                            include('dbconn.php');
                            ?>
                            <?php

                            if (isset($_POST['login'])) {

                                $username = $_POST['username'];
                                $password = $_POST['password'];

                                $login_query = mysqli_query($conn, "select * from members,admin where members.mobile='$username' and members.password='$password'  and members.Residence=admin.admin_id");
                                $count = mysqli_num_rows($login_query);
                                $row = mysqli_fetch_array($login_query);


                                if ($count > 0) {
                                    if ( $row['status']==1) {
                                    session_start();
                                    $_SESSION['id'] = $row['id'];

                                    $date = new DateTime();
                                    mysqli_query($conn, "insert into user_log (username,login_date,admin_id)values('$username','$logindate'," . $row['id'] . ")") or die(mysqli_error($conn));

                                    header('location:members/dashboard.php');
                                } else {
                                    echo "
                                <div>
                                    <p style='color: red;'>Please contact parish admin to give you access!
                                    </p>
                                </div>";
                                }
                                } 
                                else {
                                    echo "
                                <div>
                                    <p style='color: red;'>Wrong username or password! Try Again
                                    </p>
                                </div>";
                                }
                            }
                            ?>
                        </div>

                        <p class="change_link">
                            <a href="admin/index.php" class="to_register">Are you admin?</a>

                            Not a member yet ?
                            <a href="#toregister" class="to_register">Join us</a>

                        </p>

                        
                    </div>


                    <div id="register" class="animate form">
                        <form action="reg.php" method="POST" autocomplete="on">
                            <h1> Sign up </h1>
                            <p>
                                <label for="usernamesignup" class="uname">First Name</label>
                                <input id="usernamesignup" name="fname" required="required" type="text" placeholder="John" />
                            </p>
                            <p>
                                <label for="usernamesignup" class="uname">Last Name</label>
                                <input id="usernamesignup" name="lname" required="required" type="text" placeholder="John" />
                            </p>
                            <p>
                                <label for="usernamesignup" class="uname">Gender</label>

                                <select name="gender" id="usernamesignup" required="required" type="text">
                                    <option value="Select Gender" id="usernamesignup">Select Gender</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>

                                </select>
                            </p>
                            <p>
                                <label for="usernamesignup" class="uname">Date Of Birth</label>
                                <input id="usernamesignup" type="date" name="birthday" min="1900-01-02" />
                            </p>

                            <p>
                                <label for="usernamesignup" class="uname">Parish in which you were baptized</label>
                                <input id="usernamesignup" name="baptism_parish" required="required" type="text" placeholder="Mushaka parish" />
                            </p>
                            <div class="control-group">
                                <p>
                                <p>
                                    <label for="usernamesignup" class="uname">Current parish</label>
                                </p>
                                <select class="input focused" name="Residence" id="focusedInput" required>
                                    <option value="" selected>Select here ...</option>

                                    <?php
                                    $sql = mysqli_query($conn, "select * from admin where username !='developer' and username !='admin'");
                                    while ($rows = mysqli_fetch_array($sql)) { ?>

                                        <option value="<?php echo $rows['admin_id']; ?>"><?php echo $rows['username']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                                </p>
                            </div>
                            <p>
                                <label for="usernamesignup" class="uname">Place of Birth</label>
                                <input id="usernamesignup" name="pob" required="required" type="text" placeholder="Nyarugenge" />
                            </p>
                            <div class="control-group">
                                <p>

                                    <select class="input focused" name="subparish" id="focusedInput" required>
                                        <option value="" selected>Subparish/Santarali</option>

                                        <?php
                                        $sql = mysqli_query($conn, "select * from subparish");
                                        while ($rows = mysqli_fetch_array($sql)) { ?>

                                            <option value="<?php echo $rows['id']; ?>"><?php echo $rows['subparish_name']; ?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </p>
                            </div>
                            <br>
                            <div class="control-group">
                                <p>
                                    <select class="input focused" name="community" id="focusedInput" required>
                                        <option value="" selected>Community/umuryangoremezo</option>

                                        <?php
                                        $sql = mysqli_query($conn, "select * from community");
                                        while ($rows = mysqli_fetch_array($sql)) { ?>

                                            <option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </p>
                            </div>
                            <br>
                            <div class="control-group">
                                <select class="input focused" name="ministry" id="usernamesignup" required="required" type="text">
                                    <option value="">Choir/ Association/movement you belong in</option>
                                    <?php
                                    $retrieve = "SELECT * FROM `choirs`";
                                    $retrievechoirs = mysqli_query($conn, $retrieve) or die(mysqli_error($conn));

                                    while ($choirs = mysqli_fetch_assoc($retrievechoirs)) {
                                    ?>

                                        <option value="<?php echo $choirs['name']; ?>"><?php echo $choirs['name']; ?></option>
                                    <?php }
                                    $retrieve = "SELECT * FROM `associations`";
                                    $retrieveassociations = mysqli_query($conn, $retrieve) or die(mysqli_error($conn));

                                    while ($associations = mysqli_fetch_assoc($retrieveassociations)) {
                                    ?>

                                        <option value="<?php echo $associations['name']; ?>"><?php echo $associations['name']; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            </p>
                            <p>
                                <label for="emailsignup" class="youmail" data-icon="e"> Your email</label>
                                <input id="emailsignup" name="email" required="required" type="email" placeholder="mysupermail@mail.com" />
                            </p>
                            <p>
                                <label for="passwordsignup" class="youpasswd" data-icon="p">Mobile Number </label>
                                <input id="passwordsignup" name="mobile" required="required" type="text" placeholder="eg.0780000000" />
                            </p>
                            <p>
                                <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Password </label>
                                <input id="passwordsignup_confirm" name="password" required="required" type="password" placeholder="eg. X8df!90EO" />
                            </p>
                            <p class="signin button">
                                <input type="submit" value="Sign up" name="submit" />
                            </p>
                            <p class="change_link">
                                Already a member ?
                                <a href="#tologin" class="to_register"> Log in Here </a>
                            </p>
                        </form>
                    </div>

                

                </div>
            </div>
        </section>
    </div>
</body>

</html>