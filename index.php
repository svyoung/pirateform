<!doctype html>
<html>
<head>
<title>Form</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script src="jquery.validate.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
<script src="script.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="thank-you">

<div id="form">
	<h2>Are you the droid we are looking for?</h2>
	<form method="post" action="submit.php" class="form">
		<input type="text" name="name" placeholder="Full Name">
		<input type="text" name="email" placeholder="Email (optional)">
		<select name="subject" class="subject">
			<option value="Fruits">Fruits</option>
			<option value="Cars">Cars</option>
			<option value="Pirates">Pirates</option>
		</select>
		<textarea name="message" placeholder="Message" id="content" class="textarea"></textarea>
		<input type="submit" name="submit" value="Submit">
	</form>

</div>

</body>
</html>