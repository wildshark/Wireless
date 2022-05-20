<?php
$_dbconn = array(
    "host"=>"localhost",
    "usr"=>"root",
    "pwd"=>"",
    "dbn"=>"wireless"
);

$_CAPTION = array(
    "appname"=>"Wireless Generator",
    "title"=>"Defualt",
);

$_TEMPLATE = array(
    "login"=>"template/login.php",
    "main"=>"template/dashboard.php",
    "table"=>"template/table.php",
    "student-form"=>"template/add.student.php",
    "bill-form"=>"template/bill.php",
    "payment-form"=>"template/payment.php"
);

$_REGLION=[
    "Baha'i", "Buddhism", "Christianity", "Confucianism", "Hinduism", "Islam", "Jainism", "Judaism", "Shinto","Sikhism","Taoism","Zoroastrianism"
];

function menu(){

    return"
    <li class='nav-label'>Main</li>
        <li><a href='?route=dashboard'><i class=' mdi mdi-view-dashboard'></i> <span class='nav-text'>Dashboard</span></a></li>
        <li class='nav-label'>Components</li>
        <li><a class='has-arrow' href='#' aria-expanded='false'><i class='mdi mdi-email'></i> <span class='nav-text'>Student</span></a>
            <ul aria-expanded='false'>
                <li><a href='?route=student&ui=new'>New Student</a>
                </li>
                <li><a href='?route=student&ui=list'>Profile</a>
            </ul>
        </li>
        <li><a href='?route=transaction&ui=bill'><i class='mdi mdi-calendar-check'></i> <span class='nav-text'>New Bill</span></a></li>
        <li><a href='?route=transaction&ui=payment'><i class='mdi mdi-widgets'></i> <span class='nav-text'>New Payment</span></a></li>
        <li><a class='has-arrow' href='#' aria-expanded='false'><i class='mdi mdi-email'></i> <span class='nav-text'>Fees</span></a>
            <ul aria-expanded='false'>
                <li><a href='?route=fees&ui=bill'>Billing</a>
                </li>
                <li><a href='?route=fees&ui=payment'>Payment</a>
                </li>
                <li><a href='?route=fees&ui=statement'>Statement</a>
                </li>
            </ul>
        </li>
        <li><a class='has-arrow' href='#' aria-expanded='false'><i class='mdi mdi-email'></i> <span class='nav-text'>Token</span></a>
            <ul aria-expanded='false'>
                <li><a href='email-inbox.html'>Generate</a>
                </li>
                <li><a href='email-read.html'>Pending Token</a>
                </li>
                <li><a href='email-compose.html'>Used Token</a>
                </li>
            </ul>
        </li>
        <li><a href='calender-event.html'><i class='mdi mdi-calendar-check'></i> <span class='nav-text'>Calendar</span></a></li>
        <li><a href='widget-basic-card.html'><i class='mdi mdi-widgets'></i> <span class='nav-text'>Widget</span></a>
        </li>
    ";
}

function bootstrap_modal(){

    return"
    <div class='col-lg-12'>
        <div class='card'>
            <div class='card-body'>
                <h4 class='card-title'>Vertically centered</h4>
                <div class='bootstrap-modal'>
                    <div class='modal fade' id='exampleModalCenter'>
                        <div class='modal-dialog modal-dialog-centered' role='document'>
                            <div class='modal-content'>
                                <div class='modal-header'>
                                    <h5 class='modal-title'>Modal title</h5>
                                    <button type='button' class='close' data-dismiss='modal'><span>&times;</span>
                                    </button>
                                </div>
                                <div class='modal-body'>
                                    <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                </div>
                                <div class='modal-footer'>
                                    <button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>
                                    <button type='button' class='btn btn-primary'>Save changes</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>";
}


?>