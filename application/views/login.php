<!DOCTYPE html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/login/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/login/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/login/css/form-elements.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/login/css/style.css">


    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="<?php echo base_url();?>aassets/login/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo base_url();?>assets/login/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo base_url();?>assets/login/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo base_url();?>assets/login/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?php echo base_url();?>assets/login/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

    <!-- Top content -->
    <div class="top-content">

        <div class="inner-bg">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2 text" >
                        <img src="<?php echo base_url();?>assets/login/img/backgrounds/logo.png" width="50%" title="logoGMF">
                        <h1><strong>Admin</strong> Login</h1>
                    </div>


                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                     <div class="form-top">
                      <div class="form-center">
                       <h3>Login</h3>
                   </div>

               </div>
               <div class="form-bottom" >
                   <form role="form" action="<?php echo base_url('Login/do_login/'); ?>" method="post" class="login-form">
                    <label for="username"><b>Username</b></label>
                    <input style="width: 100%" type="text" placeholder="Enter Username" name="username" required>

                    <label for="password"><b>Password</b></label>
                    <input style="width: 100%" type="password" placeholder="Enter Password" name="password" required>

                    <font color="red"><?php echo $this->session->flashdata('gagallogin')?></font>
                    <button style="margin-top: 30px" type="submit" class="btn">LOGIN</button>
                </form>

                <div >
                    <hr style="size: solid 2px;">
                    <h3 style="font-size: 15px;color: grey;">PT. GMF AeroAsia, Tbk.</h3>
                </div>
            </div>

        </div>
    </div>
</div>
</div>
</div>

</div>


<!-- Javascript -->
<script src="<?php echo base_url();?>assets/login/js/jquery-1.11.1.min.js"></script>
<script src="<?php echo base_url();?>assets/login/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo base_url();?>assets/login/js/jquery.backstretch.min.js"></script>
<script src="<?php echo base_url();?>assets/login/js/scripts.js"></script>

</body>

</html>