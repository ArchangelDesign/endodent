<?php

if (isset($_POST['imie']) 
        && isset($_POST['email']) 
        && isset($_POST['wiadomosc'])) {
    $imie = filter_input(INPUT_POST, 'imie');
    $email = $_POST['email'];
    $wiadomosc = filter_input(INPUT_POST, 'wiadomosc');
    echo $email . $imie . $wiadomosc;
}
