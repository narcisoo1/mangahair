<?php
include 'conexao.php';
$nome = $_POST['nome'];
$sobrenome = $_POST['sobrenome'];
$email = $_POST['email'];
$senha = $_POST['senha'];

$sql = "INSERT INTO Cliente (nome,sobrenome,email,senha) VALUES ('$nome','$sobrenome','$email','$senha')";

if($conexao->query($sql)=== TRUE){
    echo "USER CADASTRADO!";
}else{
    echo "ERRO: ".$sql."<br>".$conexao->error;
}

$conexao->close();

?>