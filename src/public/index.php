<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/styles.css" />
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
    <script src="assets/js/main.js"></script>
</head>

<body>
    <?php
    $db_host = getenv("DB_HOST");
    $db_name = getenv("DB_NAME");
    $db_user = getenv("DB_USER");
    $db_pass = getenv("DB_PASSWORD");
    
    

        $dbConnection = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);

    

    $query= "SELECT * FROM users";
    $statement= $dbConnection->query($query);
    $rows= $statement->fetchAll(PDO::FETCH_ASSOC);

    /* print_r($rows); */

    $username = "jdoe";

    /* $query = "SELECT * FROM users WHERE email LIKE :username";

    $statement = $dbConnection->prepare($query);
    $statement->bindParam(':username', $username);

    $statement->execute();
   

    $result= $statement->fetchAll(PDO::FETCH_ASSOC);
    print_r($result); */

/*     $statement = $dbConnection->prepare("SELECT * FROM users WHERE username = ? and email = ?");
    $statement->execute([$username, "jdoe@example.com"]);
    $result= $statement->fetchAll(PDO::FETCH_ASSOC);
    print_r($result); */
    /* print_r($rows); */
    //phpinfo(); 

    // echo get_include_path(); 

    // echo "<h1>Hello, we are starting to work with Databases and PHP PDO!</h1>";

    // include_once dirname(__DIR__) . '/utils/db.php';


    echo
    "<table>
        <tbody>";

        foreach ($rows as $user){
            echo "<tr>";
                echo "<td>" . $user['id'] . "<tr>";
                echo "<td>" . $user['username'] . "<tr>";
                echo "<td>" . $user['email'] . "<tr>";
            echo "<tr>";
        }
    echo "</tbody>
    </table>";






    ?>

</body>

</html>
