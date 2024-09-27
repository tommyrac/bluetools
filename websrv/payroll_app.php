<?php
$comm = new mysqli('127.0.0.1', 'root', 'sploitme', 'payroll');
if ($comm->connect_error) {
    die('Connection failed: ' . $comm->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['s'])) {
    $user = $_POST['user'];
    $pass = $_POST['password'];
    
    // Use prepared statements to prevent SQL Injection
    $stmt = $comm->prepare("SELECT username, first_name, last_name, salary FROM users WHERE username = ? AND password = ?");
    $stmt->bind_param("ss", $user, $pass);
    $stmt->execute();
    $result = $stmt->get_result();

    echo "<center><h2>Welcome, " . htmlspecialchars($user, ENT_QUOTES, 'UTF-8') . "</h2><br>";
    echo "<table style='border-radius: 25px; border: 2px solid black;' cellspacing='30'>";
    echo "<tr><th>Username</th><th>First Name</th><th>Last Name</th><th>Salary</th></tr>";
    
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        foreach ($row as $key => $value) {
            echo "<td>" . htmlspecialchars($value, ENT_QUOTES, 'UTF-8') . "</td>";
        }
        echo "</tr>";
    }
    
    echo "</table></center>";
    $stmt->close();
}

$comm->close();
?>