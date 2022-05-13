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
    "student-form"=>"template/add.student.php"
);

$_REGLION=[];



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
        <li><a href='?route=student'><i class='mdi mdi-calendar-check'></i> <span class='nav-text'>Student</span></a></li>
        <li><a href='calender-event.html'><i class='mdi mdi-calendar-check'></i> <span class='nav-text'>New Bill</span></a></li>
        <li><a href='widget-basic-card.html'><i class='mdi mdi-widgets'></i> <span class='nav-text'>New Payment</span></a></li>
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


?>