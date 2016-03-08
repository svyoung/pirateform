<?php
include("db.php");

if(isset($_POST['submit'])) {

	$query = connect()->prepare("INSERT INTO form (name, email, subject, message, date) VALUES (:name, :email, :subject, :message, :date)");
    $query->execute(array(
        ':name' => $_POST['name'],
        ':email' => $_POST['email'],
        ':subject' => $_POST['subject'],
        ':message' => $_POST['message'],
        ':date' => date('Y-m-d H:i:s')
    ));
}

?>

<!doctype html>
<html>
<head>
<title>Form - Thank You</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
<script src="script.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div id="thank-you">
	<h1>Thank you for your submission!</h1>
	<h2>The following message will be sent to us and we will get back to you as quickly as possible!</h2>
	<p class="message_submit"><?php echo $_POST['message']; ?></p>
	<h3 class="return"><a href="index.php">Return to homepage</a></h3>
</div>

</body>
</html>