<?php

try {
    $dbh = new PDO('mysql:dbname=mysql;host=mysql', 'root', 'root');
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}

foreach ($dbh->query('SELECT * FROM user') as $row) {
    echo 'Hi, I\'m default user ' . $row['User'] . '@' . $row['Host'] . "<br>\n";
}

