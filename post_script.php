<?php
header(‘Content-Type: application/json’);
if(!empty($_POST))
{
    /* initialize variabls and set to post fields */
    $firstName = isset($_POST[‘first_name’]) ? $_POST[‘first_name’] : ‘’;
    $lastName = isset($_POST[‘last_name’]) ? $_POST[‘last_name’] : ‘’;
    $email = isset($_POST[‘email’]) ? $_POST[‘email’] : ‘’;
    $phone = isset($_POST[‘phone’]) ? $_POST[‘phone’] : ‘’;
    $postalCode = isset($_POST[‘postal_code’]) ? $_POST[‘postal_code’] : ‘’;

    /* validate fields */
    $errors = array();
    if(!validateName($firstName)) $errors[‘first_name’] = “Only include letters!”;
    if(!validateName($lastName)) $errors[‘last_name’] = “Only include letters!”;
    if(!validatePhone($phone)) $errors[‘phone’] = “Must be valid phone number!”;
    if(!validatePostal($postalCode)) $errors[‘postal_code’] = “Must be valid Postal Code!”;
    if(!validateEmail($email)) $errors[‘email’] = “must be valid Email Address!”;
    /* set up json response */
    $json = array();
    if(count($errors))
    {
        $json[‘status’] = “fail”;
        $json[‘errors’] = $errors;
    } else {
        /* put your function to output to txt file here */
    }   $json[‘status’] = “success”;
    echo json_encode($json);
}
function validateName($name)
{
    if(trim($name) == ‘’) return false;
    else
    {
        return preg_match(‘/^[a-zA-Z]+$/’, $name);
    }
}
function validatePhone($phone)
{
    if(trim($phone) == ‘’) return false;
    else
    {
        return preg_match(‘/^(1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?[2-9]\d{2}-?\d{4}$/’, $phone);
    }
}
function validateEmail($email)
{
    if(trim($email) == ‘’) return false;
    else
    {
        return filter_var($email, FILTER_VALIDATE_EMAIL);
    }
}
function validatePostal($postalCode)
{
    if(trim($postalCode) == ‘’) return false;
    else
    {
        return preg_match(‘/^[a-zA-Z][0-9][a-zA-Z](-| |)[0-9][a-zA-Z][0-9]$/’, $postalCode);
    }
}
