<?php

use Slim\Http\Request;
use Slim\Http\Response;
use Psr\Log\LoggerInterface;
use Slim\Container;
use Illuminate\Database\Connection;

$app->get('/', function (Request $request, Response $response) {
    $response->getBody()->write("It works! This is the default welcome page.");

    return $response;
})->setName('root');

$app->get('/hello/{name}', function (Request $request, Response $response) {
    $name = $request->getAttribute('name');
    $response->getBody()->write("Hello, $name");

    return $response;
});

$app->get('/time', function (Request $request, Response $response) {
    $viewData = [
        'now' => date('Y-m-d H:i:s')
    ];

    return $this->get('view')->render($response, 'time.twig', $viewData);
});

// Logger
$app->get('/logger-test', function (Request $request, Response $response) {
    /** @var Container $this */
    /** @var LoggerInterface $logger */

    $logger = $this->get('logger');
    $logger->error('My error message!');

    $response->getBody()->write("Success");

    return $response;
});

// Databases
$app->get('/databases', function (Request $request, Response $response) {
    /** @var Container $this */
    /** @var Connection $db */
    
    $db = $this->get('db');

    // fetch all rows as collection
    $rows = $db->table('information_schema.schemata')->get();

    // return a json response
    return $response->withJson($rows);
});

// Get User
$app->get('/user', function (Request $request, Response $response) {

    // Get database
    $db = $this->get('db');

    $user = $this->db->table('user')
                ->join('socialmedia', 'user.id', '=', 'socialmedia.id_user')
                ->select('user.*', 'socialmedia.facebook','socialmedia.instagram', 'socialmedia.twitter', 'socialmedia.dribbble')
                ->get();

    // Return a json response
    return $response->withJson($user);
});

// Update user
$app->put('/user/update/{id}', function (Request $request, Response $response) {
    
    // Get user id
    $id = $request->getAttribute('id');

    // Get parameters data
    $data = $request->getParsedBody();

    //  Update user
    $user_update = $this->db->table('user')
                    ->where('id', $id)
                    ->update([
                        'username' => $data['username'], // bind parameters
                        'user_password' => $data['user_password'],
                        'firstname' => $data['firstname'],
                        'email' => $data['email'],
                        'phone' => $data['phone'],
                        'profile_title' => $data['profile_title'],
                        'profile_photo' => $data['profile_photo'],
                        'profile_summary' => $data['profile_summary'],
                        'website_url' => $data['website_url'],
                        'website_logo' => $data['website_logo']  
                    ]);

    // Updated user
    echo 'User updated';
});

// get user portfolio
$app->get('/portfolio', function(Request $request, Response $response){

    // Get database
    $db = $this->get('db');

    $user = $this->db->table('user')
    ->join('portfolioimage', 'user.id', '=', 'portfolioimage.id_user')
    ->select('user.id', 'portfolioimage.*')
    ->get();

    // Return a json response
    return $response->withJson($user);
});

// get one single portfolio item

// Update single portfolio item

// Delete portfolio item