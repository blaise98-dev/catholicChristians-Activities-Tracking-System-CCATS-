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
            background: url("members/images/parish2.jpg")no-repeat center center fixed;
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
            <h1>CATHOLIC Christian <span>ACCESS POINT</span></h1>

        </header>
        <section>
            <div id="container_demo">

                <?php 
                if (isset($_POST['visitor_oferring_now'])) {



                    function GUID()
                    {
                      return strtoupper(bin2hex(openssl_random_pseudo_bytes(16)));
                    }
                    $trcode = GUID();                  
                      
                  $offernow= mysqli_query($conn, " INSERT INTO `non_registered_user_offering`(`id`, `firstname`, `lastname`, `offeringtype`, `amount`, `mobile`, `parish`,`trcode`)
                     values('','" . $_POST['vfname'] . "','" . $_POST['vlname'] . "','" . $_POST['offeringtype'] . "',
                     '" . $_POST['amount'] . "','" . $_POST['vmobile'] . "','" . $_POST['vparish'] . "','$trcode')") or die(mysqli_error($conn));

                     if ($offernow) {
                        echo "<script>alert('Your offering is saved successfully!!')</script>";
                        header("Location:index.php");
                     }

                  $data = array(
                        "telephoneNumber" => '25'.$_POST['vmobile'],
                        "amount" =>  $_POST['amount'],
                        "organizationId" => 'e8f3a6da-dda2-429f-8cfb-935fc996a7f5',
                        "description" => 'visitor Payment for offering',
                        "callbackUrl" => "http://myonlineprints.com/payments/callback",
                        "transactionId" => "$trcode"
                  
                      );
                      $headers = array(
                        "Content-Type" => "application/json",
                        "Accept" => "application/json",
                        "Host" => "localhost:8080",
                        "Content-Length" => 290
                      );
                      $url = "https://opay-api.oltranz.com/opay/paymentrequest";
                      $data = http_build_query($data);
                      $ch = curl_init();
                      curl_setopt($ch, CURLOPT_URL, $url);
                      curl_setopt($ch, CURLOPT_POST, true);
                      curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                      curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
                      curl_setopt($ch, CURLOPT_POSTFIELDS, $headers);
                      curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
                      $result = curl_exec($ch);
                      $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
                      curl_close($ch);
                  
                  

                }
                ?>

                <div id="wrapper" style="background-color: azure;">
                        <form action="#" method="POST" autocomplete="on">
                            <h1> Visitor Offering form</h1>
                            <p>
                                <input id="usernamesignup" name="vfname" required="required" type="text" placeholder="First name" />
                            </p>
                            <p>
                                <input id="usernamesignup" name="vlname" required="required" type="text" placeholder="Last name" />
                            </p>
                            <div class="control-group">
                                <p>
                                <select class="input focused" name="vparish" id="focusedInput" required>
                                    <option value="" selected>Select parish...</option>

                                    <?php
                                    $sql = mysqli_query($conn, "select * from admin where username !='developer' and username !='admin' and role='parish'");
                                    while ($rows = mysqli_fetch_array($sql)) { ?>

                                        <option value="<?php echo $rows['admin_id']; ?>"><?php echo $rows['username']; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                                </p>
                            </div><br>
                            <p>
                                <select name="offeringtype" id="usernamesignup" required="required" type="text">
                                    <option value="" id="usernamesignup" selected>Offering type</option>
                                    <option value="giving">Giving</option>
                                    <option value="offering">Offering</option>

                                </select>
                            </p>
                            <br>
                            
                            <p>
                                <input id="usernamesignup" name="amount" required="required" type="number" placeholder="Amount " />
                            </p>
                            
                            <br>
                            <p>
                                <input id="passwordsignup" name="vmobile" required="required" type="text" placeholder=" Mobile Number eg: 0780000000" />
                            </p>
                            <p class="signin button">
                                <input type="submit" value="Offer now" name="visitor_oferring_now" />
                            </p>
                        </form>
                </div>
            </div>
        </section>
    </div>
</body>

</html>