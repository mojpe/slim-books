<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title><?php echo $this->data['page_title']; ?></title>
</head>
<body>

<?php
// loop through the data from the database that we passed to this template
foreach ($this->data['data'] as $book) {
	echo $book['id'].' - '.$book['book_title'].' - '.$book['author'].' - '.$book['amazon_url'].'</br />';
}
?>

</body>
</html>