<!DOCTYPE html>
<html lang="en" class="h-100" id="login-page1">

<head>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-116687139-4"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-116687139-4');
    </script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>GhanaCUC Wireless</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="main/css/style.css" rel="stylesheet">
    <script src="main/js/modernizr-3.6.0.min.js"></script>
</head>

<body class="h-100">
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50"><circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10"/></svg>
        </div>
    </div>
    <div class="login-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card">
                            <div class="card-body">
                                <div class="logo text-center">
                                    <a href="index.html">
                                        <img src="assets/images/f-logo.png" alt="">
                                    </a>
                                </div>
                                <h4 class="text-center m-t-15">Log into Your Account</h4>
                                <form action="index.php" method="post" class="m-t-30 m-b-30">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" name="email" class="form-control" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="password" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <div class="form-check p-l-0">
                                                <input class="form-check-input" type="checkbox" id="basic_checkbox_1">
                                                <label class="form-check-label" for="basic_checkbox_1">Check me out</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6 text-right"><a href="#">Forgot Password?</a>
                                        </div>
                                    </div>
                                    <div class="text-center m-b-15 m-t-15">
                                        <button type="submit" name="submit" value="sign-in" class="btn btn-primary">Sign in</button>
                                    </div>
                                </form>
                                <div class="text-center">
                                    <p class="m-t-30">Dont have an account? <a href="#">Register Now</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    <!-- Common JS -->
    <script src="assets/plugins/common/common.min.js"></script>
    <!-- Custom script -->
    <script src="main/js/custom.min.js"></script>
</body>

</html>