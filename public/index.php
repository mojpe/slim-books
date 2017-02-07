<?php
//Slim framework slim-mySQL example
require '../Slim/Slim.php';
\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

// set up a route to handle requests to the root of the application
$app->get('/', function () use ($app) {
	// include out mysql connection code and make the connection
	require_once '../lib/mysql.php';
	$db = connect_db();

	// query the database
	$rs = $db->query( 'SELECT id, book_title, author, amazon_url FROM books;' );

	// convert the record set into an associative array so we can work with it easily
	$data = $rs->fetch_all(MYSQLI_ASSOC);

	// render a the books.php template, including a page title variable and the data from the database
	$app->render('/books.php', array(
			'page_title' => "Your Book List",
			'data' => $data
		)
	);
});

// run the application
$app->run();