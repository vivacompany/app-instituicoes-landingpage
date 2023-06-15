<?php

$host = "localhost";
$user = "root";
$pass = "";
$port = 3306;
$dbname = "e_viva_landingpage";

try{
    $conn = new mysqli($host, $user, $pass, $dbname);
    print "Connexao bem sucedida!";
}catch(Exception $err){
    print "Connexao mal sucedida! $err";
}



switch($_REQUEST["acao"]){
    
    case "insertData":
        $nome_instituicao = $_POST["nome"];
        $tipo = $_POST["tipo"];
        $email = $_POST["email"];
        $telefone = $_POST["telefone"];
        $endereco = $_POST["endereco"];
        $privacidade = $_POST["privacidade"];

        $sql = "INSERT INTO instituicao(nome_instituicao, tipo, email, telefone, endereco, privacidade) VALUES('$nome_instituicao', '$tipo', '$email', '$telefone', '$endereco', '$privacidade')";        
        $result = $conn->query($sql);

        if($result = true) {
            print "<script>location.href='./obrigado.html';</script>";
        }

        break;

}


?>
